#pragma once

#include "types.h"

// TODO CGunMotion?
namespace SamusGun {
enum EAnimationState {
  kAS_Wander,
  kAS_Fidget,
  kAS_Struck,
  kAS_FreeLook,
  kAS_ComboFire,
  kAS_Idle,
  kAS_BasePosition,
};
enum EFidgetType {
  kFT_Invalid = -1,
  kFT_Minor,
  kFT_Major,
};
} // namespace SamusGun

class CStateManager;

class CFidget {
public:
  enum EState {
    kS_NoFidget,
    kS_MinorFidget,
    kS_MajorFidget,
    kS_HolsterBeam,
    kS_StillMinorFidget,
    kS_StillMajorFidget,
    kS_StillHolsterBeam,
    kS_Loading,
  };

private:
  EState x0_state;
  SamusGun::EFidgetType x4_type;
  int x8_delayTriggerBits;
  // 0: panel, 1: panel reset, 2: adjust nozzle, 3: panel buttons
  int xc_animSet;
  int x10_delayTimerEnableBits;
  float x14_timeSinceFire;
  float x18_timeSinceStrikeCooldown;
  float x1c_timeSinceUnmorph;
  float x20_timeSinceBobbing;
  float x24_minorDelayTimer;
  float x28_majorDelayTimer;
  float x2c_holsterTimeSinceFire;
  float x30_timeUntilHolster;
  bool x34_24_loading : 1;

public:
  CFidget();

  EState GetState() const { return x0_state; }
  SamusGun::EFidgetType GetType() const { return x4_type; }
  int GetAnimSet() const { return xc_animSet; }
  EState Update(int fireButtonStates, bool bobbing, bool inStrikeCooldown, float dt,
                CStateManager& mgr);
  void ResetMinor();
  void ResetAll();

  void DoneLoading() { x34_24_loading = false; }
};
CHECK_SIZEOF(CFidget, 0x38)
