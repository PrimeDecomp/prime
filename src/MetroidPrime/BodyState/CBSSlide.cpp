#include "MetroidPrime/BodyState/CBSSlide.hpp"

#include "MetroidPrime/BodyState/CBodyController.hpp"
#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"

#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CAbsAngle.hpp"
#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Animation/CPASDatabase.hpp"

#include "math.h"

CBSSlide::CBSSlide() : x4_rotateSpeed(0.0f) {}

void CBSSlide::Start(CBodyController& bc, CStateManager& mgr) {
  const CBCSlideCmd* cmd = static_cast< const CBCSlideCmd* >(bc.CommandMgr().GetCmd(kBSC_Slide));
  const CVector3f localDir = bc.GetOwner().GetTransform().TransposeRotate(cmd->GetSlideDirection());
  const float angle = atan2(localDir.GetY(), localDir.GetX());
  
  const CPASDatabase& pasDb = bc.GetPASDatabase();
  const CPASAnimParmData parms(pas::kAS_Slide, CPASAnimParm::FromEnum(cmd->GetSlideType()),
                               CPASAnimParm::FromReal32(CMath::Rad2Deg(angle)));
  const rstl::pair<float, int> best = pasDb.FindBestAnimation(parms, *mgr.Random(), -1);
  
  const CAnimPlaybackParms playParms(best.second, -1, 1.f, true);
  bc.SetCurrentAnimation(playParms, false, false);
  const float timeRem = bc.GetAnimTimeRemaining();
  if (timeRem > FLT_EPSILON) {
    const CPASAnimState* slideState = pasDb.GetAnimState(pas::kAS_Slide);

    CPASAnimParm slideParm = slideState->GetAnimParmData(best.second, 1);
    const float animAngle = CMath::Deg2Rev(slideParm.GetReal32Value());
    const float delta1 = CAbsAngle::FromRadians(angle - animAngle).AsRadians();
    const float flippedAngle = (delta1 > M_PIF) ? delta1 - M_2PIF : delta1;
    x4_rotateSpeed = flippedAngle / timeRem;
  } else {
    x4_rotateSpeed = 0.f;
  }
}

pas::EAnimationState CBSSlide::UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) {
  const pas::EAnimationState st = GetBodyStateTransition(dt, bc);
  if (st == pas::kAS_Invalid && x4_rotateSpeed != 0.f) {
    bc.SetDeltaRotation(CQuaternion::ZRotation(CRelAngle::FromRadians(dt * x4_rotateSpeed)));
  }
  return st;
}

void CBSSlide::Shutdown(CBodyController&) override {}

pas::EAnimationState CBSSlide::GetBodyStateTransition(float dt, CBodyController& bc) {
  CBodyStateCmdMgr& mgr = bc.CommandMgr();

  if (mgr.GetCmd(kBSC_Hurled)) {
    return pas::kAS_Hurled;
  } else if (mgr.GetCmd(kBSC_KnockDown)) {
    return pas::kAS_Fall;
  } else if (mgr.GetCmd(kBSC_LoopHitReaction)) {
    return pas::kAS_LoopReaction;
  } else if (mgr.GetCmd(kBSC_KnockBack)) {
    return pas::kAS_KnockBack;
  } else if (bc.IsAnimationOver()) {
    return pas::kAS_Locomotion;
  } else {
    return pas::kAS_Invalid;
  }
}

bool CBSSlide::ApplyHeadTracking() const override { return false; }
bool CBSSlide::IsMoving() const override { return true; }

CBSSlide::~CBSSlide() {}
