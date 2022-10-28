#include "MetroidPrime/BodyState/CBSTaunt.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/BodyState/CBodyController.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"

CBSTaunt::CBSTaunt() {}

void CBSTaunt::Start(CBodyController& bc, CStateManager& mgr) {
  const CBCTauntCmd* cmd = static_cast<const CBCTauntCmd*>(bc.CommandMgr().GetCmd(kBSC_Taunt));
  const CPASAnimParmData parms(pas::kAS_Taunt, CPASAnimParm::FromEnum(cmd->GetTauntType()));
  bc.PlayBestAnimation(parms, *mgr.Random());
}

pas::EAnimationState CBSTaunt::UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) {
  const pas::EAnimationState st = GetBodyStateTransition(dt, bc);
  if (st == pas::kAS_Invalid) {
    CBodyStateCmdMgr& cmdMgr = bc.CommandMgr();
    if (cmdMgr.GetTargetVector().IsNonZero()) {
      bc.FaceDirection(cmdMgr.GetTargetVector(), dt);
    }
  }
  return st;
}

void CBSTaunt::Shutdown(CBodyController&) override {}

pas::EAnimationState CBSTaunt::GetBodyStateTransition(float dt, CBodyController& bc) {
  CBodyStateCmdMgr& cmdMgr = bc.CommandMgr();

  if (cmdMgr.GetCmd(kBSC_Hurled)) {
    return pas::kAS_Hurled;
  }
  if (cmdMgr.GetCmd(kBSC_KnockDown)) {
    return pas::kAS_Fall;
  }
  if (cmdMgr.GetCmd(kBSC_LoopHitReaction)) {
    return pas::kAS_LoopReaction;
  }
  if (cmdMgr.GetCmd(kBSC_KnockBack)) {
    return pas::kAS_KnockBack;
  }
  if (cmdMgr.GetCmd(kBSC_Locomotion)) {
    return pas::kAS_Locomotion;
  }
  if (bc.IsAnimationOver()) {
    return pas::kAS_Locomotion;
  }
  return pas::kAS_Invalid;
}

CBSTaunt::~CBSTaunt() {}
