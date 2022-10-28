#include "MetroidPrime/Enemies/CNewIntroBoss.hpp"

#include "MetroidPrime/CCollisionActorManager.hpp"
#include "MetroidPrime/CHealthInfo.hpp"

pas::ELocomotionType CNewIntroBoss::GetLocoForHealth(const CStateManager& mgr) const {
  const CHealthInfo* hInfo = GetHealthInfo(mgr);

  if (hInfo->GetHP() > (.66f * x640_initialHp)) {
    return pas::kLT_Relaxed;
  }

  if (hInfo->GetHP() > (.33f * x640_initialHp)) {
    return pas::kLT_Lurk;
  }

  return pas::kLT_Combat;
}

pas::EGenerateType CNewIntroBoss::GetGenerateForHealth(const CStateManager& mgr) const {
  return GetHealthInfo(mgr)->GetHP() > 0.33f * x640_initialHp ? pas::kGType_Three
                                                              : pas::kGType_Four;
}

float CNewIntroBoss::GetNextAttackTime(CStateManager& mgr) const {
  float attackTime = 2.f * mgr.Random()->Float() + 6.f;
  const CHealthInfo* hInfo = GetHealthInfo(mgr);

  if (hInfo->GetHP() > .66f * x640_initialHp) {
    return attackTime;
  }
  if (hInfo->GetHP() > .33f * x640_initialHp) {
    return attackTime - (0.4125f * attackTime);
  }

  return attackTime - (0.825f * attackTime);
}


void CNewIntroBoss::Generate(CStateManager& mgr, EStateMsg msg, float arg) {
  /*
    if (msg == kStateMsg_Activate) {
    x56c_stateProg = 0;
    x568_locomotion = GetLocoForHealth(mgr);
    SendScriptMsgs(kSS_Entered, mgr, kSM_None);
  } else if (msg == kStateMsg_Update) {
    if (x56c_stateProg == 0) {
      if (x450_bodyController->GetBodyStateInfo().GetCurrentStateId() == pas::kAS_Generate) {
        x56c_stateProg = 2;
        return;
      }

      x450_bodyController->GetCommandMgr().DeliverCmd(CBCGenerateCmd(GetGenerateForHealth(mgr)));
    } else if (x56c_stateProg == 2) {
      if (x450_bodyController->GetBodyStateInfo().GetCurrentStateId() != pas::kAS_Generate) {
        x56c_stateProg = 3;
        SendScriptMsgs(EScriptObjectState::Exited, mgr, kSM_None);
      }
    }
  }
  */
}
