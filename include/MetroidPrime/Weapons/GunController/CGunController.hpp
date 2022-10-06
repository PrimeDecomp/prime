#ifndef _CGUNCONTROLLER_HPP
#define _CGUNCONTROLLER_HPP

#include "types.h"

class CModelData;

enum EGunState {
  kGS_Inactive,
  kGS_Default,
  kGS_FreeLook,
  kGS_ComboFire,
  kGS_Idle,
  kGS_Fidget,
  kGS_Strike,
  kGS_BigStrike
};

class CStateManager;

class CGunController {
  CModelData& x0_modelData;
  // CGSFreeLook x4_freeLook;
  // CGSComboFire x1c_comboFire;
  // CGSFidget x30_fidget;
  u8 x4_pad[0x4C];
  EGunState x50_gunState;
  int x54_curAnimId;
  bool x58_24_animDone : 1;
  bool x58_25_enteredComboFire : 1;

public:
  explicit CGunController(CModelData& modelData);
  ~CGunController();
  
  void EnterFreeLook(CStateManager&, int, int);
  void EnterComboFire(CStateManager&, int);
  void EnterFidget(CStateManager&, int, int, int);
  void EnterStruck(CStateManager&, float);
  void LoadFidgetAnimAsync(CStateManager&, int, int, int);
  bool Update(float, CStateManager&);
  void EnterIdle(CStateManager&);
  void ReturnToDefault(CStateManager&, float);
  void Reset();
  void ReturnToBasePosition(CStateManager&);
};
CHECK_SIZEOF(CGunController, 0x5C)

#endif // _CGUNCONTROLLER_HPP
