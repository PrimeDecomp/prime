#include "MetroidPrime/BodyState/CBSGenerate.hpp"

#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CStateManager.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Animation/CPASDatabase.hpp"

CBSGenerate::CBSGenerate() {}

void CBSGenerate::Start(CBodyController& bc, CStateManager& mgr) {
  const CBCGenerateCmd* cmd =
      static_cast< const CBCGenerateCmd* >(bc.CommandMgr().GetCmd(kBSC_Generate));

  int anim;
  if (!cmd->UseSpecialAnimId()) {
    const CPASDatabase& db = bc.GetPASDatabase();
    const CPASAnimParmData parms(pas::kAS_Generate,
                                 CPASAnimParm::FromEnum(s32(cmd->GetGenerateType())));
    const rstl::pair< float, int > best = db.FindBestAnimation(parms, *mgr.Random(), -1);
    anim = best.second;
  } else {
    anim = cmd->GetSpecialAnimId();
  }

  if (cmd->HasExitTargetPos()) {
    CVector3f scale(bc.GetOwner().GetModelData()->GetScale());
    const CAnimPlaybackParms playParms(anim, nullptr, &cmd->GetExitTargetPos(),
                                       &bc.GetOwner().GetTransform(), &scale, false);
    bc.SetCurrentAnimation(playParms, false, false);
  } else {
    const CAnimPlaybackParms playParms(anim, -1, 1.f, true);
    bc.SetCurrentAnimation(playParms, false, false);
  }
}

pas::EAnimationState CBSGenerate::UpdateBody(float dt, CBodyController& bc,
                                             CStateManager& mgr) {
  const pas::EAnimationState st = GetBodyStateTransition(dt, bc);
  if (st == pas::kAS_Invalid) {
    CBodyStateCmdMgr& commandMgr = bc.CommandMgr();
    if (commandMgr.GetTargetVector().IsNonZero()) {
      bc.FaceDirection(commandMgr.GetTargetVector(), dt);
    }
  }
  return st;
}

void CBSGenerate::Shutdown(CBodyController&) {}

pas::EAnimationState CBSGenerate::GetBodyStateTransition(float dt, CBodyController& bc) {
  CBodyStateCmdMgr& cmdMgr = bc.CommandMgr();
  if (cmdMgr.GetCmd(kBSC_Hurled)) {
    return pas::kAS_Hurled;
  }
  if (cmdMgr.GetCmd(kBSC_KnockDown)) {
    return pas::kAS_Fall;
  }
  if (cmdMgr.GetCmd(kBSC_Generate)) {
    return pas::kAS_Generate;
  }
  if (bc.IsAnimationOver() || cmdMgr.GetCmd(kBSC_NextState)) {
    return pas::kAS_Locomotion;
  }
  return pas::kAS_Invalid;
}

CBSGenerate::~CBSGenerate() {}
