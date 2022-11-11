#include "MetroidPrime/BodyState/CBSLoopAttack.hpp"

#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CStateManager.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Animation/CPASDatabase.hpp"

CBSLoopAttack::CBSLoopAttack()
: x4_state(pas::kLS_Invalid)
, x8_loopAttackType(pas::kLAT_Invalid)
, xc_24_waitForAnimOver(false)
, xc_25_advance(false)

{}

void CBSLoopAttack::Start(CBodyController& bc, CStateManager& mgr) {
  const CBCLoopAttackCmd* cmd =
      static_cast< const CBCLoopAttackCmd* >(bc.CommandMgr().GetCmd(kBSC_LoopAttack));

  x8_loopAttackType = cmd->GetAttackType();
  xc_24_waitForAnimOver = cmd->WaitForAnimOver() == 1;
  xc_25_advance = false;

  if (bc.GetLocomotionType() == pas::kLT_Crouch) {
    x4_state = pas::kLS_Loop;
    const CPASAnimParmData parms(pas::kAS_LoopAttack, CPASAnimParm::FromEnum(x4_state),
                                 CPASAnimParm::FromEnum(x8_loopAttackType));
    bc.LoopBestAnimation(parms, *mgr.Random());

  } else {
    x4_state = pas::kLS_Begin;
    const CPASAnimParmData parms(pas::kAS_LoopAttack, CPASAnimParm::FromEnum(x4_state),
                                 CPASAnimParm::FromEnum(x8_loopAttackType));
    const rstl::pair< float, int > best =
        bc.GetPASDatabase().FindBestAnimation(parms, *mgr.Random(), -1);
    if (best.first > FLT_EPSILON) {
      const CAnimPlaybackParms playParms(best.second, -1, 1.f, true);
      bc.SetCurrentAnimation(playParms, false, false);
    } else {
      x4_state = pas::kLS_Loop;
      const CPASAnimParmData loopParms(pas::kAS_LoopAttack, CPASAnimParm::FromEnum(x4_state),
                                       CPASAnimParm::FromEnum(x8_loopAttackType));
      bc.LoopBestAnimation(loopParms, *mgr.Random());
    }
  }
}

pas::EAnimationState CBSLoopAttack::UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) {
  pas::EAnimationState st = GetBodyStateTransition(dt, bc);

  if (st == pas::kAS_Invalid) {
    CBodyStateCmdMgr& commandMgr = bc.CommandMgr();
    CBodyStateCmd* cmd = commandMgr.GetCmd(kBSC_ExitState);
    xc_25_advance = ((GetAdvance() | cmd != nullptr) << 4) & 0x10;

    switch (x4_state) {
    case pas::kLS_Begin:
      if (xc_25_advance && (!xc_24_waitForAnimOver || bc.IsAnimationOver())) {
        x4_state = pas::kLS_Invalid;
        st = pas::kAS_Locomotion;
      } else if (bc.IsAnimationOver()) {
        const CPASAnimParmData parms(pas::kAS_LoopAttack, CPASAnimParm::FromEnum(1),
                                     CPASAnimParm::FromEnum(x8_loopAttackType));
        bc.LoopBestAnimation(parms, *mgr.Random());
        x4_state = pas::kLS_Loop;
      } else {
        if (commandMgr.GetTargetVector().IsNonZero()) {
          bc.FaceDirection(commandMgr.GetTargetVector(), dt);
        }
      }
      break;
    case pas::kLS_Loop:
      if (xc_25_advance && (!xc_24_waitForAnimOver || bc.IsAnimationOver())) {
        if (bc.GetLocomotionType() != pas::kLT_Crouch) {
          const CPASAnimParmData parms(pas::kAS_LoopAttack, CPASAnimParm::FromEnum(2),
                                       CPASAnimParm::FromEnum(x8_loopAttackType));
          bc.PlayBestAnimation(parms, *mgr.Random());
          x4_state = pas::kLS_End;
        } else {
          x4_state = pas::kLS_Invalid;
          st = pas::kAS_Locomotion;
        }
      }
      break;
    case pas::kLS_End:
      if (bc.IsAnimationOver()) {
        x4_state = pas::kLS_Invalid;
        st = pas::kAS_Locomotion;
      }
      break;
    default:
      break;
    }
  }
  return st;
}

void CBSLoopAttack::Shutdown(CBodyController&) {}

pas::EAnimationState CBSLoopAttack::GetBodyStateTransition(float dt, CBodyController& bc) {
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

  if (x4_state == pas::kLS_End) {
    if (cmdMgr.GetCmd(kBSC_MeleeAttack)) {
      return pas::kAS_MeleeAttack;
    }
    if (cmdMgr.GetCmd(kBSC_ProjectileAttack)) {
      return pas::kAS_ProjectileAttack;
    }
    if (cmdMgr.GetCmd(kBSC_LoopAttack)) {
      return pas::kAS_LoopAttack;
    }
    if (cmdMgr.GetCmd(kBSC_Step)) {
      return pas::kAS_Step;
    }
    if (cmdMgr.GetMoveVector().IsNonZero()) {
      return pas::kAS_Locomotion;
    }
    if (cmdMgr.GetFaceVector().IsNonZero()) {
      return pas::kAS_Turn;
    }
  }

  return pas::kAS_Invalid;
}
