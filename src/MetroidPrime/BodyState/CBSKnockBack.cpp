#include "MetroidPrime/BodyState/CBSKnockBack.hpp"

#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CStateManager.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Animation/CPASDatabase.hpp"
#include "Kyoto/Math/CAbsAngle.hpp"
#include "Kyoto/Math/CRelAngle.hpp"

#include "math.h"
#include "rstl/math.hpp"

CBSKnockBack::CBSKnockBack() : x4_curTime(0.f), x8_rotateSpeed(0.f), xc_remTime(0.f) {}

void CBSKnockBack::Start(CBodyController& bc, CStateManager& mgr) {
  const CBCKnockBackCmd* cmd = static_cast<const CBCKnockBackCmd*>(bc.CommandMgr().GetCmd(kBSC_KnockBack));

  CVector3f localDir = bc.GetOwner().GetTransform().TransposeRotate(cmd->GetHitDirection());
  CAbsAngle angle = CAbsAngle::FromRadians(atan2(localDir.GetY(), localDir.GetX()));

  const CPASDatabase& db = bc.GetPASDatabase();

  const CPASAnimParmData parms(pas::kAS_KnockBack, CPASAnimParm::FromReal32(angle.AsDegrees()),
                               CPASAnimParm::FromEnum(cmd->GetHitSeverity()));
  const rstl::pair<float, int> best = db.FindBestAnimation(parms, *mgr.Random(), -1);

  const CAnimPlaybackParms playParms(best.second, -1, 1.f, true);
  bc.SetCurrentAnimation(playParms, false, false);
  const CPASAnimState* animState = db.GetAnimState(pas::kAS_KnockBack);
  
  CPASAnimParm parm2(animState->GetAnimParmData(best.second, 2));
  if (!parm2.GetBoolValue()) {
    CPASAnimParm parm0(animState->GetAnimParmData(best.second, 0));
    float knockdownAngle = parm0.GetReal32Value();
    float delta1 = CAbsAngle::FromRadians(angle.AsRadians() - CRelAngle::FromDegrees(knockdownAngle).AsRadians()).AsRadians();
    float delta2 = CAbsAngle::FromRadians(CRelAngle::FromDegrees(knockdownAngle).AsRadians() - angle.AsRadians()).AsRadians();
    float minAngle = rstl::min_val(delta1, delta2);
    // There's missing code here. Same problem in CBSFall, see there for details
    const float flippedAngle = (delta1 > M_PIF) ? -minAngle : minAngle;
    xc_remTime = 0.15f * bc.GetAnimTimeRemaining();
    x8_rotateSpeed = (xc_remTime > FLT_EPSILON) ? flippedAngle / xc_remTime : flippedAngle;
  } else {
    xc_remTime = 0.f;
    x8_rotateSpeed = 0.f;
  }
  x4_curTime = 0.f;
}

pas::EAnimationState CBSKnockBack::UpdateBody(float dt, CBodyController& bc,
                                              CStateManager& mgr) override {
  const pas::EAnimationState st = GetBodyStateTransition(dt, bc);
  if (st == pas::kAS_Invalid) {
    x4_curTime += dt;
    if (xc_remTime > 0.f) {
      bc.SetDeltaRotation(CQuaternion::ZRotation(CRelAngle::FromRadians(x8_rotateSpeed * dt)));
      xc_remTime -= dt;
    }
  }
  return st;
}

void CBSKnockBack::Shutdown(CBodyController&) override {}

pas::EAnimationState CBSKnockBack::GetBodyStateTransition(float dt, CBodyController& bc) {
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
  if (commandMgr.GetCmd(kBSC_KnockBack) && x4_curTime > 0.2f) {
    return pas::kAS_KnockBack;
  }
  if (bc.IsAnimationOver()) {
    return pas::kAS_Locomotion;
  }
  return pas::kAS_Invalid;
}

bool CBSKnockBack::IsMoving() const override { return true; }

CBSKnockBack::~CBSKnockBack() {}
