#include "MetroidPrime/CWorldSaveGameInfo.hpp"

#include "Kyoto/CFactoryFnReturn.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

inline CWorldSaveGameInfo::SLayerState::SLayerState(CInputStream& in)
: x0_area(in.ReadLong()), x4_layer(in.ReadLong()) {}

CWorldSaveGameInfo::CWorldSaveGameInfo(CInputStream& in) : x0_areaCount(0) {
  in.ReadLong();
  const uint version = in.ReadLong();
  if (version > 1) {
    x0_areaCount = in.ReadLong();
  }
  if (version > 2) {
    x4_cinematics = rstl::vector< TEditorId >(in);
  }
  if (version > 2) {
    x14_relays = rstl::vector< TEditorId >(in);
  }
  x24_layers = rstl::vector< SLayerState >(in);
  x34_doors = rstl::vector< TEditorId >(in);
  if (version > 0) {
    x44_scans = rstl::vector< ScanState >(in);
  }
}

int CWorldSaveGameInfo::GetRelayIndex(const TEditorId& id) const {
  for (int i = 0; i < x14_relays.size(); ++i) {
    if (x14_relays[i] == id) {
      return i;
    }
  }
  return -1;
}

CFactoryFnReturn FSaveWorldFactory(const SObjectTag& tag, CInputStream& in,
                                  const CVParamTransfer& params) {
  return rs_new CWorldSaveGameInfo(in);
}
