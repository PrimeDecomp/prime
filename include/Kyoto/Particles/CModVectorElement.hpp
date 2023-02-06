#ifndef _CMODVECTORELEMENT
#define _CMODVECTORELEMENT

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Particles/IElement.hpp"

class CMVEConstant : public CModVectorElement {
  CRealElement* x4_x;
  CRealElement* x8_y;
  CRealElement* xc_z;

public:
  CMVEConstant(CRealElement* a, CRealElement* b, CRealElement* c);
  ~CMVEConstant();
  bool GetValue(int frame, CVector3f& pVel, CVector3f& pPos) const;
};

class CMVEFastConstant : public CModVectorElement {
  CVector3f x4_val;

public:
  CMVEFastConstant(float a, float b, float c);
  ~CMVEFastConstant();
  bool GetValue(int frame, CVector3f& pVel, CVector3f& pPos) const;
};

class CMVEGravity : public CModVectorElement {
  CVectorElement* x4_a;

public:
  CMVEGravity(CVectorElement* a);
  ~CMVEGravity();
  bool GetValue(int frame, CVector3f& pVel, CVector3f& pPos) const;
};

class CMVEWind : public CModVectorElement {
  CVectorElement* x4_velocity;
  CRealElement* x8_factor;

public:
  CMVEWind(CVectorElement* velocity, CRealElement* factor);
  ~CMVEWind();
  bool GetValue(int frame, CVector3f& pVel, CVector3f& pPos) const;
};

class CMVEExplode : public CModVectorElement {
  CRealElement* x4_a;
  CRealElement* x8_b;

public:
  CMVEExplode(CRealElement* a, CRealElement* b);
  ~CMVEExplode();
  bool GetValue(int frame, CVector3f& pVel, CVector3f& pPos) const;
};

class CMVETimeChain : public CModVectorElement {
  CModVectorElement* x4_a;
  CModVectorElement* x8_b;
  CIntElement* xc_swFrame;

public:
  CMVETimeChain(CModVectorElement* a, CModVectorElement* b, CIntElement* c);
  ~CMVETimeChain();
  bool GetValue(int frame, CVector3f& pVel, CVector3f& pPos) const;
};

class CMVEPulse : public CModVectorElement {
  CIntElement* x4_aDuration;
  CIntElement* x8_bDuration;
  CModVectorElement* xc_aVal;
  CModVectorElement* x10_bVal;

public:
  CMVEPulse(CIntElement* a, CIntElement* b, CModVectorElement* c, CModVectorElement* d);
  ~CMVEPulse();
  bool GetValue(int frame, CVector3f& pVel, CVector3f& pPos) const;
};

class CMVEImplosion : public CModVectorElement {
  CVectorElement* x4_implPoint;
  CRealElement* x8_magScale;
  CRealElement* xc_maxMag;
  CRealElement* x10_minMag;
  bool x14_enableMinMag;

public:
  CMVEImplosion(CVectorElement* a, CRealElement* b, CRealElement* c, CRealElement* d, bool e);
  ~CMVEImplosion();
  bool GetValue(int frame, CVector3f& pVel, CVector3f& pPos) const;
};

class CMVELinearImplosion : public CModVectorElement {
  CVectorElement* x4_implPoint;
  CRealElement* x8_magScale;
  CRealElement* xc_maxMag;
  CRealElement* x10_minMag;
  bool x14_enableMinMag;

public:
  CMVELinearImplosion(CVectorElement* a, CRealElement* b, CRealElement* c, CRealElement* d, bool e);
  ~CMVELinearImplosion();
  bool GetValue(int frame, CVector3f& pVel, CVector3f& pPos) const;
};

class CMVEExponentialImplosion : public CModVectorElement {
  CVectorElement* x4_implPoint;
  CRealElement* x8_magScale;
  CRealElement* xc_maxMag;
  CRealElement* x10_minMag;
  bool x14_enableMinMag;

public:
  CMVEExponentialImplosion(CVectorElement* a, CRealElement* b, CRealElement* c, CRealElement* d,
                           bool e);
  ~CMVEExponentialImplosion();
  bool GetValue(int frame, CVector3f& pVel, CVector3f& pPos) const;
};

class CMVESwirl : public CModVectorElement {
  CVectorElement* x4_helixPoint;
  CVectorElement* x8_curveBinormal;
  CRealElement* xc_filterGain;
  CRealElement* x10_tangentialVelocity;

public:
  CMVESwirl(CVectorElement* a, CVectorElement* b, CRealElement* c, CRealElement* d);
  ~CMVESwirl();
  bool GetValue(int frame, CVector3f& pVel, CVector3f& pPos) const;
};

class CMVEBounce : public CModVectorElement {
  CVectorElement* x4_planePoint;
  CVectorElement* x8_planeNormal;
  CRealElement* xc_friction;
  CRealElement* x10_restitution;
  bool x14_planePrecomputed;
  bool x15_dieOnPenetrate;
  mutable CVector3f x18_planeValidatedNormal;
  mutable float x24_planeD;

public:
  CMVEBounce(CVectorElement* planePoint, CVectorElement* planeNormal, CRealElement* friction,
             CRealElement* restitution, bool e);
  ~CMVEBounce();
  bool GetValue(int frame, CVector3f& pVel, CVector3f& pPos) const;
};

class CMVESetPosition : public CModVectorElement {
  CVectorElement* x4_a;

public:
  CMVESetPosition(CVectorElement* a);
  ~CMVESetPosition();
  bool GetValue(int frame, CVector3f& pVel, CVector3f& pPos) const;
};

#endif // _CMODVECTORELEMENT
