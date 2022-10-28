#include "MetroidPrime/BodyState/CBSGroundHit.hpp"

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

CBSGroundHit::CBSGroundHit()
: x4_rotateSpeed(0.f), x8_remTime(0.f), xc_fallState(pas::kFS_Invalid) {}

void CBSGroundHit::Start(CBodyController& bc, CStateManager& mgr) {
  const CBCKnockBackCmd* cmd =
      static_cast< const CBCKnockBackCmd* >(bc.CommandMgr().GetCmd(kBSC_KnockBack));

  CVector3f localDir = bc.GetOwner().GetTransform().TransposeRotate(cmd->GetHitDirection());
  CAbsAngle angle = CAbsAngle::FromRadians(atan2(localDir.GetY(), localDir.GetX()));

  int fallState = bc.GetFallState();
  const CPASDatabase& db = bc.GetPASDatabase();

  const CPASAnimParmData parms(pas::kAS_GroundHit, CPASAnimParm::FromEnum(fallState),
                               CPASAnimParm::FromReal32(angle.AsDegrees()));
  const rstl::pair< float, int > best = db.FindBestAnimation(parms, *mgr.Random(), -1);
  const CAnimPlaybackParms playParms(best.second, -1, 1.f, true);
  bc.SetCurrentAnimation(playParms, false, false);

  const CPASAnimState* animState = db.GetAnimState(pas::kAS_GroundHit);
  CPASAnimParm parm2(animState->GetAnimParmData(best.second, 2));
  if (!parm2.GetBoolValue()) {
    CPASAnimParm parm1(animState->GetAnimParmData(best.second, 1));
    float knockdownAngle = parm1.GetReal32Value();
    float delta1 = CAbsAngle::FromRadians(angle.AsRadians() -
                                          CRelAngle::FromDegrees(knockdownAngle).AsRadians())
                       .AsRadians();
    float delta2 = CAbsAngle::FromRadians(CRelAngle::FromDegrees(knockdownAngle).AsRadians() -
                                          angle.AsRadians())
                       .AsRadians();
    float minAngle = rstl::min_val(delta1, delta2);
    // There's missing code here. Same problem in CBSFall, see there for details
    const float flippedAngle = (delta1 > M_PIF) ? -minAngle : minAngle;
    x8_remTime = 0.15f * bc.GetAnimTimeRemaining();
    x4_rotateSpeed = (x8_remTime > FLT_EPSILON) ? flippedAngle / x8_remTime : flippedAngle;
  } else {
    x8_remTime = 0.f;
    x4_rotateSpeed = 0.f;
  }
  CPASAnimParm parm3(animState->GetAnimParmData(best.second, 3));
  xc_fallState = pas::EFallState(parm3.GetEnumValue());
}

pas::EAnimationState CBSGroundHit::UpdateBody(float dt, CBodyController& bc, CStateManager& mgr) {
  const pas::EAnimationState st = GetBodyStateTransition(dt, bc);
  if (st == pas::kAS_Invalid && x8_remTime > 0.f) {
    bc.SetDeltaRotation(CQuaternion::ZRotation(CRelAngle::FromRadians(x4_rotateSpeed * dt)));
    x8_remTime -= dt;
  }
  return st;
}

void CBSGroundHit::Shutdown(CBodyController& bc) { bc.SetFallState(xc_fallState); }

pas::EAnimationState CBSGroundHit::GetBodyStateTransition(float dt, CBodyController& bc) {
  CBodyStateCmdMgr& cmdMgr = bc.CommandMgr();
  if (bc.IsAnimationOver()) {
    if (cmdMgr.GetCmd(kBSC_Die)) {
      return pas::kAS_Death;
    }
    return pas::kAS_LieOnGround;
  }
  return pas::kAS_Invalid;
}

CBSGroundHit::~CBSGroundHit() {}
