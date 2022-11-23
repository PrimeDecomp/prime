#include "MetroidPrime/BodyState/CBSTurn.hpp"

#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CStateManager.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Animation/CPASDatabase.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CVector3f.hpp"

inline CVector2f FlipCenterColumn(const CTransform4f& m) {
  CVector2f v = m.GetColumn(kDY).ToVec2f();
  return CVector2f(v.GetY(), -v.GetX());
}

CBSTurn::CBSTurn() : x4_rotateSpeed(0.f), x8_dest(0.0f, 0.0f), x10_turnDir(pas::kTD_Invalid) {}

void CBSTurn::Start(CBodyController& bc, CStateManager& mgr) {
  const CVector3f& lookDir = bc.GetOwner().GetTransform().GetColumn(kDY);
  const CVector2f lookDir2d(lookDir.GetX(), lookDir.GetY());

  x8_dest = bc.GetCommandMgr().GetFaceVector().ToVec2f();

  const float deltaAngle = CMath::Rad2Deg(CVector2f::GetAngleDiff(lookDir2d, x8_dest));

  const CVector2f lookDir2dInv(lookDir2d.GetY(), -lookDir2d.GetX());
  float dot = CVector2f::Dot(CVector2f(lookDir2dInv), x8_dest);
  x10_turnDir = dot > 0.f ? pas::kTD_Left : pas::kTD_Right;

  const CPASDatabase& db = bc.GetPASDatabase();

  const CPASAnimParmData parms(pas::kAS_Turn, CPASAnimParm::FromEnum(x10_turnDir),
                               CPASAnimParm::FromReal32(deltaAngle),
                               CPASAnimParm::FromEnum(bc.GetLocomotionType()));
  const rstl::pair< float, int > best = db.FindBestAnimation(parms, *mgr.Random(), -1);

  const CAnimPlaybackParms playParms(best.second, -1, 1.f, true);
  bc.SetCurrentAnimation(playParms, false, false);

  const CPASAnimParm& animAngle = db.GetAnimState(pas::kAS_Turn)->GetAnimParmData(best.second, 1);

  x4_rotateSpeed =
      CMath::Deg2Rad((x10_turnDir == pas::kTD_Left) ? animAngle.GetReal32Value() - deltaAngle
                                                    : deltaAngle - animAngle.GetReal32Value());
  const float timeRem = bc.GetAnimTimeRemaining();
  if (timeRem > 0.f) {
    x4_rotateSpeed /= timeRem;
  }
}

pas::EAnimationState CBSTurn::UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) {
  const pas::EAnimationState st = GetBodyStateTransition(dt, bc);
  if (st == pas::kAS_Invalid) {
    bc.SetDeltaRotation(CQuaternion::ZRotation(CRelAngle::FromRadians(x4_rotateSpeed * dt)));
  }
  return st;
}

void CBSTurn::Shutdown(CBodyController&) {}

bool CBSTurn::FacingDest(CBodyController& bc) const {
  const CVector2f leftDir = FlipCenterColumn(bc.GetOwner().GetTransform());

  if (x10_turnDir == pas::kTD_Left) {
    if (CVector2f::Dot(leftDir, x8_dest) < 0.f) {
      return true;
    }
  } else {
    if (CVector2f::Dot(leftDir, x8_dest) > 0.f) {
      return true;
    }
  }

  return false;
}

pas::EAnimationState CBSTurn::GetBodyStateTransition(float dt, CBodyController& bc) {
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
  if (cmdMgr.GetCmd(kBSC_Generate)) {
    return pas::kAS_Generate;
  }
  if (cmdMgr.GetCmd(kBSC_MeleeAttack)) {
    return pas::kAS_MeleeAttack;
  }
  if (cmdMgr.GetCmd(kBSC_ProjectileAttack)) {
    return pas::kAS_ProjectileAttack;
  }
  if (cmdMgr.GetCmd(kBSC_LoopAttack)) {
    return pas::kAS_LoopAttack;
  }
  if (cmdMgr.GetCmd(kBSC_LoopReaction)) {
    return pas::kAS_LoopReaction;
  }
  if (cmdMgr.GetCmd(kBSC_Jump)) {
    return pas::kAS_Jump;
  }
  if (cmdMgr.GetCmd(kBSC_Step)) {
    return pas::kAS_Step;
  }
  if (cmdMgr.GetCmd(kBSC_Scripted)) {
    return pas::kAS_Scripted;
  }
  if (bc.IsAnimationOver() || FacingDest(bc) || cmdMgr.GetMoveVector().IsNonZero()) {
    return pas::kAS_Locomotion;
  }
  return pas::kAS_Invalid;
}

CBSFlyerTurn::CBSFlyerTurn() {}

void CBSFlyerTurn::Start(CBodyController& bc, CStateManager& mgr) {
  const CPASDatabase& db = bc.GetPASDatabase();
  if (db.GetAnimState(pas::kAS_Turn)->HasAnims()) {
    CBSTurn::Start(bc, mgr);
  } else {
    x8_dest = bc.GetCommandMgr().GetFaceVector().ToVec2f();

    const CVector2f& lookDir2dInv = FlipCenterColumn(bc.GetOwner().GetTransform());

    float dot = CVector2f::Dot(CVector2f(lookDir2dInv), x8_dest);
    x10_turnDir = dot > 0.f ? pas::kTD_Left : pas::kTD_Right;

    const CPASAnimParmData parms(pas::kAS_Locomotion, CPASAnimParm::FromEnum(0),
                                 CPASAnimParm::FromEnum(bc.GetLocomotionType()));

    const rstl::pair< float, int > best = db.FindBestAnimation(parms, *mgr.Random(), -1);
    if (best.second != bc.GetCurrentAnimId()) {
      const CAnimPlaybackParms playParms(best.second, -1, 1.f, true);
      bc.SetCurrentAnimation(playParms, true, false);
    }
  }
}

pas::EAnimationState CBSFlyerTurn::UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) {
  if (bc.GetPASDatabase().GetAnimState(pas::kAS_Turn)->HasAnims()) {
    return CBSTurn::UpdateBody(dt, bc, mgr);
  }

  const pas::EAnimationState st = GetBodyStateTransition(dt, bc);
  if (st == pas::kAS_Invalid) {
    CBodyStateCmdMgr& cmdMgr = bc.CommandMgr();
    CVector3f faceVec = cmdMgr.GetFaceVector();
    if (faceVec.IsNonZero()) {
      x8_dest = faceVec.ToVec2f();

      const CVector2f& lookDir2dInv = FlipCenterColumn(bc.GetOwner().GetTransform());

      float dot = CVector2f::Dot(CVector2f(lookDir2dInv), x8_dest);
      x10_turnDir = dot > 0.f ? pas::kTD_Left : pas::kTD_Right;
    }
    bc.FaceDirection(CVector3f(x8_dest.GetX(), x8_dest.GetY(), 0.f), dt);
  }
  return st;
}
