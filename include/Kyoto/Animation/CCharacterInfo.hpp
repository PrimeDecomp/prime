#ifndef _CCHARACTERINFO
#define _CCHARACTERINFO

#include "types.h"

#include "Kyoto/Animation/CEffectComponent.hpp"

#include "Kyoto/Animation/CPASDatabase.hpp"
#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/Math/CAABox.hpp"

#include "rstl/pair.hpp"
#include "rstl/string.hpp"
#include "rstl/vector.hpp"

class CCharacterInfo {
public:
  class CParticleResData {
  private:
    rstl::vector< CAssetId > x0_part;
    rstl::vector< CAssetId > x10_swhc;
    rstl::vector< CAssetId > x20_elsc;
    rstl::vector< CAssetId > x30_elsc;
  };

  const CPASDatabase& GetPASDatabase() const { return x30_pasDatabase; }
  const rstl::vector< rstl::pair< rstl::string, CAABox > >& GetAnimBBoxList() const { return x88_aabbs; }

private:
  ushort x0_tableCount;
  rstl::string x4_name;
  CAssetId x14_cmdl;
  CAssetId x18_cksr;
  CAssetId x1c_cinf;
  rstl::vector< rstl::pair< int, rstl::pair< rstl::string, rstl::string > > > x20_animInfo;
  CPASDatabase x30_pasDatabase;
  CParticleResData x44_partRes;
  uint x84_unk;
  rstl::vector< rstl::pair< rstl::string, CAABox > > x88_aabbs;
  rstl::vector< rstl::pair< rstl::string, rstl::vector< CEffectComponent > > > x98_effects;
  uint xa8_cmdlOverlay;
  uint xac_cksrOverlay;
  rstl::vector< int > xb0_animIdxs;
};
CHECK_SIZEOF(CCharacterInfo, 0xc0)

#endif // _CCHARACTERINFO
