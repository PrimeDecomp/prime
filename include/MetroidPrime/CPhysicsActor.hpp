#ifndef _CPHYSICSACTOR
#define _CPHYSICSACTOR

#include "types.h"

#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CAxisAngle.hpp"
#include "MetroidPrime/CPhysicsState.hpp"

#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CMatrix3f.hpp"
#include "Kyoto/Math/CNUQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "Collision/CCollidableAABox.hpp"

#include "rstl/optional_object.hpp"

struct SMoverData {
  CVector3f x0_velocity;
  CAxisAngle xc_angularVelocity;
  CVector3f x18_momentum;
  CAxisAngle x24_;
  float x30_mass;

  SMoverData(float mass, const CVector3f& velocity = CVector3f::Zero(),
             const CAxisAngle& angularVelocity = CAxisAngle::Identity(),
             const CVector3f& momentum = CVector3f::Zero(),
             const CAxisAngle& unk = CAxisAngle::Identity())
  : x0_velocity(velocity)
  , xc_angularVelocity(angularVelocity)
  , x18_momentum(momentum)
  , x24_(unk)
  , x30_mass(mass) {}
};

class CMotionState {
public:
  CMotionState(const CVector3f& translation, const CNUQuaternion& orientation,
               const CVector3f& velocity, const CAxisAngle& angularMomentum)
  : x0_translation(translation)
  , xc_orientation(orientation)
  , x1c_velocity(velocity)
  , x28_angularMomentum(angularMomentum) {}

  const CVector3f& GetTranslation() const { return x0_translation; }
  const CNUQuaternion& GetOrientation() const { return xc_orientation; }
  const CVector3f& GetVelocity() const { return x1c_velocity; }
  const CAxisAngle& GetAngularMomentum() const { return x28_angularMomentum; }

private:
  CVector3f x0_translation;
  CNUQuaternion xc_orientation;
  CVector3f x1c_velocity;
  CAxisAngle x28_angularMomentum;
};
CHECK_SIZEOF(CMotionState, 0x34)

class CCollisionInfoList;

class CPhysicsActor : public CActor {
  static const float kGravityAccel;

public:
  CPhysicsActor(TUniqueId uid, bool active, const rstl::string& name, const CEntityInfo& info,
                const CTransform4f& xf, const CModelData& mData, const CMaterialList& matList,
                const CAABox& aabb, const SMoverData& moverData, const CActorParameters& actParams,
                float stepUp, float stepDown);

  // CActor
  ~CPhysicsActor() override;
  void Render(const CStateManager&) const override;
  CVector3f GetOrbitPosition(const CStateManager& mgr) const override;
  CVector3f GetAimPosition(const CStateManager& mgr, float val) const override;

  // CPhysicsActor
  virtual const CCollisionPrimitive* GetCollisionPrimitive() const;
  virtual CTransform4f GetPrimitiveTransform() const;
  virtual void CollidedWith(const TUniqueId& id, const CCollisionInfoList& list,
                            CStateManager& mgr);
  virtual float GetStepDownHeight() const;
  virtual float GetStepUpHeight() const;
  virtual float GetWeight() const;
  float GetMass() const { return xe8_mass; }
  void SetMass(float mass);

  CAABox GetBoundingBox() const;

  void ApplyImpulseWR(const CVector3f& impulse, const CAxisAngle& angularImpulse);
  void ApplyTorqueWR(const CVector3f& torque);
  void ApplyForceWR(const CVector3f& force, const CAxisAngle& torque);

  void ApplyImpulseOR(const CVector3f& impulse, const CAxisAngle& angularImpulse);
  void ApplyForceOR(const CVector3f& impulse, const CAxisAngle& torque);

  void MoveCollisionPrimitive(const CVector3f&);
  void SetVelocityWR(const CVector3f&);
  void SetAngularVelocityWR(const CAxisAngle& angVel);
  void SetVelocityOR(const CVector3f& vel);
  CAxisAngle GetAngularVelocityOR() const;
  void SetAngularVelocityOR(const CAxisAngle& angleVel);
  void ClearForcesAndTorques();
  void ClearImpulses();
  void ComputeDerivedQuantities();
  void UseCollisionImpulses();
  bool WillMove(const CStateManager& mgr);
  void Stop();

  const CVector3f& GetConstantForceWR() const { return xfc_constantForce; }
  void SetConstantForceWR(const CVector3f& force) { xfc_constantForce = force; }
  const CAxisAngle& GetAngularMomentumWR() const { return x108_angularMomentum; }
  void SetAngularMomentumWR(const CAxisAngle& angularMomentum) {
    x108_angularMomentum = angularMomentum;
  }
  const CVector3f& GetMomentumWR() const { return x150_momentum; }
  void SetMomentumWR(const CVector3f& momentum) { x150_momentum = momentum; }
  const CVector3f& GetForceWR() const { return x15c_force; }
  void SetForceWR(const CVector3f& force) { x15c_force = force; }
  const CVector3f& GetImpulseWR() const { return x168_impulse; }
  void SetImpulseWR(const CVector3f& impulse) { x168_impulse = impulse; }
  const CAxisAngle& GetTorqueWR() const { return x174_torque; }
  void SetTorqueWR(const CAxisAngle& torque) { x174_torque = torque; }
  const CAxisAngle& GetAngularImpulseWR() const { return x180_angularImpulse; }
  void SetAngularImpulseWR(const CAxisAngle& angularImpulse) {
    x180_angularImpulse = angularImpulse;
  }

  CPhysicsState GetPhysicsState() const;
  void SetPhysicsState(const CPhysicsState& state);
  CMotionState GetMotionState() const;
  void SetMotionState(const CMotionState& state);
  CVector3f CalculateNewVelocityWR_UsingImpulses() const;
  CMotionState PredictMotion(float dt) const;
  CMotionState PredictAngularMotion(float dt) const;
  CMotionState PredictLinearMotion(float dt) const;
  CMotionState PredictMotion_Internal(float dt) const;
  void AddMotionState(const CMotionState& state);
  bool GetMovable() const { return xf8_24_movable; }
  void SetMovable(bool v) { xf8_24_movable = v; }

  void MoveToWR(const CVector3f&, float);
  void MoveToInOneFrameWR(const CVector3f&, float);
  CVector3f GetMoveToORImpulseWR(const CVector3f& impulse, float d) const;
  CVector3f GetRotateToORAngularMomentumWR(const CQuaternion& q, float d) const;
  void RotateToWR(const CQuaternion&, float);

  void MoveToOR(const CVector3f&, float);
  void RotateToOR(const CQuaternion&, float);

  CVector3f GetTotalForcesWR() const;

  static float GravityConstant() { return kGravityAccel; }

private:
  float xe8_mass;
  float xec_massRecip;
  float xf0_inertiaTensor;
  float xf4_inertiaTensorRecip;
  bool xf8_24_movable : 1;
  bool xf8_25_angularEnabled : 1;
  bool xf9_standardCollider;
  CVector3f xfc_constantForce;
  CAxisAngle x108_angularMomentum;
  CMatrix3f x114_;
  CVector3f x138_velocity;
  CAxisAngle x144_angularVelocity;
  CVector3f x150_momentum;
  CVector3f x15c_force;
  CVector3f x168_impulse;
  CAxisAngle x174_torque;
  CAxisAngle x180_angularImpulse;
  CVector3f x18c_moveImpulse;
  CAxisAngle x198_moveAngularImpulse;
  CAABox x1a4_baseBoundingBox;
  CCollidableAABox x1c0_collisionPrimitive;
  CVector3f x1e8_primitiveOffset;
  CMotionState x1f4_lastNonCollidingState;
  rstl::optional_object< CVector3f > x228_lastFloorPlaneNormal;
  float x238_maximumCollisionVelocity;
  float x23c_stepUpHeight;
  float x240_stepDownHeight;
  float x244_restitutionCoefModifier;
  float x248_collisionAccuracyModifier;
  uint x24c_numTicksStuck;
  uint x250_numTicksPartialUpdate;
  uint x254_;
};
CHECK_SIZEOF(CPhysicsActor, 0x258)

#endif // _CPHYSICSACTOR
