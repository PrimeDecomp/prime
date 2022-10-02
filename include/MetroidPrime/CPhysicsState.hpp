#ifndef __CPHYSICSSTATE_HPP__
#define __CPHYSICSSTATE_HPP__

#include "Kyoto/Math/CAxisAngle.hpp"
#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CPhysicsState {
public:
  CPhysicsState(const CVector3f& trasnlation, const CQuaternion& orientation,
                const CVector3f& constantForce, const CAxisAngle& angularMomentum,
                const CVector3f& momentum, const CVector3f& force, const CVector3f& impulse,
                const CAxisAngle& torque, const CAxisAngle& angularImpulse);

private:
  CVector3f x0_translation;
  CQuaternion xc_orientation;
  CVector3f x1c_constantForce;
  CAxisAngle x28_angularMomentum;
  CVector3f x34_momentum;
  CVector3f x40_force;
  CVector3f x4c_impulse;
  CAxisAngle x58_torque;
  CAxisAngle x64_angularImpulse;
};

#endif // __CHPYSICSSTATE_HPP__
