#include "Kyoto/Particles/CVectorElement.hpp"

bool CVEFastConstant::IsFastConstant() const { return true; }

CVEParticleLocation::~CVEParticleLocation() {}

CVEParticleColor::~CVEParticleColor() {}

CVEParticleVelocity::~CVEParticleVelocity() {}

CVEParticleSystemOrientationFront::~CVEParticleSystemOrientationFront() {}

CVEParticleSystemOrientationUp::~CVEParticleSystemOrientationUp() {}

CVEParticleSystemOrientationRight::~CVEParticleSystemOrientationRight() {}

CVEParticleSystemTranslation::~CVEParticleSystemTranslation() {}


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

CVEFastConstant::CVEFastConstant(float x, float y, float z)
: x4_val(x, y, z) {}

CVEFastConstant::~CVEFastConstant() {}

bool CVEFastConstant::GetValue(int frame, CVector3f& valOut) const {
  valOut = x4_val;
  return false;
}
