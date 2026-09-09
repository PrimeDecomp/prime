#include "MetroidPrime/BodyState/CBodyController.hpp"

#include "MetroidPrime/BodyState/CAdditiveBodyState.hpp"
#include "MetroidPrime/BodyState/CBodyState.hpp"
#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CActorModelParticles.hpp"
#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CModelData.hpp"
#include "MetroidPrime/CPhysicsActor.hpp"
#include "MetroidPrime/TCastTo.hpp"

#include "rstl/math.hpp"

#include "Kyoto/Animation/CPASDatabase.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CUnitVector3f.hpp"
#include "Kyoto/Math/CloseEnough.hpp"

CBodyController::CBodyController(CActor& actor, float turnSpeed, EBodyType bodyType)
: x0_actor(&actor)
, x2a4_bodyStateInfo(actor, bodyType)
, x2dc_rot(CQuaternion::NoRotation())
, x2ec_locomotionType(pas::kLT_Relaxed)
, x2f0_fallState(pas::kFS_Zero)
, x2f4_bodyType(bodyType)
, x2f8_curAnim(-1)
, x2fc_turnSpeed(turnSpeed)
, x300_24_animationOver(false)
, x300_25_active(false)
, x300_26_frozen(false)
, x300_27_hasBeenFrozen(false)
, x300_28_playDeathAnims(true)
, x304_intoFreezeDur(0.f)
, x308_frozenDur(0.f)
, x30c_breakoutDur(0.f)
, x310_timeFrozen(0.f)
, x314_backedUpForce(CVector3f::Zero())
, x320_fireDur(0.f)
, x324_electrocutionDur(0.f)
, x328_timeOnFire(0.f)
, x32c_timeElectrocuting(0.f)
, x330_restrictedFlyerMoveSpeed(0.f) {
  x2a4_bodyStateInfo.SetBodyController(this);
}

void CBodyController::Activate(CStateManager& mgr) {
  x300_25_active = true;
  x2a4_bodyStateInfo.SetState(pas::EAnimationState(GetPASDatabase().GetDefaultState()));
  x2a4_bodyStateInfo.GetCurrentState()->Start(*this, mgr);
  x2a4_bodyStateInfo.GetCurrentAdditiveState()->Start(*this, mgr);
}

void CBodyController::Update(float dt, CStateManager& mgr) {
  SetPlaybackRate(1.f);

  if (!x300_25_active) {
    return;
  }
  x300_24_animationOver = !GetOwner().GetModelData()->GetAnimationData()->IsAnimTimeRemaining(
      dt, rstl::string_l("Whole Body"));
  x4_cmdMgr.BlendSteeringCmds();
  x2dc_rot = CQuaternion::NoRotation();
  UpdateBody(dt, mgr);
  if (CPhysicsActor* act = TCastToPtr< CPhysicsActor >(x0_actor))
    act->RotateInOneFrameOR(x2dc_rot, dt);
  x4_cmdMgr.Reset();
}

bool CBodyController::HasBodyState(pas::EAnimationState state) const {
  return GetOwner().GetModelData()->GetAnimationData()->GetPASDatabase().HasState((int)state);
}

pas::EFallState CBodyController::GetFallState() const { return x2f0_fallState; }

void CBodyController::SetFallState(pas::EFallState state) { x2f0_fallState = state; }

void CBodyController::UpdateBody(float dt, CStateManager& mgr) {
  UpdateFrozenInfo(dt, mgr);
  if (x320_fireDur > 0.f) {
    if (x328_timeOnFire > x320_fireDur) {
      x328_timeOnFire = 0.f;
      x320_fireDur = 0.f;
    } else {
      x328_timeOnFire += dt;
    }
  } else if (x324_electrocutionDur > 0.f) {
    if (x32c_timeElectrocuting > x324_electrocutionDur) {
      x32c_timeElectrocuting = 0.f;
      x324_electrocutionDur = 0.f;
    } else {
      x32c_timeElectrocuting += dt;
    }
  }

  if (GetPercentageFrozen() < 1.f && x300_28_playDeathAnims) {
    pas::EAnimationState nextState =
        x2a4_bodyStateInfo.GetCurrentState()->UpdateBody(dt, *this, mgr);
    if (nextState != pas::kAS_Invalid) {
      x2a4_bodyStateInfo.GetCurrentState()->Shutdown(*this);
      x2a4_bodyStateInfo.SetState(nextState);
      x2a4_bodyStateInfo.GetCurrentState()->Start(*this, mgr);
    }

    nextState = x2a4_bodyStateInfo.GetCurrentAdditiveState()->UpdateBody(dt, *this, mgr);
    if (nextState != pas::kAS_Invalid) {
      x2a4_bodyStateInfo.GetCurrentAdditiveState()->Shutdown(*this);
      x2a4_bodyStateInfo.SetAdditiveState(nextState);
      x2a4_bodyStateInfo.GetCurrentAdditiveState()->Start(*this, mgr);
    }
  }
}

void CBodyController::SetLocomotionType(pas::ELocomotionType type) { x2ec_locomotionType = type; }

void CBodyController::SetTurnSpeed(float speed) { x2fc_turnSpeed = rstl::max_val(0.f, speed); }

void CBodyController::EnableAnimation(bool enable) {
  GetOwner().ModelData()->AnimationData()->SetIsAnimating(enable);
}

void CBodyController::SetCurrentAnimation(const CAnimPlaybackParms& parms, bool loop,
                                          const bool noTrans) {
  GetOwner().ModelData()->AnimationData()->SetAnimation(parms, noTrans);
  GetOwner().ModelData()->EnableLooping(loop);
  x2f8_curAnim = parms.GetAnimationId();
}

float CBodyController::GetAnimTimeRemaining() const {
  return GetOwner().GetModelData()->GetAnimationData()->GetAnimTimeRemaining(
      rstl::string_l("Whole Body"));
}

void CBodyController::SetPlaybackRate(float rate) {
  GetOwner().ModelData()->AnimationData()->SetPlaybackRate(rate);
}

void CBodyController::MultiplyPlaybackRate(float mul) {
  GetOwner().ModelData()->AnimationData()->MultiplyPlaybackRate(mul);
}

void CBodyController::SetDeltaRotation(const CQuaternion& q) { x2dc_rot = x2dc_rot * q; }

void CBodyController::FaceDirection(const CVector3f& v0, float dt) {
  if (x300_26_frozen) {
    return;
  }

  CVector3f noZ = v0;
  noZ[kDZ] = 0.f;
  if (noZ.CanBeNormalized()) {
    if (CPhysicsActor* actor = TCastToPtr< CPhysicsActor >(x0_actor)) {
      CVector3f normalized(noZ.AsNormalized());
      const CVector3f forward = GetOwner().GetTransform().GetForward();
      const CRelAngle angle = CRelAngle::FromDegrees(dt * x2fc_turnSpeed);
      CQuaternion rot = CQuaternion::LookAt(
          CUnitVector3f(forward, CUnitVector3f::kN_No),
          CUnitVector3f(normalized[kDX], normalized[kDY], normalized[kDZ]), angle);
      const CQuaternion localRot = CQuaternion::ScalarVector(
          rot.GetScalar(), GetOwner().TransformWorldToLocalRotation(rot.GetVector()));
      actor->RotateInOneFrameOR(localRot, dt);
    }
  }
}

void CBodyController::FaceDirection3D(const CVector3f& v0, const CVector3f& v1, float dt) {
  if (x300_26_frozen) {
    return;
  }

  if (v0.CanBeNormalized() && v1.CanBeNormalized()) {
    if (CPhysicsActor* actor = TCastToPtr< CPhysicsActor >(x0_actor)) {
      const CUnitVector3f uv0(v0);
      const CUnitVector3f uv1(v1);
      const float dot = CVector3f::Dot(uv0, uv1);
      if (!close_enough(dot, 1.f)) {
        if (dot < -0.99981f) {
          const CQuaternion rot = CQuaternion::AxisAngle(
              CUnitVector3f(actor->GetTransform().GetColumn(2), CUnitVector3f::kN_No),
              CRelAngle::FromDegrees(dt * x2fc_turnSpeed));
          const CQuaternion localRot = CQuaternion::ScalarVector(
              rot.GetScalar(), GetOwner().TransformWorldToLocalRotation(rot.GetVector()));
          actor->RotateInOneFrameOR(localRot, dt);
        } else {
          const CQuaternion rot =
              CQuaternion::ClampedRotateTo(uv1, uv0, CRelAngle::FromDegrees(dt * x2fc_turnSpeed));
          const CQuaternion localRot = CQuaternion::ScalarVector(
              rot.GetScalar(), GetOwner().TransformWorldToLocalRotation(rot.GetVector()));
          actor->RotateInOneFrameOR(localRot, dt);
        }
      }
    }
  }
}

const CPASDatabase& CBodyController::GetPASDatabase() const {
  return GetOwner().GetModelData()->GetAnimationData()->GetPASDatabase();
}

void CBodyController::PlayBestAnimation(const CPASAnimParmData& parms, CRandom16& r) {
  rstl::pair< float, int > best = GetPASDatabase().FindBestAnimation(parms, r, -1);
  CAnimPlaybackParms playParms(best.second, -1, 1.f, true);
  SetCurrentAnimation(playParms, false, false);
}

void CBodyController::LoopBestAnimation(const CPASAnimParmData& parms, CRandom16& r) {
  rstl::pair< float, int > best = GetPASDatabase().FindBestAnimation(parms, r, -1);
  CAnimPlaybackParms playParms(best.second, -1, 1.f, true);
  SetCurrentAnimation(playParms, true, false);
}

void CBodyController::Freeze(float intoFreezeDur, float frozenDur, float breakoutDur) {
  x304_intoFreezeDur = intoFreezeDur;
  x308_frozenDur = frozenDur;
  x30c_breakoutDur = breakoutDur;
  x300_26_frozen = true;
  x300_27_hasBeenFrozen = true;

  CPhysicsActor* act = TCastToPtr< CPhysicsActor >(GetOwner());
  x314_backedUpForce = act->GetConstantForceWR();
  act->SetConstantForceWR(CVector3f::Zero());
  act->SetMomentumWR(CVector3f::Zero());

  x320_fireDur = 0.f;
  x328_timeOnFire = 0.f;
  x310_timeFrozen = 0.f;
}

void CBodyController::FrozenBreakout() {
  if (x300_26_frozen) {
    float timeToBreakout = x304_intoFreezeDur + x308_frozenDur;
    if (x310_timeFrozen < timeToBreakout)
      x310_timeFrozen = timeToBreakout;
  }
}

void CBodyController::UnFreeze() {
  SetPlaybackRate(1.f);
  x300_26_frozen = false;
  x304_intoFreezeDur = 0.f;
  x308_frozenDur = 0.f;
  x30c_breakoutDur = 0.f;
  x310_timeFrozen = 0.f;
  x0_actor->SetVolume(127);
  CPhysicsActor* act = TCastToPtr< CPhysicsActor >(GetOwner());
  act->SetConstantForceWR(x314_backedUpForce);
  act->SetVelocityWR(x314_backedUpForce / act->GetMass());
}

float CBodyController::GetPercentageFrozen() const {
  const float sum = x304_intoFreezeDur + x308_frozenDur + x30c_breakoutDur;
  if (x310_timeFrozen == 0.f || sum == 0.f) {
    return 0.f;
  }

  float result = 1.f;
  if (x310_timeFrozen <= x304_intoFreezeDur && x304_intoFreezeDur > 0.f) {
    return x310_timeFrozen / x304_intoFreezeDur;
  }
  if (x310_timeFrozen >= sum - x30c_breakoutDur && x30c_breakoutDur > 0.f) {
    result = 1.f - (x310_timeFrozen - (x308_frozenDur + x304_intoFreezeDur)) / x30c_breakoutDur;
  }
  return result;
}

void CBodyController::SetOnFire(float duration) {
  x320_fireDur = duration;
  x328_timeOnFire = 0.f;
  if (IsFrozen()) {
    UnFreeze();
  }
}

void CBodyController::DouseFlames() {
  if (x320_fireDur > 0.f) {
    x320_fireDur = 0.f;
    x328_timeOnFire = 0.f;
  }
}

void CBodyController::SetElectrocuting(float duration) {
  if (!IsElectrocuting()) {
    CBCAdditiveReactionCmd reaction(pas::kART_Electrocution, 1.f, true);
    CommandMgr().DeliverCmd(reaction);
  }
  x324_electrocutionDur = duration;
  x32c_timeElectrocuting = 0.f;
  if (IsFrozen())
    UnFreeze();
  else if (IsOnFire())
    DouseFlames();
}

void CBodyController::StopElectrocution() {
  x324_electrocutionDur = 0.f;
  x32c_timeElectrocuting = 0.f;
  CBodyStateCmd cmd(kBSC_StopReaction);
  x4_cmdMgr.DeliverCmd(cmd);
}

void CBodyController::UpdateFrozenInfo(float dt, CStateManager& mgr) {
  if (x300_26_frozen) {
    const float totalTime = x304_intoFreezeDur + x308_frozenDur + x30c_breakoutDur;
    if (x310_timeFrozen > totalTime &&
        x2a4_bodyStateInfo.GetCurrentAdditiveStateId() != pas::kAS_AdditiveReaction) {
      UnFreeze();
      if (x0_actor) {
        x0_actor->SendScriptMsgs(kSS_UnFrozen, mgr, kSM_None);
      }
      mgr.ActorModelParticles()->StartIce(GetOwner());
      return;
    }

    if (x310_timeFrozen <= totalTime) {
      float unfrozen = 1.f;
      if (x310_timeFrozen < totalTime - x30c_breakoutDur) {
        unfrozen = 1.f - GetPercentageFrozen();
      }
      MultiplyPlaybackRate(unfrozen);
      x310_timeFrozen += dt;
      GetOwner().SetVolume(static_cast< uchar >(127.f * unfrozen));
      if (x310_timeFrozen > totalTime && HasIceBreakoutState()) {
        CommandMgr().DeliverCmd(CBCAdditiveReactionCmd(pas::kART_IceBreakout, 1.f, false));
      }
    }
  }
}
