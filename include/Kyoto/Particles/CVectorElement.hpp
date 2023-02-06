#ifndef _CVECTORELEMENT
#define _CVECTORELEMENT

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Particles/IElement.hpp"

#include "rstl/single_ptr.hpp"

class CVEFastConstant : public CVectorElement {
public:
  CVEFastConstant(float x, float y, float z);
  ~CVEFastConstant();
  bool GetValue(int frame, CVector3f& valOut) const;
  bool IsFastConstant() const { return true; }

private:
  CVector3f x4_val;
};

class CVEParticleLocation : public CVectorElement {
public:
  ~CVEParticleLocation() {}
  bool GetValue(int frame, CVector3f& valOut) const;
};

class CVEParticleColor : public CVectorElement {
public:
  ~CVEParticleColor() {}
  bool GetValue(int frame, CVector3f& valOut) const;
};

class CVEParticleVelocity : public CVectorElement {
public:
  ~CVEParticleVelocity() {}
  bool GetValue(int frame, CVector3f& valOut) const;
};

class CVEParticleSystemOrientationFront : public CVectorElement {
public:
  ~CVEParticleSystemOrientationFront() {}
  bool GetValue(int frame, CVector3f& valOut) const;
};

class CVEParticleSystemOrientationUp : public CVectorElement {
public:
  ~CVEParticleSystemOrientationUp() {}
  bool GetValue(int frame, CVector3f& valOut) const;
};

class CVEParticleSystemOrientationRight : public CVectorElement {
public:
  ~CVEParticleSystemOrientationRight() {}
  bool GetValue(int frame, CVector3f& valOut) const;
};

class CVEParticleSystemTranslation : public CVectorElement {
public:
  ~CVEParticleSystemTranslation() {}
  bool GetValue(int frame, CVector3f& valOut) const;
};

class CVEConstant : public CVectorElement {
public:
  CVEConstant(CRealElement* x, CRealElement* y, CRealElement* z);
  ~CVEConstant();
  bool GetValue(int frame, CVector3f& valOut) const;

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
  bool GetValue(int frame, CVector3f& valOut) const;
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
  bool GetValue(int frame, CVector3f& valOut) const;
};

#endif // _CVECTORELEMENT
