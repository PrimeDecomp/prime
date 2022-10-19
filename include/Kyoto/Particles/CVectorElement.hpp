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
  bool GetValue(int frame, CVector3f& valOut) const override;
  bool IsFastConstant() const;

private:
  CVector3f x4_val;
};

class CVEParticleLocation : public CVectorElement {
public:
  ~CVEParticleLocation();
  bool GetValue(int frame, CVector3f& valOut) const;
};

class CVEParticleColor : public CVectorElement {
public:
  ~CVEParticleColor();
  bool GetValue(int frame, CVector3f& valOut) const;
};

class CVEParticleVelocity : public CVectorElement {
public:
  ~CVEParticleVelocity();
  bool GetValue(int frame, CVector3f& valOut) const;
};

class CVEParticleSystemOrientationFront : public CVectorElement {
public:
  ~CVEParticleSystemOrientationFront();
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEParticleSystemOrientationUp : public CVectorElement {
public:
  ~CVEParticleSystemOrientationUp();
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEParticleSystemOrientationRight : public CVectorElement {
public:
  ~CVEParticleSystemOrientationRight();
  bool GetValue(int frame, CVector3f& valOut) const override;
};

class CVEParticleSystemTranslation : public CVectorElement {
public:
  ~CVEParticleSystemTranslation();
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

#endif // _CVECTORELEMENT
