#include "MetroidPrime/CPhysicsActor.hpp"

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
  SetTransform(quat.BuildTransform4f(GetTranslation()));
  xfc_constantForce = state.GetConstantForceWR();
  x108_angularMomentum = state.GetAngularMomentumWR();
  x150_momentum = state.GetMomentumWR();
  x15c_force = state.GetForceWR();
  x168_impulse = state.GetImpulseWR();
  x174_torque = state.GetTorque();
  x180_angularImpulse = state.GetAngularImpulseWR();
  ComputeDerivedQuantities();
}
