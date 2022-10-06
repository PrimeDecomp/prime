#include "MetroidPrime/CPhysicsActor.hpp"

#include "Kyoto/Math/CloseEnough.hpp"

const float CPhysicsActor::skGravityConstant = 9.81f * 2.5f;

CPhysicsActor::CPhysicsActor(TUniqueId uid, bool active, const rstl::string& name,
                             const CEntityInfo& info, const CTransform4f& xf,
                             const CModelData& mData, const CMaterialList& matList,
                             const CAABox& aabb, const SMoverData& moverData,
                             const CActorParameters& actParams, f32 stepUp, f32 stepDown)
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
  x168_impulse = x168_impulse + x34_transform.Rotate(impulse);
  CAxisAngle rotatedAngle(x34_transform.Rotate(angle.GetVector()));
  x180_angularImpulse = x180_angularImpulse + rotatedAngle;
}

void CPhysicsActor::ApplyForceOR(const CVector3f& force, const CAxisAngle& torque) {
  x15c_force = x15c_force + x34_transform.Rotate(force);
  CAxisAngle rotatedTorque(x34_transform.Rotate(torque.GetVector()));
  x174_torque = x174_torque + rotatedTorque;
}

void CPhysicsActor::ComputeDerivedQuantities() {
  x138_velocity = xfc_constantForce * xec_massRecip;
  x114_ = x34_transform.BuildMatrix3f();
  x144_angularVelocity = CAxisAngle(x108_angularMomentum.GetVector() * xf4_inertiaTensorRecip);
}

CPhysicsState CPhysicsActor::GetPhysicsState() const {
  return CPhysicsState(GetTranslation(), GetRotation(), GetConstantForceWR(),
                       GetAngularMomentumWR(), GetMomentumWR(), GetForceWR(), GetImpulseWR(),
                       GetTorqueWR(), GetAngularImpulseWR());
}

void CPhysicsActor::SetPhysicsState(const CPhysicsState& state) {
  SetTranslation(state.GetTranslation());
  CQuaternion quat = state.GetOrientationWR();
  CVector3f translation = GetTranslation();
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
  float impX;
  float impY;
  float impZ;
  float masRecip;
  float moveImpX;
  float moveImpY;
  float moveImpZ;
  float velX;
  float velY;
  float velZ;

  impX = x168_impulse.GetX();
  impY = x168_impulse.GetY();
  impZ = x168_impulse.GetZ();
  moveImpX = x18c_moveImpulse.GetX();
  moveImpY = x18c_moveImpulse.GetY();
  moveImpZ = x18c_moveImpulse.GetZ();
  masRecip = xec_massRecip;
  velY = x138_velocity.GetY();
  velZ = x138_velocity.GetZ();

  return CVector3f(velX + masRecip * (impX + moveImpX), velY + masRecip * (impY + moveImpY),
                   velZ + masRecip * (impZ + moveImpZ));
}

CMotionState CPhysicsActor::PredictMotion(float dt) const {}

CMotionState CPhysicsActor::PredictAngularMotion(float dt) const {}

CMotionState CPhysicsActor::PredictLinearMotion(float dt) const {}

CMotionState CPhysicsActor::PredictMotion_Internal(float dt) const {}

void CPhysicsActor::SetMotionState(const CMotionState& state) {}

CMotionState CPhysicsActor::GetMotionState() const {
  CNUQuaternion nquat(CNUQuaternion::BuildFromQuaternion(GetRotation()));
  return CMotionState(GetTranslation(), nquat, GetConstantForceWR(), GetAngularMomentumWR());
}

void CPhysicsActor::AddMotionState(const CMotionState& state) {}

bool CPhysicsActor::WillMove(const CStateManager& mgr) {
  if (close_enough(x138_velocity, CVector3f::Zero()) &&
      close_enough(x168_impulse, CVector3f::Zero()) &&
      close_enough(x174_torque.GetVector(), CVector3f::Zero()) &&
      close_enough(x18c_moveImpulse, CVector3f::Zero()) &&
      close_enough(x144_angularVelocity.GetVector(), CVector3f::Zero()) &&
      close_enough(x180_angularImpulse.GetVector(), CVector3f::Zero()) &&
      close_enough(x198_moveAngularImpulse.GetVector(), CVector3f::Zero()) &&
      close_enough(GetTotalForcesWR(), CVector3f::Zero())) {
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
  CVector3f impulse = x34_transform.Rotate(trans);
  return  (GetMass() * impulse) * (1.f / d);
}

CAxisAngle CPhysicsActor::GetRotateToORAngularMomentumWR(const CQuaternion& q, float d) const {}
