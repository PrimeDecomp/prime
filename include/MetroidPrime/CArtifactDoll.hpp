#ifndef _CARTIFACTDOLL
#define _CARTIFACTDOLL

#include "types.h"

#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/TGameTypes.hpp"

class CArtifactDoll {
public:
  static CAssetId GetArtifactHeadScanFromItemType(CPlayerState::EItemType);
};

#endif // _CARTIFACTDOLL
