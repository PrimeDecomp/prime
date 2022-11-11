#include "MetroidPrime/BodyState/CBSCover.hpp"

#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CStateManager.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Animation/CPASDatabase.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CUnitVector3f.hpp"

bool CBSCover::CanShoot() const { return x4_state == pas::kCS_Lean; }

CBSCover::CBSCover()
: x4_state(pas::kCS_Invalid), x8_coverDirection(pas::kCD_Invalid), xc_needsExit(false) {}

void CBSCover::Start(CBodyController& bc, CStateManager& mgr) {
  const CBCCoverCmd* cmd = static_cast< const CBCCoverCmd* >(bc.CommandMgr().GetCmd(kBSC_Cover));
  x8_coverDirection = cmd->GetDirection();
  x4_state = pas::kCS_IntoCover;
  const CPASAnimParmData parms(pas::kAS_Cover, CPASAnimParm::FromEnum(x4_state),
                               CPASAnimParm::FromEnum(GetCoverDirection()));
  
  const rstl::pair< float, int > best =
      bc.GetPASDatabase().FindBestAnimation(parms, *mgr.Random(), -1);

  CVector3f scale = bc.GetOwner().GetModelData()->GetScale();
  CRelAngle lookAtMaxAngle = CRelAngle::FromRadians(M_2PIF);
  const CUnitVector3f& lookAtDest = cmd->GetAlignDirection();
  const CQuaternion orientDelta = CQuaternion::LookAt(CUnitVector3f::Forward(), lookAtDest, lookAtMaxAngle);

  const CAnimPlaybackParms playParms(best.second, &orientDelta, &cmd->GetTarget(),
                                     &bc.GetOwner().GetTransform(), &scale, false);
  bc.SetCurrentAnimation(playParms, false, false);
  xc_needsExit = false;
  if (bc.CommandMgr().GetCmd(kBSC_ExitState)) {
    xc_needsExit = true;
  }
}

pas::EAnimationState CBSCover::UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) {
  pas::EAnimationState st = GetBodyStateTransition(dt, bc);
  if (st == pas::kAS_Invalid) {
    switch (x4_state) {
    case pas::kCS_Lean:
    case pas::kCS_IntoCover:
      if (bc.IsAnimationOver()) {
        x4_state = pas::kCS_Cover;
        const CPASAnimParmData parms(pas::kAS_Cover, CPASAnimParm::FromEnum(x4_state),
                                     CPASAnimParm::FromEnum(GetCoverDirection()));
        bc.LoopBestAnimation(parms, *mgr.Random());
      }
      if (bc.CommandMgr().GetCmd(kBSC_ExitState)) {
        xc_needsExit = true;
      }
      break;
    case pas::kCS_Cover: {
      CBodyStateCmdMgr& commandMgr = bc.CommandMgr();
      if (commandMgr.GetTargetVector().IsNonZero()) {
        bc.FaceDirection(commandMgr.GetTargetVector(), dt);
      }
      if (commandMgr.GetCmd(kBSC_ExitState) || GetNeedsExit()) {
        xc_needsExit = false;
        x4_state = pas::kCS_OutOfCover;
        const CPASAnimParmData parms(pas::kAS_Cover, CPASAnimParm::FromEnum(x4_state),
                                     CPASAnimParm::FromEnum(GetCoverDirection()));
        bc.PlayBestAnimation(parms, *mgr.Random());

      } else if (commandMgr.GetCmd(kBSC_LeanFromCover)) {
        x4_state = pas::kCS_Lean;
        const CPASAnimParmData parms(pas::kAS_Cover, CPASAnimParm::FromEnum(x4_state),
                                     CPASAnimParm::FromEnum(GetCoverDirection()));
        bc.PlayBestAnimation(parms, *mgr.Random());
      }
      break;
    }
    case pas::kCS_OutOfCover:
      if (bc.IsAnimationOver()) {
        x4_state = pas::kCS_Invalid;
        st = pas::kAS_Locomotion;
      }
      break;
    default:
      break;
    }
  }
  return st;
}

void CBSCover::Shutdown(CBodyController&) {}

pas::EAnimationState CBSCover::GetBodyStateTransition(float dt, CBodyController& bc) {
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
  return pas::kAS_Invalid;
}
