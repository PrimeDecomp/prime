#ifndef _CGUNCONTROLLER
#define _CGUNCONTROLLER

#include "types.h"

#include "MetroidPrime/Weapons/GunController/CGSComboFire.hpp"
#include "MetroidPrime/Weapons/GunController/CGSFidget.hpp"
#include "MetroidPrime/Weapons/GunController/CGSFreeLook.hpp"

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
  CGSFreeLook x4_freeLook;
  CGSComboFire x1c_comboFire;
  CGSFidget x30_fidget;
  char x4c_pad[0x4];
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
  void EnterStruck(CStateManager&, float, bool, bool);
  void LoadFidgetAnimAsync(CStateManager&, int, int, int);
  int Update(float, CStateManager&);
  void EnterIdle(CStateManager&);
  void ReturnToDefault(CStateManager&, float, bool);
  void Reset();
  void ReturnToBasePosition(CStateManager&);
  bool IsComboOver() const { return x1c_comboFire.IsComboOver(); }
  void UnLoadFidget() { x30_fidget.UnLoadAnim(); }
  bool IsFidgetLoaded() const { return x30_fidget.IsAnimLoaded(); }

  int GetFreeLookSetId() const { return x4_freeLook.GetSetId(); }
};
CHECK_SIZEOF(CGunController, 0x5C)

#endif // _CGUNCONTROLLER
