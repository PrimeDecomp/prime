#include "Kyoto/Particles/CVectorElement.hpp"

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Math/CMath.hpp"

#include "rstl/math.hpp"

CVEConstant::CVEConstant(CRealElement* x, CRealElement* y, CRealElement* z)
: x4_x(x), x8_y(y), xc_z(z) {}

CVEConstant::~CVEConstant() {
  delete x4_x;
  delete x8_y;
  delete xc_z;
}

bool CVEConstant::GetValue(int frame, CVector3f& valOut) const {
  float x, y, z;
  x4_x->GetValue(frame, x);
  x8_y->GetValue(frame, y);
  xc_z->GetValue(frame, z);
  valOut = CVector3f(x, y, z);
  return false;
}

CVEFastConstant::CVEFastConstant(float x, float y, float z) : x4_val(x, y, z) {}

CVEFastConstant::~CVEFastConstant() {}

bool CVEFastConstant::GetValue(int frame, CVector3f& valOut) const {
  valOut = x4_val;
  return false;
}

CVECone::CVECone(CVectorElement* direction, CRealElement* magnitude)
: x4_direction(direction)
, x8_magnitude(magnitude)
, xc_xVec(CVector3f::Zero())
, x18_yVec(CVector3f::Zero()) {
  CVector3f av(0.f, 0.f, 0.f);
  x4_direction->GetValue(0, av);
  CVector3f avNorm = av.AsNormalized();
  if (avNorm.GetX() > 0.8f) {
    xc_xVec = CVector3f::Cross(av, CVector3f(0.f, 1.f, 0.f));
  } else {
    xc_xVec = CVector3f::Cross(av, CVector3f(1.f, 0.f, 0.f));
  }
  x18_yVec = CVector3f::Cross(xc_xVec, avNorm);
}

CVECone::~CVECone() {
  delete x4_direction;
  delete x8_magnitude;
}

bool CVECone::GetValue(int frame, CVector3f& valOut) const {
  float b;
  CVector3f dir(0.f, 0.f, 0.f);

  x8_magnitude->GetValue(frame, b);
  x4_direction->GetValue(frame, dir);
  float b2 = rstl::min_val(1.f, b);

  float randX = 0.f, randY = 0.f;
  do {
    randX = 2.f * b2 * CRandom16::GetRandomNumber()->Float() - 0.5f;
    randY = 2.f * b2 * CRandom16::GetRandomNumber()->Float() - 0.5f;
  } while (randX * randX + randY * randY > 1.f);

  valOut = xc_xVec * randX + x18_yVec * randY + dir;
  return false;
}

CVEAngleCone::CVEAngleCone(CRealElement* angleXConstant, CRealElement* angleYConstant,
                           CRealElement* angleXRange, CRealElement* angleYRange,
                           CRealElement* magnitude)
: x4_angleXConstant(angleXConstant)
, x8_angleYConstant(angleYConstant)
, xc_angleXRange(angleXRange)
, x10_angleYRange(angleYRange)
, x14_magnitude(magnitude) {}

CVEAngleCone::~CVEAngleCone() {
  delete x4_angleXConstant;
  delete x8_angleYConstant;
  delete xc_angleXRange;
  delete x10_angleYRange;
  delete x14_magnitude;
}

bool CVEAngleCone::GetValue(int frame, CVector3f& valOut) const {
  return false;
}
