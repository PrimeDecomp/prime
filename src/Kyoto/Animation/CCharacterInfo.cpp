#include "Kyoto/Animation/CCharacterInfo.hpp"

#include "Kyoto/Streams/CInputStream.hpp"
#include "rstl/set.hpp"

CCharacterInfo::CParticleResData::CParticleResData(CInputStream& in, ushort tableCount)
: x0_part(in)
, x10_swhc(in)
, x30_elsc(in) {
  if (tableCount > 5) {
    const rstl::set< CAssetId > resources(in);
    x20_elsc = rstl::vector< CAssetId >(resources.begin(), resources.end());
  }
}

CCharacterInfo::CCharacterInfo(CInputStream& in)
: x0_tableCount(in.ReadShort())
, x4_name(in)
, x14_cmdl(in.Get< CAssetId >())
, x18_cksr(in.Get< CAssetId >())
, x1c_cinf(in.Get< CAssetId >())
, x20_animInfo(in)
, x30_pasDatabase(in.Get(TGetType(x30_pasDatabase)))
, x44_partRes(in, x0_tableCount)
, x84_unk(in.Get< uint >()) {
  if (x0_tableCount > 1) {
    x88_aabbs = rstl::vector< rstl::pair< rstl::string, CAABox > >(in);
  }
  if (x0_tableCount > 2) {
    x98_effects =
        rstl::vector< rstl::pair< rstl::string, rstl::vector< CEffectComponent > > >(in);
  }
  if (x0_tableCount > 3) {
    xa8_cmdlOverlay = in.Get< CAssetId >();
    xac_cksrOverlay = in.Get< CAssetId >();
  } else {
    xa8_cmdlOverlay = 0;
    xac_cksrOverlay = 0;
  }
  if (x0_tableCount > 4) {
    xb0_animIdxs = rstl::vector< uint >(in);
  }
}

int CCharacterInfo::GetAnimationIndex(const rstl::string& name) const {
  AUTO(it, x20_animInfo.begin());
  AUTO(end, x20_animInfo.end());
  for (; it != end; ++it) {
    if (it->second.second == name) {
      return it->first;
    }
  }
  return -1;
}
