#ifndef _CEMITTERELEMENT
#define _CEMITTERELEMENT

#include "Kyoto/Particles/IElement.hpp"

class CEESimpleEmitter : CEmitterElement {
public:
  CEESimpleEmitter(CVectorElement* pos, CVectorElement* vel);
  ~CEESimpleEmitter();

  bool GetValue(int frame, CVector3f& pPos, CVector3f& pVel) const;

private:
  CVectorElement* x4_pos;
  CVectorElement* x8_vel;
};

class CVESphere : CEmitterElement {
public:
  CVESphere(CVectorElement* origin, CRealElement* radius, CRealElement* velocityMag);
  ~CVESphere();

  bool GetValue(int frame, CVector3f& pPos, CVector3f& pVel) const;

private:
  CVectorElement* x4_sphereOrigin;
  CRealElement* x8_sphereRadius;
  CRealElement* xc_velocityMag;
};

class CVEAngleSphere : CEmitterElement {
public:
  CVEAngleSphere(CVectorElement* origin, CRealElement* radius, CRealElement* velocityMag,
                 CRealElement* angleXBias, CRealElement* angleYBias, CRealElement* angleXRange,
                 CRealElement* angleYRange);
  ~CVEAngleSphere();

  bool GetValue(int frame, CVector3f& pPos, CVector3f& pVel) const;

private:
  CVectorElement* x4_sphereOrigin;
  CRealElement* x8_sphereRadius;
  CRealElement* xc_velocityMag;
  CRealElement* x10_angleXBias;
  CRealElement* x14_angleYBias;
  CRealElement* x18_angleXRange;
  CRealElement* x1c_angleYRange;
};

#endif // _CEMITTERELEMENT
