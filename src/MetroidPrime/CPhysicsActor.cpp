#include "MetroidPrime/CPhysicsActor.hpp"

#include "Kyoto/Math/CloseEnough.hpp"

#include "rstl/math.hpp"

const float CPhysicsActor::kGravityAccel = 9.81f * 2.5f;

CPhysicsActor::CPhysicsActor(TUniqueId uid, bool active, const rstl::string& name,
                             const CEntityInfo& info, const CTransform4f& xf,
                             const CModelData& mData, const CMaterialList& matList,
                             const CAABox& aabb, const SMoverData& moverData,
                             const CActorParameters& actParams, float stepUp, float stepDown)
: CActor(uid, active, name, info, xf, mData, matList, actParams, kInvalidUniqueId)
, xe8_mass(moverData.x30_mass)
, xec_massRecip(moverData.x30_mass > 0.f ? 1.f / moverData.x30_mass : 1.f)
, xf0_inertiaTensor(0.f)
, xf4_inertiaTensorRecip(0.f)
, xf8_24_movable(true)
, xf8_25_angularEnabled(false)
, xf9_standardCollider(false)
, xfc_constantForce(CVector3f(0.f, 0.f, 0.f))
, x108_angularMomentum(CAxisAngle::Identity())
, x114_(CMatrix3f::Identity())
, x138_velocity(CVector3f(0.f, 0.f, 0.f))
, x144_angularVelocity(CAxisAngle::Identity())
, x150_momentum(moverData.x18_momentum)
, x15c_force(CVector3f(0.f, 0.f, 0.f))
, x168_impulse(CVector3f(0.f, 0.f, 0.f))
, x174_torque(CAxisAngle::Identity())
, x180_angularImpulse(CAxisAngle::Identity())
, x18c_moveImpulse(CVector3f(0.f, 0.f, 0.f))
, x198_moveAngularImpulse(CAxisAngle::Identity())
, x1a4_baseBoundingBox(aabb)
, x1c0_collisionPrimitive(aabb, matList)
, x1e8_primitiveOffset(xf.GetTranslation())
, x1f4_lastNonCollidingState(xf.GetTranslation(),
                             CNUQuaternion::BuildFromMatrix3f(xf.BuildMatrix3f()),
                             CVector3f::Zero(), CAxisAngle::Identity())
, x238_maximumCollisionVelocity(1000000.0)
, x23c_stepUpHeight(stepUp)
, x240_stepDownHeight(stepDown)
, x244_restitutionCoefModifier(0.f)
, x248_collisionAccuracyModifier(1.f)
, x24c_numTicksStuck(0)
, x250_numTicksPartialUpdate(0) {
  SetMass(moverData.x30_mass);
  MoveCollisionPrimitive(CVector3f::Zero());
  SetVelocityOR(moverData.x0_velocity);
  SetAngularVelocityOR(moverData.xc_angularVelocity);
  ComputeDerivedQuantities();
}

CPhysicsActor::~CPhysicsActor() {}

void CPhysicsActor::ApplyImpulseWR(const CVector3f& impulse, const CAxisAngle& angularImpulse) {
  x168_impulse = x168_impulse + impulse;
  x180_angularImpulse = x180_angularImpulse + angularImpulse;
}

void CPhysicsActor::ApplyTorqueWR(const CVector3f& torque) {
  x174_torque = x174_torque + CAxisAngle(torque);
}

void CPhysicsActor::ApplyForceWR(const CVector3f& force, const CAxisAngle& torque) {
  x15c_force = x15c_force + force;
  x174_torque = x174_torque + torque;
}

void CPhysicsActor::ApplyImpulseOR(const CVector3f& impulse, const CAxisAngle& angle) {
  x168_impulse = x168_impulse + GetTransform().Rotate(impulse);
  CAxisAngle rotatedAngle(GetTransform().Rotate(angle.GetVector()));
  x180_angularImpulse = x180_angularImpulse + rotatedAngle;
}

void CPhysicsActor::ApplyForceOR(const CVector3f& force, const CAxisAngle& torque) {
  x15c_force = x15c_force + GetTransform().Rotate(force);
  CAxisAngle rotatedTorque(GetTransform().Rotate(torque.GetVector()));
  x174_torque = x174_torque + rotatedTorque;
}

void CPhysicsActor::ComputeDerivedQuantities() {
  x138_velocity = xfc_constantForce * xec_massRecip;
  x114_ = GetTransform().BuildMatrix3f();
  x144_angularVelocity = CAxisAngle(x108_angularMomentum.GetVector() * xf4_inertiaTensorRecip);
}

CPhysicsState CPhysicsActor::GetPhysicsState() const {
  return CPhysicsState(GetTranslation(), GetRotation(), GetConstantForceWR(),
                       GetAngularMomentumWR(), GetMomentumWR(), GetForceWR(), GetImpulseWR(),
                       GetTorqueWR(), GetAngularImpulseWR());
}

void CPhysicsActor::SetPhysicsState(const CPhysicsState& state) {
  SetTranslation(state.GetTranslation());
  const CQuaternion& quat = state.GetOrientationWR();
  const CVector3f& translation = GetTranslation();
  SetTransform(quat.BuildTransform4f(translation));
  SetConstantForceWR(state.GetConstantForceWR());
  SetAngularMomentumWR(state.GetAngularMomentumWR());
  SetMomentumWR(state.GetMomentumWR());
  SetForceWR(state.GetForceWR());
  SetImpulseWR(state.GetImpulseWR());
  SetTorqueWR(state.GetTorque());
  SetAngularImpulseWR(state.GetAngularImpulseWR());
  ComputeDerivedQuantities();
}

CVector3f CPhysicsActor::CalculateNewVelocityWR_UsingImpulses() const {
  return x138_velocity + xec_massRecip * (x168_impulse + x18c_moveImpulse);
}

CMotionState CPhysicsActor::PredictMotion(float dt) const {
  const CMotionState& msl = PredictLinearMotion(dt);
  CVector3f translation = msl.GetTranslation();
  CVector3f velocity = msl.GetVelocity();

  const CMotionState& msa = PredictAngularMotion(dt);
  CNUQuaternion orientation = msa.GetOrientation();
  CAxisAngle angularMomentum = msa.GetAngularMomentum();

  return CMotionState(translation, orientation, velocity, angularMomentum);
}

CMotionState CPhysicsActor::PredictAngularMotion(float dt) const {
  CVector3f v1 = (x180_angularImpulse.GetVector() + x198_moveAngularImpulse.GetVector()) *
                 xf4_inertiaTensorRecip;
  CVector3f v2 = x144_angularVelocity.GetVector() + v1;

  CNUQuaternion q3 = (0.5f * CNUQuaternion(0.f, v2)) *
                     CNUQuaternion::BuildFromQuaternion(CQuaternion::FromMatrix(GetTransform()));
  CAxisAngle torque = x174_torque;

  return CMotionState(CVector3f::Zero(), q3 * dt, CVector3f::Zero(),
                      (torque * dt) + x180_angularImpulse);
}

CMotionState CPhysicsActor::PredictLinearMotion(float dt) const {
  CVector3f velocity = CalculateNewVelocityWR_UsingImpulses();
  CVector3f sum = x15c_force + x150_momentum;

  return CMotionState(dt * velocity, CNUQuaternion(0.0f, CVector3f::Zero()),
                      dt * sum + x168_impulse, CAxisAngle::Identity());
}

CMotionState CPhysicsActor::PredictMotion_Internal(float dt) const {
  if (!xf8_25_angularEnabled) {

    const CMotionState& msl = PredictLinearMotion(dt);
    CVector3f translation = msl.GetTranslation();
    CVector3f velocity = msl.GetVelocity();

    const CMotionState& msa = PredictAngularMotion(dt);
    CNUQuaternion orientation = msa.GetOrientation();
    CAxisAngle angularMomentum = msa.GetAngularMomentum();

    return CMotionState(translation, orientation, velocity, angularMomentum);
  } else {
    return PredictLinearMotion(dt);
  }
}

void CPhysicsActor::SetMotionState(const CMotionState& state) {
  const CQuaternion& q = CQuaternion::FromNUQuaternion(state.GetOrientation());
  SetTransform(q.BuildTransform4f(GetTransform().GetTranslation()));
  SetTranslation(state.GetTranslation());

  xfc_constantForce = state.GetVelocity();
  x108_angularMomentum = state.GetAngularMomentum();
  ComputeDerivedQuantities();
}

CMotionState CPhysicsActor::GetMotionState() const {
  const CNUQuaternion& nquat = CNUQuaternion::BuildFromQuaternion(GetRotation());
  return CMotionState(GetTranslation(), nquat, GetConstantForceWR(), GetAngularMomentumWR());
}

void CPhysicsActor::AddMotionState(const CMotionState& state) {
  CNUQuaternion q(CNUQuaternion::BuildFromMatrix3f(GetTransform().BuildMatrix3f()));
  q += state.GetOrientation();
  const CQuaternion& quat = CQuaternion::FromNUQuaternion(q);
  
  CVector3f transPos = GetTransform().GetTranslation();
  SetTransform(quat.BuildTransform4f(transPos));
  
  transPos += state.GetTranslation();
  SetTranslation(transPos);

  xfc_constantForce += state.GetVelocity();
  x108_angularMomentum += state.GetAngularMomentum();

  ComputeDerivedQuantities();

}

bool CPhysicsActor::WillMove(const CStateManager& mgr) {
  if (close_enough(x138_velocity, CVector3f::Zero()) &&
      close_enough(x168_impulse, CVector3f::Zero()) &&
      close_enough(x174_torque.GetVector(), CVector3f::Zero()) &&
      close_enough(x18c_moveImpulse, CVector3f::Zero()) &&
      close_enough(x144_angularVelocity.GetVector(), CVector3f::Zero()) &&
      close_enough(x180_angularImpulse.GetVector(), CVector3f::Zero()) &&
      close_enough(x198_moveAngularImpulse.GetVector(), CVector3f::Zero()) &&
      close_enough(GetTotalForceWR(), CVector3f::Zero())) {
    return false;
  }

  return true;
}

void CPhysicsActor::Stop() {
  ClearForcesAndTorques();
  xfc_constantForce = CVector3f::Zero();
  x108_angularMomentum = CAxisAngle::Identity();
  ComputeDerivedQuantities();
}

void CPhysicsActor::ClearForcesAndTorques() {
  x15c_force = x168_impulse = x18c_moveImpulse = CVector3f::Zero();
  x174_torque = x180_angularImpulse = x198_moveAngularImpulse = CAxisAngle::Identity();
}

void CPhysicsActor::ClearImpulses() {
  x168_impulse = x18c_moveImpulse = CVector3f::Zero();
  x180_angularImpulse = x198_moveAngularImpulse = CAxisAngle::Identity();
}

void CPhysicsActor::UseCollisionImpulses() {
  xfc_constantForce += x168_impulse;
  x108_angularMomentum += x180_angularImpulse;
  x168_impulse = CVector3f::Zero();
  x180_angularImpulse = CAxisAngle::Identity();
  ComputeDerivedQuantities();
}

void CPhysicsActor::MoveToWR(const CVector3f& trans, float d) {
  xfc_constantForce = (trans - GetTransform().GetTranslation()) * GetMass() * (1.f / d);
  ComputeDerivedQuantities();
}

void CPhysicsActor::MoveToInOneFrameWR(const CVector3f& trans, float d) {
  x18c_moveImpulse += (trans - GetTranslation()) * GetMass() * (1.f / d);
}

CVector3f CPhysicsActor::GetMoveToORImpulseWR(const CVector3f& trans, float d) const {
  CVector3f impulse = GetTransform().Rotate(trans);
  return (GetMass() * impulse) * (1.f / d);
}

CVector3f CPhysicsActor::GetRotateToORAngularMomentumWR(const CQuaternion& q, float d) const {
  if (q.GetW() > 0.99999976f) {
    return CVector3f::Zero();
  } else {
    const CVector3f rotated = GetTransform().Rotate(q.GetImaginary());

    float ac = acos(q.GetW());
    return rotated.AsNormalized() * ((ac * 2.0f) * (1.0f / d)) * xf0_inertiaTensor;
  }
}

void CPhysicsActor::MoveToOR(const CVector3f& trans, float d) {
  xfc_constantForce = GetMoveToORImpulseWR(trans, d);
  ComputeDerivedQuantities();
}

void CPhysicsActor::RotateToOR(const CQuaternion& q, float d) {
  const CVector3f& vec = GetRotateToORAngularMomentumWR(q, d);
  x108_angularMomentum = CAxisAngle(vec);
  ComputeDerivedQuantities();
}

void CPhysicsActor::MoveInOneFrameOR(const CVector3f& trans, float d) {
  x18c_moveImpulse += GetMoveToORImpulseWR(trans, d);
}

void CPhysicsActor::RotateInOneFrameOR(const CQuaternion& q, float d) {
  const CVector3f& vec = GetRotateToORAngularMomentumWR(q, d);
  x198_moveAngularImpulse += CAxisAngle(vec);
}

void CPhysicsActor::SetVelocityOR(const CVector3f& vel) {
  SetVelocityWR(GetTransform().Rotate(vel));
}

CVector3f CPhysicsActor::GetTotalForceWR() const { return x15c_force + x150_momentum; }

void CPhysicsActor::SetVelocityWR(const CVector3f& vel) {
  x138_velocity = vel;
  xfc_constantForce = xe8_mass * x138_velocity;
}

void CPhysicsActor::SetAngularVelocityWR(const CAxisAngle& angVel) {
  x144_angularVelocity = angVel;
  x108_angularMomentum = CAxisAngle(x144_angularVelocity.GetVector() * xf0_inertiaTensor);
}

CAxisAngle CPhysicsActor::GetAngularVelocityOR() const {
  return CAxisAngle(GetTransform().TransposeRotate(x144_angularVelocity.GetVector()));
}

void CPhysicsActor::SetAngularVelocityOR(const CAxisAngle& angVel) {
  x144_angularVelocity = CAxisAngle(GetTransform().Rotate(angVel.GetVector()));
  x108_angularMomentum = CAxisAngle(x144_angularVelocity.GetVector() * xf0_inertiaTensor);
}

void CPhysicsActor::SetMass(float mass) {
  xe8_mass = mass;
  xec_massRecip = (xe8_mass > 0.0f) ? (1.0f / xe8_mass) : 1.0f;
  SetInertiaTensorScalar(0.16666667f * xe8_mass);
}

void CPhysicsActor::SetInertiaTensorScalar(float tensor) {
  xf0_inertiaTensor = (tensor > 0.0f) ? tensor : 1.0f;
  xf4_inertiaTensorRecip = 1.0f / xf0_inertiaTensor;
}

const CCollisionPrimitive* CPhysicsActor::GetCollisionPrimitive() const {
  return &x1c0_collisionPrimitive;
}

void CPhysicsActor::MoveCollisionPrimitive(const CVector3f& offset) {
  x1e8_primitiveOffset = offset;
}

CTransform4f CPhysicsActor::GetPrimitiveTransform() const {
  return CTransform4f::Translate(GetTransform().GetTranslation() + x1e8_primitiveOffset);
}

void CPhysicsActor::CollidedWith(const TUniqueId& id, const CCollisionInfoList& list,
                                 CStateManager& mgr) {}

const CAABox& CPhysicsActor::GetBaseBoundingBox() const { return x1a4_baseBoundingBox; }

CAABox CPhysicsActor::GetBoundingBox() const {
  CVector3f off = x1e8_primitiveOffset + GetTransform().GetTranslation();
  return CAABox(x1a4_baseBoundingBox.GetMinPoint() + off, x1a4_baseBoundingBox.GetMaxPoint() + off);
}

CAABox CPhysicsActor::GetMotionVolume(float dt) const {
  CAABox aabox = GetCollisionPrimitive()->CalculateAABox(GetPrimitiveTransform());
  CVector3f velocity = CalculateNewVelocityWR_UsingImpulses();

  const CVector3f dv = (dt * velocity);
  aabox.AccumulateBounds(aabox.GetMaxPoint() + dv);
  aabox.AccumulateBounds(aabox.GetMinPoint() + dv);

  float up = rstl::max_val(GetStepUpHeight(), 0.f);
  aabox.AccumulateBounds(aabox.GetMaxPoint() + CVector3f(0.5f, 0.5f, up + 1.f));

  float down = rstl::max_val(GetStepDownHeight(), 0.f);
  aabox.AccumulateBounds(aabox.GetMinPoint() - CVector3f(0.5f, 0.5f, down + 1.5f));
  return aabox;
}

void CPhysicsActor::SetBoundingBox(const CAABox& box) {
  x1a4_baseBoundingBox = box;
  MoveCollisionPrimitive(CVector3f::Zero());
}

float CPhysicsActor::GetWeight() const { return CPhysicsActor::GravityConstant() * GetMass(); }

CVector3f CPhysicsActor::GetPrimitiveOffset() const { return x1e8_primitiveOffset; }

float CPhysicsActor::GetStepDownHeight() const { return x240_stepDownHeight; }

float CPhysicsActor::GetStepUpHeight() const { return x23c_stepUpHeight; }

CVector3f CPhysicsActor::GetOrbitPosition(const CStateManager&) const {
  return GetBoundingBox().GetCenterPoint();
}

CVector3f CPhysicsActor::GetAimPosition(const CStateManager&, float dt) const {
  if (dt > 0.0f) {
    CVector3f trans = PredictMotion(dt).GetTranslation();
    return GetBoundingBox().GetCenterPoint() + trans;
  } else {
    return GetBoundingBox().GetCenterPoint();
  }
}

void CPhysicsActor::Render(const CStateManager& mgr) const { CActor::Render(mgr); }

void CPhysicsActor::SetCoefficientOfRestitutionModifier(float modifier) {
  x244_restitutionCoefModifier = modifier;
}

float CPhysicsActor::GetCoefficientOfRestitutionModifier() const {
  return x244_restitutionCoefModifier;
}

float CPhysicsActor::GetCollisionAccuracyModifier() const { return x248_collisionAccuracyModifier; }

void CPhysicsActor::SetCollisionAccuracyModifier(float modifier) {
  x248_collisionAccuracyModifier = modifier;
}

float CPhysicsActor::GetMaximumCollisionVelocity() const { return x238_maximumCollisionVelocity; }

void CPhysicsActor::SetMaximumCollisionVelocity(float velocity) {
  x238_maximumCollisionVelocity = velocity;
}
