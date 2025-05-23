#include "Kyoto/Particles/CEmitterElement.hpp"
#pragma sym on
#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
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
  CVector3f origin = CVector3f::Zero();
  float radius;
  float mag;
  x4_sphereOrigin->GetValue(frame, origin);
  x8_sphereRadius->GetValue(frame, radius);

  CVector3f normVec1 = CVector3f(CRandom16::GetRandomNumber()->Range(-100, 100),
                                 CRandom16::GetRandomNumber()->Range(-100, 100),
                                 CRandom16::GetRandomNumber()->Range(-100, 100));
  normVec1 = (normVec1.CanBeNormalized() ? (0.01f * normVec1).AsNormalized() : (0.01f * normVec1));
  pPos = origin + (normVec1 * radius);

  CVector3f offset = (pPos - origin);
  CVector3f direction = offset.CanBeNormalized() ? offset.AsNormalized() : offset;
  xc_velocityMag->GetValue(frame, mag);
  pVel = mag * direction;

  return false;
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

bool CVEAngleSphere::GetValue(int frame, CVector3f& pPos, CVector3f& pVel) const {
  CVector3f origin = CVector3f::Zero();
  float radius;
  float mag;
  float xBias;
  float xRange;
  float yBias;
  float yRange;
  x4_sphereOrigin->GetValue(frame, origin);
  x8_sphereRadius->GetValue(frame, radius);

  x10_angleXBias->GetValue(frame, xBias);

  x14_angleYBias->GetValue(frame, yBias);

  x18_angleXRange->GetValue(frame, xRange);

  x1c_angleYRange->GetValue(frame, yRange);

  xBias += ((0.5f * xRange) - (CRandom16::GetRandomNumber()->Float() * xRange));
  xBias *= (M_PIF / 180.f);

  yBias += ((0.5f * yRange) - (CRandom16::GetRandomNumber()->Float() * yRange));
  yBias *= (M_PIF / 180.f);

  CVector3f vec(-CMath::FastSinR(yBias) * CMath::FastCosR(xBias), CMath::FastSinR(xBias),
                CMath::FastCosR(xBias) * CMath::FastCosR(yBias));
  pPos = origin + (radius * vec);
  CVector3f dir = (pPos - origin).AsNormalized();
  xc_velocityMag->GetValue(frame, mag);
  pVel = mag * dir;

  return false;
}
