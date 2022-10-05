#ifndef _CARTIFACTDOLL_HPP
#define _CARTIFACTDOLL_HPP

#include "MetroidPrime/TGameTypes.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"

class CArtifactDoll {
public:
  static CAssetId GetArtifactHeadScanFromItemType(CPlayerState::EItemType);
};

#endif // _CARTIFACTDOLL_HPP
