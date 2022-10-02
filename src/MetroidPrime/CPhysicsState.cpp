#include "MetroidPrime/CPhysicsState.hpp"

CPhysicsState::CPhysicsState(const CVector3f& translation, const CQuaternion& orientation,
                             const CVector3f& constantForce, const CAxisAngle& angularMomentum,
                             const CVector3f& momentum, const CVector3f& force,
                             const CVector3f& impulse, const CAxisAngle& torque,
                             const CAxisAngle& angularImpulse)
: x0_translation(translation)
, xc_orientation(orientation)
, x1c_constantForce(constantForce)
, x28_angularMomentum(angularMomentum)
, x34_momentum(momentum)
, x40_force(force)
, x4c_impulse(impulse)
, x58_torque(torque)
, x64_angularImpulse(angularImpulse) {}
