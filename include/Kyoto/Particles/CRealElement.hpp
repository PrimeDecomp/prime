#ifndef _CREALELEMENT
#define _CREALELEMENT

#include "types.h"

#include "Kyoto/Particles/IElement.hpp"

#include "rstl/vector.hpp"

class CREConstant : public CRealElement {
  float x4_val;

public:
  CREConstant(float val);
  ~CREConstant();
  bool GetValue(int frame, float& valOut) const;
  bool IsConstant() const { return true; }
};

class CRESineWave : public CRealElement {
  CRealElement* x4_frequency;
  CRealElement* x8_amplitude;
  CRealElement* xc_phase;

public:
  CRESineWave(CRealElement* a, CRealElement* b, CRealElement* c);
  ~CRESineWave();
  bool GetValue(int frame, float& valOut) const;
};

class CRETimeScale : public CRealElement {
  CRealElement* x4_a;

public:
  CRETimeScale(CRealElement* a);
  ~CRETimeScale();
  bool GetValue(int frame, float& valOut) const;
};

class CREAdd : public CRealElement {
  CRealElement* x4_a;
  CRealElement* x8_b;

public:
  CREAdd(CRealElement* a, CRealElement* b);
  ~CREAdd();
  bool GetValue(int frame, float& valOut) const;
};

class CREMultiply : public CRealElement {
  CRealElement* x4_a;
  CRealElement* x8_b;

public:
  CREMultiply(CRealElement* a, CRealElement* b);
  ~CREMultiply();
  bool GetValue(int frame, float& valOut) const;
};

class CREDotProduct : public CRealElement {
  CVectorElement* x4_a;
  CVectorElement* x8_b;

public:
  CREDotProduct(CVectorElement* a, CVectorElement* b);
  ~CREDotProduct();
  bool GetValue(int frame, float& valOut) const;
};

class CRERandom : public CRealElement {
  CRealElement* x4_min;
  CRealElement* x8_max;

public:
  CRERandom(CRealElement* min, CRealElement* max);
  ~CRERandom();
  bool GetValue(int frame, float& valOut) const;
};

class CREInitialRandom : public CRealElement {
  CRealElement* x4_min;
  CRealElement* x8_max;

public:
  CREInitialRandom(CRealElement* min, CRealElement* max);
  ~CREInitialRandom();
  bool GetValue(int frame, float& valOut) const;
  bool IsConstant() const { return true; }
};

class CRETimeChain : public CRealElement {
  CRealElement* x4_a;
  CRealElement* x8_b;
  CIntElement* xc_swFrame;

public:
  CRETimeChain(CRealElement* a, CRealElement* b, CIntElement* c);
  ~CRETimeChain();
  bool GetValue(int frame, float& valOut) const;
};

class CREClamp : public CRealElement {
  CRealElement* x4_min;
  CRealElement* x8_max;
  CRealElement* xc_val;

public:
  CREClamp(CRealElement* a, CRealElement* b, CRealElement* c);
  ~CREClamp();
  bool GetValue(int frame, float& valOut) const;
};

class CREPulse : public CRealElement {
  CIntElement* x4_aDuration;
  CIntElement* x8_bDuration;
  CRealElement* xc_valA;
  CRealElement* x10_valB;

public:
  CREPulse(CIntElement* a, CIntElement* b, CRealElement* c, CRealElement* d);
  ~CREPulse();
  bool GetValue(int frame, float& valOut) const;
};

class CRELifetimePercent : public CRealElement {
  CRealElement* x4_percentVal;

public:
  CRELifetimePercent(CRealElement* a); // : x4_percentVal(a) {}
  ~CRELifetimePercent();
  bool GetValue(int frame, float& valOut) const;
};

class CRELifetimeTween : public CRealElement {
  CRealElement* x4_a;
  CRealElement* x8_b;

public:
  CRELifetimeTween(CRealElement* a, CRealElement* b);
  ~CRELifetimeTween();
  bool GetValue(int frame, float& valOut) const;
};

class CREKeyframeEmitter : public CRealElement {
  int x4_percent;
  int x8_unk1;
  bool xc_loop;
  bool xd_unk2;
  int x10_loopEnd;
  int x14_loopStart;
  rstl::vector< float > x18_keys;

public:
  CREKeyframeEmitter(CInputStream& in);
  ~CREKeyframeEmitter();
  bool GetValue(int frame, float& valOut) const;
};

class CREParticleAccessParameter1 : public CRealElement {
public:
  ~CREParticleAccessParameter1() {}
  bool GetValue(int frame, float& valOut) const;
};

class CREParticleAccessParameter2 : public CRealElement {
public:
  ~CREParticleAccessParameter2() {}
  bool GetValue(int frame, float& valOut) const;
};

class CREParticleAccessParameter3 : public CRealElement {
public:
  ~CREParticleAccessParameter3() {}
  bool GetValue(int frame, float& valOut) const;
};

class CREParticleAccessParameter4 : public CRealElement {
public:
  ~CREParticleAccessParameter4() {}
  bool GetValue(int frame, float& valOut) const;
};

class CREParticleAccessParameter5 : public CRealElement {
public:
  ~CREParticleAccessParameter5() {}
  bool GetValue(int frame, float& valOut) const;
};

class CREParticleAccessParameter6 : public CRealElement {
public:
  ~CREParticleAccessParameter6() {}
  bool GetValue(int frame, float& valOut) const;
};

class CREParticleAccessParameter7 : public CRealElement {
public:
  ~CREParticleAccessParameter7() {}
  bool GetValue(int frame, float& valOut) const;
};

class CREParticleAccessParameter8 : public CRealElement {
public:
  ~CREParticleAccessParameter8() {}
  bool GetValue(int frame, float& valOut) const;
};

class CREParticleSizeOrLineLength : public CRealElement {
public:
  ~CREParticleSizeOrLineLength() {}
  bool GetValue(int frame, float& valOut) const;
};

class CREParticleRotationOrLineWidth : public CRealElement {
public:
  ~CREParticleRotationOrLineWidth() {}
  bool GetValue(int frame, float& valOut) const;
};

class CREVectorXToReal : public CRealElement {
  CVectorElement* x4_a;

public:
  CREVectorXToReal(CVectorElement* a);
  ~CREVectorXToReal();
  bool GetValue(int frame, float& valOut) const;
};

class CREVectorYToReal : public CRealElement {
  CVectorElement* x4_a;

public:
  CREVectorYToReal(CVectorElement* a);
  ~CREVectorYToReal();
  bool GetValue(int frame, float& valOut) const;
};

class CREVectorZToReal : public CRealElement {
  CVectorElement* x4_a;

public:
  CREVectorZToReal(CVectorElement* a);
  ~CREVectorZToReal();
  bool GetValue(int frame, float& valOut) const;
};

class CREVectorMagnitude : public CRealElement {
  CVectorElement* x4_a;

public:
  CREVectorMagnitude(CVectorElement* a);
  ~CREVectorMagnitude();
  bool GetValue(int frame, float& valOut) const;
};

class CREInitialSwitch : public CRealElement {
  CRealElement* x4_a;
  CRealElement* x8_b;

public:
  CREInitialSwitch(CRealElement* a, CRealElement* b);
  ~CREInitialSwitch();
  bool GetValue(int frame, float& valOut) const;
};

class CRECompareLessThan : public CRealElement {
  CRealElement* x4_a;
  CRealElement* x8_b;
  CRealElement* xc_c;
  CRealElement* x10_d;

public:
  CRECompareLessThan(CRealElement* a, CRealElement* b, CRealElement* c, CRealElement* d);
  ~CRECompareLessThan();
  bool GetValue(int frame, float& valOut) const;
};

class CRECompareEqual : public CRealElement {
  CRealElement* x4_a;
  CRealElement* x8_b;
  CRealElement* xc_c;
  CRealElement* x10_d;

public:
  CRECompareEqual(CRealElement* a, CRealElement* b, CRealElement* c, CRealElement* d);
  ~CRECompareEqual();
  bool GetValue(int frame, float& valOut) const;
};

class CREConstantRange : public CRealElement {
  CRealElement* x4_val;
  CRealElement* x8_min;
  CRealElement* xc_max;
  CRealElement* x10_inRange;
  CRealElement* x14_outOfRange;

public:
  CREConstantRange(CRealElement* a, CRealElement* b, CRealElement* c, CRealElement* d,
                   CRealElement* e);
  ~CREConstantRange();
  bool GetValue(int frame, float& valOut) const;
};

class CREExternalVar : public CRealElement {
  CIntElement* x4_a;

public:
  CREExternalVar(CIntElement* a);
  ~CREExternalVar();
  bool GetValue(int frame, float& valOut) const;
};

class CRESubtract : public CRealElement {
  CRealElement* x4_a;
  CRealElement* x8_b;

public:
  CRESubtract(CRealElement* a, CRealElement* b);
  ~CRESubtract();
  bool GetValue(int frame, float& valOut) const;
};

class CREGetComponentRed : public CRealElement {
  CColorElement* x4_a;

public:
  CREGetComponentRed(CColorElement* a);
  ~CREGetComponentRed();
  bool GetValue(int frame, float& valOut) const;
};

class CREGetComponentGreen : public CRealElement {
  CColorElement* x4_a;

public:
  CREGetComponentGreen(CColorElement* a);
  ~CREGetComponentGreen();
  bool GetValue(int frame, float& valOut) const;
};

class CREGetComponentBlue : public CRealElement {
  CColorElement* x4_a;

public:
  CREGetComponentBlue(CColorElement* a);
  ~CREGetComponentBlue();
  bool GetValue(int frame, float& valOut) const;
};

class CREGetComponentAlpha : public CRealElement {
  CColorElement* x4_a;

public:
  CREGetComponentAlpha(CColorElement* a);
  ~CREGetComponentAlpha();
  bool GetValue(int frame, float& valOut) const;
};

class CREIntTimesReal : public CRealElement {
  CIntElement* x4_a;
  CRealElement* x8_b;

public:
  CREIntTimesReal(CIntElement* a, CRealElement* b);
  ~CREIntTimesReal();
  bool GetValue(int frame, float& valOut) const;
};

#endif // _CREALELEMENT
