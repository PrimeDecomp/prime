#ifndef _CTWEAKPLAYERRES
#define _CTWEAKPLAYERRES

#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/TOneStatic.hpp"
#include "types.h"

struct CTweakPlayerRes : public ITweakObject, public TOneStatic< CTweakPlayerRes > {
public:
  CAssetId x4_saveStationIcon;
  CAssetId x8_missileStationIcon;
  CAssetId xc_elevatorIcon;
  CAssetId x10_minesBreakFirstTopIcon;
  CAssetId x14_minesBreakFirstBottomIcon;
  char cls[0xdc];

  CTweakPlayerRes(CInputStream& in);

  CAssetId GetBallTransitionBeamResId(CPlayerState::EBeamId id) const;
};
CHECK_SIZEOF(CTweakPlayerRes, 0xf4);

extern CTweakPlayerRes* gpTweakPlayerRes;

#endif // _CTWEAKPLAYERRES
