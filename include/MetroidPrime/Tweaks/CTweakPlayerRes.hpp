#ifndef _CTWEAKPLAYERRES
#define _CTWEAKPLAYERRES

#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/Tweaks/ITweakObject.hpp"

#include "Kyoto/SObjectTag.hpp"
#include "Kyoto/TOneStatic.hpp"
#include "rstl/reserved_vector.hpp"
#include "types.h"

struct CTweakPlayerRes : public ITweakObject, public TOneStatic< CTweakPlayerRes > {
public:
  CAssetId x4_saveStationIcon;
  CAssetId x8_missileStationIcon;
  CAssetId xc_elevatorIcon;
  CAssetId x10_minesBreakFirstTopIcon;
  CAssetId x14_minesBreakFirstBottomIcon;
  CAssetId x18_minesBreakSecondTopIcon;
  CAssetId x1c_minesBreakSecondBottomIcon;
  rstl::reserved_vector< CAssetId, 9 > x20_lStick;
  rstl::reserved_vector< CAssetId, 9 > x48_cStick;
  rstl::reserved_vector< CAssetId, 2 > x70_lTrigger;
  rstl::reserved_vector< CAssetId, 2 > x7c_rTrigger;
  rstl::reserved_vector< CAssetId, 2 > x88_startButton;
  rstl::reserved_vector< CAssetId, 2 > x94_aButton;
  rstl::reserved_vector< CAssetId, 2 > xa0_bButton;
  rstl::reserved_vector< CAssetId, 2 > xac_xButton;
  rstl::reserved_vector< CAssetId, 2 > xb8_yButton;
  CAssetId xc4_ballTransitionsANCS;
  CAssetId xc8_ballTransitions[5];
  CAssetId xdc_cineGun[5];
  float xf0_cinematicMoveOutofIntoPlayerDistance;

  CTweakPlayerRes(CInputStream& in);

  CAssetId GetBallTransitionBeamResId(CPlayerState::EBeamId id) const;
  CAssetId GetCinematicBeamResId(CPlayerState::EBeamId id) const;
};
CHECK_SIZEOF(CTweakPlayerRes, 0xf4);

extern CTweakPlayerRes* gpTweakPlayerRes;

#endif // _CTWEAKPLAYERRES
