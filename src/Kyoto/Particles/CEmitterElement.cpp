#include "Kyoto/Particles/CEmitterElement.hpp"

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Math/CVector3f.hpp"

CEESimpleEmitter::CEESimpleEmitter(CVectorElement* pos, CVectorElement* vel)
: x4_pos(pos), x8_vel(vel) {}

CEESimpleEmitter::~CEESimpleEmitter() {
  delete x4_pos;
  delete x8_vel;
}

bool CEESimpleEmitter::GetValue(int frame, CVector3f& pPos, CVector3f& pVel) const {
  x4_pos->GetValue(frame, pPos);
  if (x8_vel != NULL) {
    x8_vel->GetValue(frame, pVel);
  } else {
    pVel = CVector3f::Zero();
  }

  return false;
}

CVESphere::CVESphere(CVectorElement* origin, CRealElement* radius, CRealElement* velocityMag)
: x4_sphereOrigin(origin), x8_sphereRadius(radius), xc_velocityMag(velocityMag) {}

CVESphere::~CVESphere() {
  delete x4_sphereOrigin;
  delete x8_sphereRadius;
  delete xc_velocityMag;
}

bool CVESphere::GetValue(int frame, CVector3f& pPos, CVector3f& pVel) const {
}

CVEAngleSphere::CVEAngleSphere(CVectorElement* origin, CRealElement* radius,
                               CRealElement* velocityMag, CRealElement* angleXBias,
                               CRealElement* angleYBias, CRealElement* angleXRange,
                               CRealElement* angleYRange)
: x4_sphereOrigin(origin)
, x8_sphereRadius(radius)
, xc_velocityMag(velocityMag)
, x10_angleXBias(angleXBias)
, x14_angleYBias(angleYBias)
, x18_angleXRange(angleXRange)
, x1c_angleYRange(angleYRange) {}

CVEAngleSphere::~CVEAngleSphere() {
  delete x4_sphereOrigin;
  delete x8_sphereRadius;
  delete xc_velocityMag;
  delete x10_angleXBias;
  delete x14_angleYBias;
  delete x18_angleXRange;
  delete x1c_angleYRange;
}

bool CVEAngleSphere::GetValue(int frame, CVector3f& pPos, CVector3f& pVel) const {}
