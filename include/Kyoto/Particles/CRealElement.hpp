#ifndef _CREALELEMENT
#define _CREALELEMENT

#include "types.h"

#include "Kyoto/Particles/IElement.hpp"

#include "rstl/vector.hpp"

class CREConstant : public CRealElement {
  float x4_val;

public:
  CREConstant(float val);
  ~CREConstant() override;
  bool GetValue(int frame, float& valOut) const override;
  bool IsConstant() const override { return true; }
};

class CRESineWave : public CRealElement {
  CRealElement* x4_frequency;
  CRealElement* x8_amplitude;
  CRealElement* xc_phase;

public:
  CRESineWave(CRealElement* a, CRealElement* b, CRealElement* c);
  ~CRESineWave() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CRETimeScale : public CRealElement {
  CRealElement* x4_a;

public:
  CRETimeScale(CRealElement* a);
  ~CRETimeScale() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREAdd : public CRealElement {
  CRealElement* x4_a;
  CRealElement* x8_b;

public:
  CREAdd(CRealElement* a, CRealElement* b);
  ~CREAdd() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREMultiply : public CRealElement {
  CRealElement* x4_a;
  CRealElement* x8_b;

public:
  CREMultiply(CRealElement* a, CRealElement* b);
  ~CREMultiply() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREDotProduct : public CRealElement {
  CVectorElement* x4_a;
  CVectorElement* x8_b;

public:
  CREDotProduct(CVectorElement* a, CVectorElement* b);
  ~CREDotProduct() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CRERandom : public CRealElement {
  CRealElement* x4_min;
  CRealElement* x8_max;

public:
  CRERandom(CRealElement* min, CRealElement* max);
  ~CRERandom() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREInitialRandom : public CRealElement {
  CRealElement* x4_min;
  CRealElement* x8_max;

public:
  CREInitialRandom(CRealElement* min, CRealElement* max);
  ~CREInitialRandom() override;
  bool GetValue(int frame, float& valOut) const override;
  bool IsConstant() const override { return true; }
};

class CRETimeChain : public CRealElement {
  CRealElement* x4_a;
  CRealElement* x8_b;
  CIntElement* xc_swFrame;

public:
  CRETimeChain(CRealElement* a, CRealElement* b, CIntElement* c);
  ~CRETimeChain() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREClamp : public CRealElement {
  CRealElement* x4_min;
  CRealElement* x8_max;
  CRealElement* xc_val;

public:
  CREClamp(CRealElement* a, CRealElement* b, CRealElement* c);
  ~CREClamp() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREPulse : public CRealElement {
  CIntElement* x4_aDuration;
  CIntElement* x8_bDuration;
  CRealElement* xc_valA;
  CRealElement* x10_valB;

public:
  CREPulse(CIntElement* a, CIntElement* b, CRealElement* c, CRealElement* d);
  ~CREPulse() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CRELifetimePercent : public CRealElement {
  CRealElement* x4_percentVal;

public:
  CRELifetimePercent(CRealElement* a); // : x4_percentVal(a) {}
  ~CRELifetimePercent() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CRELifetimeTween : public CRealElement {
  CRealElement* x4_a;
  CRealElement* x8_b;

public:
  CRELifetimeTween(CRealElement* a, CRealElement* b);
  ~CRELifetimeTween() override;
  bool GetValue(int frame, float& valOut) const override;
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
  ~CREKeyframeEmitter() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREParticleAccessParameter1 : public CRealElement {
public:
  ~CREParticleAccessParameter1() override {}
  bool GetValue(int frame, float& valOut) const override;
};

class CREParticleAccessParameter2 : public CRealElement {
public:
  ~CREParticleAccessParameter2() override {}
  bool GetValue(int frame, float& valOut) const override;
};

class CREParticleAccessParameter3 : public CRealElement {
public:
  ~CREParticleAccessParameter3() override {}
  bool GetValue(int frame, float& valOut) const override;
};

class CREParticleAccessParameter4 : public CRealElement {
public:
  ~CREParticleAccessParameter4() override {}
  bool GetValue(int frame, float& valOut) const override;
};

class CREParticleAccessParameter5 : public CRealElement {
public:
  ~CREParticleAccessParameter5() override {}
  bool GetValue(int frame, float& valOut) const override;
};

class CREParticleAccessParameter6 : public CRealElement {
public:
  ~CREParticleAccessParameter6() override {}
  bool GetValue(int frame, float& valOut) const override;
};

class CREParticleAccessParameter7 : public CRealElement {
public:
  ~CREParticleAccessParameter7() override {}
  bool GetValue(int frame, float& valOut) const override;
};

class CREParticleAccessParameter8 : public CRealElement {
public:
  ~CREParticleAccessParameter8() override {}
  bool GetValue(int frame, float& valOut) const override;
};

class CREParticleSizeOrLineLength : public CRealElement {
public:
  ~CREParticleSizeOrLineLength() override {}
  bool GetValue(int frame, float& valOut) const override;
};

class CREParticleRotationOrLineWidth : public CRealElement {
public:
  ~CREParticleRotationOrLineWidth() override {}
  bool GetValue(int frame, float& valOut) const override;
};

class CREVectorXToReal : public CRealElement {
  CVectorElement* x4_a;

public:
  CREVectorXToReal(CVectorElement* a);
  ~CREVectorXToReal() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREVectorYToReal : public CRealElement {
  CVectorElement* x4_a;

public:
  CREVectorYToReal(CVectorElement* a);
  ~CREVectorYToReal() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREVectorZToReal : public CRealElement {
  CVectorElement* x4_a;

public:
  CREVectorZToReal(CVectorElement* a);
  ~CREVectorZToReal() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREVectorMagnitude : public CRealElement {
  CVectorElement* x4_a;

public:
  CREVectorMagnitude(CVectorElement* a);
  ~CREVectorMagnitude() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREInitialSwitch : public CRealElement {
  CRealElement* x4_a;
  CRealElement* x8_b;

public:
  CREInitialSwitch(CRealElement* a, CRealElement* b);
  ~CREInitialSwitch() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CRECompareLessThan : public CRealElement {
  CRealElement* x4_a;
  CRealElement* x8_b;
  CRealElement* xc_c;
  CRealElement* x10_d;

public:
  CRECompareLessThan(CRealElement* a, CRealElement* b, CRealElement* c, CRealElement* d);
  ~CRECompareLessThan() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CRECompareEqual : public CRealElement {
  CRealElement* x4_a;
  CRealElement* x8_b;
  CRealElement* xc_c;
  CRealElement* x10_d;

public:
  CRECompareEqual(CRealElement* a, CRealElement* b, CRealElement* c, CRealElement* d);
  ~CRECompareEqual() override;
  bool GetValue(int frame, float& valOut) const override;
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
  ~CREConstantRange() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREExternalVar : public CRealElement {
  CIntElement* x4_a;

public:
  CREExternalVar(CIntElement* a);
  ~CREExternalVar() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CRESubtract : public CRealElement {
  CRealElement* x4_a;
  CRealElement* x8_b;

public:
  CRESubtract(CRealElement* a, CRealElement* b);
  ~CRESubtract() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREGetComponentRed : public CRealElement {
  CColorElement* x4_a;

public:
  CREGetComponentRed(CColorElement* a);
  ~CREGetComponentRed() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREGetComponentGreen : public CRealElement {
  CColorElement* x4_a;

public:
  CREGetComponentGreen(CColorElement* a);
  ~CREGetComponentGreen() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREGetComponentBlue : public CRealElement {
  CColorElement* x4_a;

public:
  CREGetComponentBlue(CColorElement* a);
  ~CREGetComponentBlue() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREGetComponentAlpha : public CRealElement {
  CColorElement* x4_a;

public:
  CREGetComponentAlpha(CColorElement* a);
  ~CREGetComponentAlpha() override;
  bool GetValue(int frame, float& valOut) const override;
};

class CREIntTimesReal : public CRealElement {
  CIntElement* x4_a;
  CRealElement* x8_b;

public:
  CREIntTimesReal(CIntElement* a, CRealElement* b);
  ~CREIntTimesReal() override;
  bool GetValue(int frame, float& valOut) const override;
};

#endif // _CREALELEMENT
