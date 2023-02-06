#ifndef _CVECTORELEMENT
#define _CVECTORELEMENT

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Particles/IElement.hpp"

#include "rstl/single_ptr.hpp"

class CVEFastConstant : public CVectorElement {
public:
  CVEFastConstant(float x, float y, float z);
  ~CVEFastConstant() override;
  bool GetValue(int frame, CVector3f& valOut) const override;
  bool IsFastConstant() const override { return true; }

private:
  CVector3f x4_val;
};

class CVEParticleLocation : public CVectorElement {
public:
  ~CVEParticleLocation() override {}
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEParticleColor : public CVectorElement {
public:
  ~CVEParticleColor() override {}
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEParticleVelocity : public CVectorElement {
public:
  ~CVEParticleVelocity() override {}
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEParticleSystemOrientationFront : public CVectorElement {
public:
  ~CVEParticleSystemOrientationFront() override {}
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEParticleSystemOrientationUp : public CVectorElement {
public:
  ~CVEParticleSystemOrientationUp() override {}
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEParticleSystemOrientationRight : public CVectorElement {
public:
  ~CVEParticleSystemOrientationRight() override {}
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEParticleSystemTranslation : public CVectorElement {
public:
  ~CVEParticleSystemTranslation() override {}
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEConstant : public CVectorElement {
public:
  CVEConstant(CRealElement* x, CRealElement* y, CRealElement* z);
  ~CVEConstant();
  bool GetValue(int frame, CVector3f& valOut) const override;

public:
  CRealElement* x4_x;
  CRealElement* x8_y;
  CRealElement* xc_z;
};

class CVECone : public CVectorElement {
  CVectorElement* x4_direction;
  CRealElement* x8_magnitude;
  CVector3f xc_xVec;
  CVector3f x18_yVec;

public:
  CVECone(CVectorElement* direction, CRealElement* magnitude);
  ~CVECone();
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEAngleCone : public CVectorElement {
  CRealElement* x4_angleXConstant;
  CRealElement* x8_angleYConstant;
  CRealElement* xc_angleXRange;
  CRealElement* x10_angleYRange;
  CRealElement* x14_magnitude;

public:
  CVEAngleCone(CRealElement* angleXConstant, CRealElement* angleYConstant,
               CRealElement* angleXRange, CRealElement* angleYRange, CRealElement* magnitude);
  ~CVEAngleCone();
  bool GetValue(int frame, CVector3f& valOut) const override;
};

#endif // _CVECTORELEMENT
