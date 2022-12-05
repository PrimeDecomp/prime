#ifndef _CTWEAKPLAYERRES
#define _CTWEAKPLAYERRES

#include "Kyoto/SObjectTag.hpp"

struct CTweakPlayerRes {
public:
  CAssetId x4_saveStationIcon;
  CAssetId x8_missileStationIcon;
  CAssetId xc_elevatorIcon;
  CAssetId x10_minesBreakFirstTopIcon;
  CAssetId x14_minesBreakFirstBottomIcon;
};

extern CTweakPlayerRes* gpTweakPlayerRes;

#endif // _CTWEAKPLAYERRES
