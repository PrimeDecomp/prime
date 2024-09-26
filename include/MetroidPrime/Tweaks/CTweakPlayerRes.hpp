#ifndef _CTWEAKPLAYERRES
#define _CTWEAKPLAYERRES

#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "Kyoto/SObjectTag.hpp"

struct CTweakPlayerRes : public ITweakObject, public TOneStatic< CTweakPlayerRes > {
public:
  /*
    CAssetId x4_saveStationIcon;
    CAssetId x8_missileStationIcon;
    CAssetId xc_elevatorIcon;
    CAssetId x10_minesBreakFirstTopIcon;
    CAssetId x14_minesBreakFirstBottomIcon;
  */
  char cls[0xf0];
  CTweakPlayerRes(CInputStream& in);

  CAssetId GetBallTransitionBeamResId(CPlayerState::EBeamId id) const;
};

extern CTweakPlayerRes* gpTweakPlayerRes;

#endif // _CTWEAKPLAYERRES
