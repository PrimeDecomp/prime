#include "MetroidPrime/BodyState/CBSStep.hpp"

#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CStateManager.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"

CBSStep::CBSStep() {}

void CBSStep::Start(CBodyController& bc, CStateManager& mgr) {
  const CBCStepCmd* cmd = static_cast< const CBCStepCmd* >(bc.CommandMgr().GetCmd(kBSC_Step));
  const CPASAnimParmData parms(pas::kAS_Step, CPASAnimParm::FromEnum(cmd->GetStepDirection()),
                               CPASAnimParm::FromEnum(cmd->GetStepType()));
  bc.PlayBestAnimation(parms, *mgr.Random());
}

pas::EAnimationState CBSStep::UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) {
  const pas::EAnimationState st = GetBodyStateTransition(dt, bc);
  if (st == pas::kAS_Invalid) {
    CBodyStateCmdMgr& commandMgr = bc.CommandMgr();
    if (commandMgr.GetTargetVector().IsNonZero()) {
      bc.FaceDirection(commandMgr.GetTargetVector(), dt);
    }
  }
  return st;
}

void CBSStep::Shutdown(CBodyController&) override {}

pas::EAnimationState CBSStep::GetBodyStateTransition(float dt, CBodyController& bc) {
  CBodyStateCmdMgr& commandMgr = bc.CommandMgr();

  if (commandMgr.GetCmd(kBSC_Hurled)) {
    return pas::kAS_Hurled;
  }
  if (commandMgr.GetCmd(kBSC_KnockDown)) {
    return pas::kAS_Fall;
  }
  if (commandMgr.GetCmd(kBSC_LoopHitReaction)) {
    return pas::kAS_LoopReaction;
  }
  if (commandMgr.GetCmd(kBSC_KnockBack)) {
    return pas::kAS_KnockBack;
  }
  if (commandMgr.GetCmd(kBSC_Locomotion)) {
    return pas::kAS_Locomotion;
  }
  if (commandMgr.GetCmd(kBSC_Generate)) {
    return pas::kAS_Generate;
  }
  if (commandMgr.GetCmd(kBSC_MeleeAttack)) {
    return pas::kAS_MeleeAttack;
  }
  if (commandMgr.GetCmd(kBSC_ProjectileAttack)) {
    return pas::kAS_ProjectileAttack;
  }
  if (commandMgr.GetCmd(kBSC_LoopAttack)) {
    return pas::kAS_LoopAttack;
  }
  if (commandMgr.GetCmd(kBSC_Jump)) {
    return pas::kAS_Jump;
  }
  if (commandMgr.GetCmd(kBSC_LoopReaction)) {
    return pas::kAS_LoopReaction;
  }
  if (commandMgr.GetCmd(kBSC_Scripted)) {
    return pas::kAS_Scripted;
  }
  if (bc.IsAnimationOver() || commandMgr.GetCmd(kBSC_NextState)) {
    return pas::kAS_Locomotion;
  }
  return pas::kAS_Invalid;
}
bool CBSStep::CanShoot() const override { return true; }


bool CBSStep::IsMoving() const override { return true; }

CBSStep::~CBSStep() {}
