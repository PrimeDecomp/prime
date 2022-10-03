#ifndef _CPHYSICSACTOR_HPP
#define _CPHYSICSACTOR_HPP

#include "types.h"

#include "MetroidPrime/CActor.hpp"
#include "MetroidPrime/CAxisAngle.hpp"

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
  f32 x30_mass;

  SMoverData(f32 mass, const CVector3f& velocity, const CAxisAngle& angularVelocity,
             const CVector3f& momentum, const CAxisAngle& unk)
  : x0_velocity(velocity)
  , xc_angularVelocity(angularVelocity)
  , x18_momentum(momentum)
  , x24_(unk)
  , x30_mass(mass) {}
};

class CMotionState {
public:
  // TODO

private:
  CVector3f x0_translation;
  CNUQuaternion xc_orientation;
  CVector3f x1c_velocity;
  CAxisAngle x28_angularMomentum;
};
CHECK_SIZEOF(CMotionState, 0x34)

class CCollisionInfoList;

class CPhysicsActor : public CActor {
public:
  CPhysicsActor(TUniqueId uid, bool active, const rstl::string& name, const CEntityInfo& info,
                const CTransform4f& xf, const CModelData& mData, const CMaterialList& matList,
                const CAABox& aabb, const SMoverData& moverData, const CActorParameters& actParams,
                f32 stepUp, f32 stepDown);
  ~CPhysicsActor() override;

  // CActor
  CVector3f GetOrbitPosition(const CStateManager& mgr) const override;
  CVector3f GetAimPosition(const CStateManager& mgr, f32 val) const override;

  // CPhysicsActor
  virtual const CCollisionPrimitive* GetCollisionPrimitive() const;
  virtual CTransform4f GetPrimitiveTransform() const;
  virtual void CollidedWith(TUniqueId id, const CCollisionInfoList& list, CStateManager& mgr);
  virtual f32 GetStepDownHeight() const;
  virtual f32 GetStepUpHeight() const;
  virtual f32 GetWeight() const;

  CAABox GetBoundingBox() const;
  void MoveCollisionPrimitive(const CVector3f&);
  void SetVelocityWR(const CVector3f&);
  void SetAngularVelocityWR(const CAxisAngle& angVel);
  CAxisAngle GetAngularVelocityOR() const;
  void ClearForcesAndTorques();
  void Stop();

  CMotionState GetMotionState() const;
  void SetMotionState(const CMotionState& state);

  bool GetMovable() const { return xf8_24_movable; }
  void SetMovable(bool v) { xf8_24_movable = v; }

private:
  f32 xe8_mass;
  f32 xec_massRecip;
  f32 xf0_inertiaTensor;
  f32 xf4_inertiaTensorRecip;
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
  f32 x238_maximumCollisionVelocity;
  f32 x23c_stepUpHeight;
  f32 x240_stepDownHeight;
  f32 x244_restitutionCoefModifier;
  f32 x248_collisionAccuracyModifier;
  uint x24c_numTicksStuck;
  uint x250_numTicksPartialUpdate;
};
CHECK_SIZEOF(CPhysicsActor, 0x258)

#endif
