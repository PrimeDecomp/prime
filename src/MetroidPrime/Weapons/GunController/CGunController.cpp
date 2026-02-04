#include "MetroidPrime/Weapons/GunController/CGunController.hpp"

#include "Kyoto/Animation/CPASAnimParm.hpp"
#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Animation/CPASDatabase.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CModelData.hpp"
#include "MetroidPrime/CStateManager.hpp"

CGunController::CGunController(CModelData& modelData)
: x0_modelData(modelData)
, x50_gunState(kGS_Inactive)
, x54_curAnimId(-1)
, x58_24_animDone(true)
, x58_25_enteredComboFire(false) {}

void CGunController::EnterFreeLook(CStateManager& mgr, const int gunId, const int setId) {
  if (x50_gunState != kGS_ComboFire && !x58_25_enteredComboFire) {
    x54_curAnimId = x4_freeLook.SetAnim(*x0_modelData.AnimationData(), gunId, setId, 0, mgr, 0.f);
  } else {
    x4_freeLook.SetLoopState(x1c_comboFire.GetLoopState());
  }

  x50_gunState = kGS_FreeLook;
}

void CGunController::EnterComboFire(CStateManager& mgr, const int gunId) {
  if (x50_gunState != kGS_FreeLook) {
    x54_curAnimId = x1c_comboFire.SetAnim(*x0_modelData.AnimationData(), gunId, 0, mgr, 0.f);
  } else {
    x1c_comboFire.SetLoopState(x4_freeLook.GetLoopState());
  }

  x50_gunState = kGS_ComboFire;
  x58_25_enteredComboFire = true;
}

void CGunController::EnterFidget(CStateManager& mgr, const int type, const int gunId,
                                 const int setId) {
  x54_curAnimId = x30_fidget.SetAnim(*x0_modelData.AnimationData(), type, gunId, setId, mgr);
  x50_gunState = kGS_Fidget;
}

void CGunController::EnterStruck(CStateManager& mgr, const float angle, const bool bigStrike,
                                 const bool b2) {
  switch (x50_gunState) {
  case kGS_FreeLook:
    x4_freeLook.SetIdle(true);
    break;
  case kGS_Inactive:
  case kGS_Fidget:
    break;
  default:
    return;
  }
  const CPASAnimParmData aparam =
      CPASAnimParmData(pas::kAS_LieOnGround, CPASAnimParm::FromInt32(x4_freeLook.GetGunId()),
                       CPASAnimParm::FromReal32(angle), CPASAnimParm::FromBool(bigStrike),
                       CPASAnimParm::FromBool(b2));
  CAnimData& animData = *x0_modelData.AnimationData();
  const rstl::pair< float, int > anim =
      animData.GetPASDatabase().FindBestAnimation(aparam, *mgr.Random(), -1);
  animData.EnableLooping(false);
  animData.SetAnimation(CAnimPlaybackParms(anim.second, -1, 1.f, true), false);
  x54_curAnimId = anim.second;
  x50_gunState = bigStrike ? kGS_BigStrike : kGS_Strike;
}

void CGunController::LoadFidgetAnimAsync(CStateManager& mgr, const int type, const int gunId,
                                         const int setId) {
  x30_fidget.LoadAnimAsync(*x0_modelData.AnimationData(), type, gunId, setId, mgr);
}

int CGunController::Update(float dt, CStateManager& mgr) {
  CAnimData& animData = *x0_modelData.AnimationData();
  x58_24_animDone = false;
  switch (x50_gunState) {
  case kGS_FreeLook: {
    x58_24_animDone = x4_freeLook.Update(animData, dt, mgr);
    if (!x58_24_animDone || !x58_25_enteredComboFire) {
      break;
    }

    EnterComboFire(mgr, x4_freeLook.GetGunId());
    x58_24_animDone = false;
    break;
  }
  case kGS_ComboFire:
    x58_24_animDone = x1c_comboFire.Update(animData, dt, mgr);
    break;
  case kGS_Fidget:
    x58_24_animDone = x30_fidget.Update(animData, dt, mgr);
    break;
  case kGS_Strike: {
    if (animData.IsAnimTimeRemaining(0.001f, rstl::string_l("Whole Body"))) {
      break;
    }

    x54_curAnimId = x4_freeLook.SetAnim(*x0_modelData.AnimationData(), x4_freeLook.GetGunId(),
                                        x4_freeLook.GetSetId(), 0, mgr, 0.f);
    x50_gunState = kGS_FreeLook;
    break;
  }
  case kGS_BigStrike:
    x58_24_animDone = !animData.IsAnimTimeRemaining(0.001f, rstl::string_l("Whole Body"));
    break;
  case kGS_Inactive:
  case kGS_Default:
  case kGS_Idle:
    break;
  }

  if (x58_24_animDone) {
    x50_gunState = kGS_Inactive;
    x58_25_enteredComboFire = false;
    return true;
  }
  return false;
}

void CGunController::EnterIdle(CStateManager& mgr) {
  CPASAnimParm parm = CPASAnimParm::NoParameter();
  switch (x50_gunState) {
  case kGS_FreeLook:
    parm = CPASAnimParm::FromEnum(1);
    x4_freeLook.SetIdle(true);
    break;
  case kGS_ComboFire:
    parm = CPASAnimParm::FromEnum(1);
    x1c_comboFire.SetIdle(true);
    break;
  default:
    return;
  }

  CAnimData& animData = *x0_modelData.AnimationData();
  const rstl::pair< float, int > anim =
      animData.GetCharacterInfo().GetPASDatabase().FindBestAnimation(
          CPASAnimParmData(pas::kAS_Locomotion, parm), *mgr.Random(), -1);
  animData.EnableLooping(false);
  animData.SetAnimation(CAnimPlaybackParms(anim.second, -1, 1.f, true), false);
  x54_curAnimId = anim.second;
  x50_gunState = kGS_Idle;
  x58_25_enteredComboFire = false;
}

void CGunController::ReturnToDefault(CStateManager& mgr, const float dt, const bool setState) {
  CAnimData& animData = *x0_modelData.AnimationData();

  switch (x50_gunState) {
  case kGS_Strike:
    x50_gunState = kGS_FreeLook;
  case kGS_Idle:
    x4_freeLook.SetIdle(false);
  case kGS_FreeLook:
    if (setState) {
      break;
    }
    x54_curAnimId =
        x4_freeLook.SetAnim(animData, x4_freeLook.GetGunId(), x4_freeLook.GetSetId(), 2, mgr, dt);
    x58_25_enteredComboFire = false;
    break;
  case kGS_ComboFire:
    x54_curAnimId = x1c_comboFire.SetAnim(animData, x1c_comboFire.GetGunId(), 2, mgr, dt);
    break;
  case kGS_Fidget:
    ReturnToBasePosition(mgr);
    break;
  case kGS_BigStrike:
    x4_freeLook.SetIdle(false);
    break;
  default:
    break;
  }

  if (setState) {
    x50_gunState = kGS_Default;
  }
}

void CGunController::Reset() {
  x58_24_animDone = true;
  x58_25_enteredComboFire = false;
  x50_gunState = kGS_Inactive;
}

void CGunController::ReturnToBasePosition(CStateManager& mgr) {
  CAnimData& animData = *x0_modelData.AnimationData();
  const rstl::pair< float, int > anim =
      animData.GetCharacterInfo().GetPASDatabase().FindBestAnimation(
          CPASAnimParmData(pas::kAS_KnockBack), *mgr.Random(), -1);
  animData.EnableLooping(false);
  animData.SetAnimation(CAnimPlaybackParms(anim.second, -1, 1.f, true), false);
  x54_curAnimId = anim.second;
  x58_25_enteredComboFire = false;
}
