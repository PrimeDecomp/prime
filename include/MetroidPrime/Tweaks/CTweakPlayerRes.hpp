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
  CAssetId x18_minesBreakSecondTopIcon;
  CAssetId x1c_minesBreakSecondBottomIcon;
  CAssetId x20_unk;
  CAssetId x24_lStick[9];
  CAssetId x48_unk;
  CAssetId x4c_cStick[9];
  CAssetId x70_unk;
  CAssetId x74_lTrigger[2];
  CAssetId x7c_unk;
  CAssetId x80_rTrigger[2];
  CAssetId x88_unk;
  CAssetId x8c_startButton[2];
  CAssetId x94_unk;
  CAssetId x98_aButton[2];
  CAssetId xa0_unk;
  CAssetId xa4_bButton[2];
  CAssetId xac_unk;
  CAssetId xb0_xButton[2];
  CAssetId xb8_unk;
  CAssetId xbc_yButton[2];
  CAssetId xc4_ballTransitionsANCS;
  CAssetId xc8_ballTransitions[5];
  CAssetId xdc_cineGun[5];
  float xf0_cinematicMoveOutofIntoPlayerDistance;

  CTweakPlayerRes(CInputStream& in);

  CAssetId GetBallTransitionBeamResId(CPlayerState::EBeamId id) const;
};
CHECK_SIZEOF(CTweakPlayerRes, 0xf4);

extern CTweakPlayerRes* gpTweakPlayerRes;

#endif // _CTWEAKPLAYERRES
