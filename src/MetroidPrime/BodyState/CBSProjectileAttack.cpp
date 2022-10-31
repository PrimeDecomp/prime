#include "MetroidPrime/BodyState/CBSProjectileAttack.hpp"

#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CStateManager.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Animation/CPASDatabase.hpp"
#include "Kyoto/Math/CAbsAngle.hpp"

CBSProjectileAttack::CBSProjectileAttack() {}

void CBSProjectileAttack::Start(CBodyController& bc, CStateManager& mgr) override {
  const CBCProjectileAttackCmd* cmd =
      static_cast< const CBCProjectileAttackCmd* >(bc.CommandMgr().GetCmd(kBSC_ProjectileAttack));

  CActor& actor = bc.GetOwner();
  CVector3f diff = cmd->GetTargetPosition() - actor.GetTranslation();
  CVector3f localDelta = actor.GetTransform().TransposeRotate(diff);

  CAbsAngle angle = CAbsAngle::FromRadians(atan2(localDelta.GetY(), localDelta.GetX()));
  const float attackAngle = angle.AsDegrees();

  const CPASDatabase& db = bc.GetPASDatabase();

  const CPASAnimParmData parms(
      pas::kAS_ProjectileAttack, CPASAnimParm::FromEnum(cmd->GetAttackSeverity()),
      CPASAnimParm::FromReal32(angle.AsDegrees()), CPASAnimParm::FromEnum(bc.GetLocomotionType()));

  rstl::pair< float, int > best1 = db.FindBestAnimation(parms, *mgr.Random(), -1);
  if (cmd->BlendTwoClosest()) {
    rstl::pair< float, int > best2 = db.FindBestAnimation(parms, *mgr.Random(), best1.second);
    const CPASAnimState* projAttackState = db.GetAnimState(pas::kAS_ProjectileAttack);

    CPASAnimParm parmData1(projAttackState->GetAnimParmData(best1.second, 1));
    CPASAnimParm parmData2(projAttackState->GetAnimParmData(best2.second, 1));

    float angle1 = parmData1.GetReal32Value();
    float angle2 = parmData2.GetReal32Value();
    if (angle1 - angle2 > 180.f) {
      angle2 = angle2 + 360.f;
    } else if (angle2 - angle1 > 180.f) {
      angle1 = angle1 + 360.f;
    }
    const CAnimPlaybackParms playParms(best1.second, best2.second,
                                       (angle1 - attackAngle) / (angle1 - angle2), true);
    bc.SetCurrentAnimation(playParms, false, false);
  } else {
    const CAnimPlaybackParms playParms(best1.second, -1, 1.f, true);
    bc.SetCurrentAnimation(playParms, false, false);
  }
}

pas::EAnimationState CBSProjectileAttack::UpdateBody(float dt, CBodyController& bc,
                                                     CStateManager& mgr) override {
  const pas::EAnimationState st = GetBodyStateTransition(dt, bc);
  if (st == pas::kAS_Invalid) {
    CBodyStateCmdMgr& cmdMgr = bc.CommandMgr();
    if (cmdMgr.GetTargetVector().IsNonZero()) {
      bc.FaceDirection(cmdMgr.GetTargetVector(), dt);
    }
  }
  return st;
}

void CBSProjectileAttack::Shutdown(CBodyController&) override {}

pas::EAnimationState CBSProjectileAttack::GetBodyStateTransition(float dt, CBodyController& bc) {
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
  if (bc.IsAnimationOver() || cmdMgr.GetCmd(kBSC_NextState)) {
    return pas::kAS_Locomotion;
  }
  return pas::kAS_Invalid;
}

bool CBSProjectileAttack::CanShoot() const override { return true; }

CBSProjectileAttack::~CBSProjectileAttack() {}
