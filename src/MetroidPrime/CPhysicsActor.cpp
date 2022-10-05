#include "MetroidPrime/CPhysicsActor.hpp"

CPhysicsActor::CPhysicsActor(TUniqueId uid, bool active, const rstl::string& name,
                             const CEntityInfo& info, const CTransform4f& xf,
                             const CModelData& mData, const CMaterialList& matList,
                             const CAABox& aabb, const SMoverData& moverData,
                             const CActorParameters& actParams, f32 stepUp, f32 stepDown)
: CActor(uid, active, name, info, xf, mData, matList, actParams, kInvalidUniqueId)
, xe8_mass(moverData.x30_mass)
, xec_massRecip(moverData.x30_mass > 0.f ? 1.f / moverData.x30_mass : 1.f)
, xf8_24_movable(true)
, xf8_25_angularEnabled(false)
, xf9_standardCollider(false)
, xfc_constantForce(CVector3f::Zero())
, x108_angularMomentum(CAxisAngle::Identity())
, x114_(CMatrix3f::Identity())
, x138_velocity(CVector3f::Zero())
, x144_angularVelocity(CAxisAngle::Identity())
, x150_momentum(moverData.x18_momentum)
, x15c_force(CVector3f::Zero())
, x168_impulse(CVector3f::Zero())
, x174_torque(CAxisAngle::Identity())
, x180_angularImpulse(CAxisAngle::Identity())
, x18c_moveImpulse(CVector3f::Zero())
, x198_moveAngularImpulse(CAxisAngle::Identity())
, x1a4_baseBoundingBox(aabb)
, x1c0_collisionPrimitive(aabb, matList)
, x1e8_primitiveOffset(CVector3f::Zero())
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
  x168_impulse =  x168_impulse + impulse;
  x180_angularImpulse = x180_angularImpulse + angularImpulse;
}
