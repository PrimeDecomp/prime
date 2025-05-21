#include "Kyoto/Particles/CEmitterElement.hpp"

#include "Kyoto/CRandom16.hpp"
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
  CVector3f a = CVector3f::Zero();
  x4_sphereOrigin->GetValue(frame, a);
  float b;
  x8_sphereRadius->GetValue(frame, b);

  CVector3f normVec1(float(CRandom16::GetRandomNumber()->Range(-100, 100)),
                     float(CRandom16::GetRandomNumber()->Range(-100, 100)),
                     float(CRandom16::GetRandomNumber()->Range(-100, 100)));
  pPos =
      b * (normVec1.CanBeNormalized() ? (normVec1 * 0.01f).AsNormalized() : normVec1 * 0.01f) + a;
  CVector3f normVec2 = (pPos - a).CanBeNormalized() ? (pPos - a).AsNormalized() : (pPos - a);
  float c;
  xc_velocityMag->GetValue(frame, c);
  pVel = c * normVec2;

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
  x4_sphereOrigin->GetValue(frame, origin);
  float radius;
  x8_sphereRadius->GetValue(frame, radius);
  float xBias;
  x10_angleXBias->GetValue(frame, xBias);
  float yBias;
  x14_angleYBias->GetValue(frame, yBias);
  float xRange;
  x18_angleXRange->GetValue(frame, xRange);
  float yRange;
  x1c_angleYRange->GetValue(frame, yRange);

  CRelAngle angleA =
      CRelAngle::FromDegrees(xBias + (0.5f * xRange - xRange * CRandom16::GetRandomNumber()->Float()));
  CRelAngle angleB =
      CRelAngle::FromDegrees(yBias + (0.5f * yRange - yRange * CRandom16::GetRandomNumber()->Float()));

  CRelAngle f29 = CMath::FastCosR(angleA.AsRadians()) * CMath::FastCosR(angleB.AsRadians());
  CRelAngle f30 = CMath::FastSinR(angleA.AsRadians());
  CRelAngle f31 = CMath::FastCosR(angleA.AsRadians());
  CRelAngle f2 = -CMath::FastSinR(angleB.AsRadians());

  pPos = origin+ CVector3f(radius * f2.AsRadians() * f31.AsRadians(), radius * f30.AsRadians(), radius * f29.AsRadians());
  CVector3f dir = (pPos - origin).AsNormalized();
  float g;
  xc_velocityMag->GetValue(frame, g);
  pVel = g * dir;

  return false;
}
