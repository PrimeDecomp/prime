#ifndef _CPHYSICSSTATE
#define _CPHYSICSSTATE

#include "MetroidPrime/CAxisAngle.hpp"

#include "Kyoto/Math/CQuaternion.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CPhysicsState {
public:
  CPhysicsState(const CVector3f& trasnlation, const CQuaternion& orientation,
                const CVector3f& constantForce, const CAxisAngle& angularMomentum,
                const CVector3f& momentum, const CVector3f& force, const CVector3f& impulse,
                const CAxisAngle& torque, const CAxisAngle& angularImpulse);

  CVector3f GetTranslation() const { return x0_translation; }
  CQuaternion GetOrientation() const { return xc_orientation; }
  CVector3f GetConstantForceWR() const { return x1c_constantForce; }
  CAxisAngle GetAngularMomentumWR() const { return x28_angularMomentum; }
  CVector3f GetMomentumWR() const { return x34_momentum; }
  CVector3f GetForceWR() const { return x40_force; }
  CVector3f GetImpulseWR() const { return x4c_impulse; }
  CAxisAngle GetTorque() const { return x58_torque; }
  CAxisAngle GetAngularImpulseWR() const { return x64_angularImpulse; }

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

#endif // _CPHYSICSSTATE
