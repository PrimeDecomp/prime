#ifndef _CFIDGET_HPP
#define _CFIDGET_HPP

enum EFidgetType { kFT_Invalid = -1, kFT_Minor, kFT_Major };

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
    kS_Loading
  };

private:
  EState x0_state;
  EFidgetType x4_type;
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
  bool x34_24_loading;

public:
  EState GetState() const { return x0_state; }
  EFidgetType GetType() const { return x4_type; }
  int GetAnimSet() const { return xc_animSet; }
  EState Update(int fireButtonStates, bool bobbing, bool inStrikeCooldown, float dt, CStateManager& mgr);
  void ResetMinor();
  void ResetAll();
  void DoneLoading() { x34_24_loading = false; }
};

#endif // _CFIDGET_HPP
