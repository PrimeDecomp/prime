#ifndef _CINTELEMENT
#define _CINTELEMENT

#include "types.h"

#include "Kyoto/Particles/IElement.hpp"

#include "rstl/vector.hpp"

class CInputStream;

class CIEConstant : public CIntElement {
  int x4_val;

public:
  CIEConstant(int val);
  ~CIEConstant() override;
  bool GetValue(int frame, int& valOut) const override;
};

class CIEDeath : public CIntElement {
  CIntElement* x4_a;
  CIntElement* x8_b;

public:
  CIEDeath(CIntElement* a, CIntElement* b);
  ~CIEDeath() override;
  bool GetValue(int frame, int& valOut) const override;
};

class CIEAdd : public CIntElement {
  CIntElement* x4_a;
  CIntElement* x8_b;

public:
  CIEAdd(CIntElement* a, CIntElement* b);
  ~CIEAdd() override;
  bool GetValue(int frame, int& valOut) const override;
};

class CIEMultiply : public CIntElement {
  CIntElement* x4_a;
  CIntElement* x8_b;

public:
  CIEMultiply(CIntElement* a, CIntElement* b);
  ~CIEMultiply() override;
  bool GetValue(int frame, int& valOut) const override;
};

class CIEModulo : public CIntElement {
  CIntElement* x4_a;
  CIntElement* x8_b;

public:
  CIEModulo(CIntElement* a, CIntElement* b);
  ~CIEModulo() override;
  bool GetValue(int frame, int& valOut) const override;
};

class CIERandom : public CIntElement {
  CIntElement* x4_a;
  CIntElement* x8_b;

public:
  CIERandom(CIntElement* a, CIntElement* b);
  ~CIERandom() override;
  bool GetValue(int frame, int& valOut) const override;
};

class CIESampleAndHold : public CIntElement {
  CIntElement* x4_sampleSource;
  mutable int x8_nextSampleFrame;
  CIntElement* xc_waitFramesMin;
  CIntElement* x10_waitFramesMax;
  mutable int x14_holdVal;

public:
  CIESampleAndHold(CIntElement* a, CIntElement* b, CIntElement* c);
  ~CIESampleAndHold() override;
  bool GetValue(int frame, int& valOut) const override;
};

class CIEImpulse : public CIntElement {
  CIntElement* x4_a;

public:
  CIEImpulse(CIntElement* a);
  ~CIEImpulse() override;
  bool GetValue(int frame, int& valOut) const override;
};

class CIETimescale : public CIntElement {
  CRealElement* x4_a;

public:
  CIETimescale(CRealElement* a);
  ~CIETimescale();
  bool GetValue(int frame, int& valOut) const override;
};

class CIEInitialRandom : public CIntElement {
  CIntElement* x4_a;
  CIntElement* x8_b;

public:
  CIEInitialRandom(CIntElement* a, CIntElement* b);
  ~CIEInitialRandom() override;
  bool GetValue(int frame, int& valOut) const override;
};

class CIETimeChain : public CIntElement {
  CIntElement* x4_a;
  CIntElement* x8_b;
  CIntElement* xc_swFrame;

public:
  CIETimeChain(CIntElement* a, CIntElement* b, CIntElement* c);
  ~CIETimeChain() override;
  bool GetValue(int frame, int& valOut) const override;
};

class CIEClamp : public CIntElement {
  CIntElement* x4_min;
  CIntElement* x8_max;
  CIntElement* xc_val;

public:
  CIEClamp(CIntElement* a, CIntElement* b, CIntElement* c);
  ~CIEClamp() override;
  bool GetValue(int frame, int& valOut) const override;
};

class CIEPulse : public CIntElement {
  CIntElement* x4_aDuration;
  CIntElement* x8_bDuration;
  CIntElement* xc_aVal;
  CIntElement* x10_bVal;

public:
  CIEPulse(CIntElement* a, CIntElement* b, CIntElement* c, CIntElement* d);
  ~CIEPulse() override;
  bool GetValue(int frame, int& valOut) const override;
};

class CIELifetimePercent : public CIntElement {
  CIntElement* x4_percentVal;

public:
  CIELifetimePercent(CIntElement* a);
  ~CIELifetimePercent() override;
  bool GetValue(int frame, int& valOut) const override;
};

class CIEKeyframeEmitter : public CIntElement {
  int x4_percent;
  int x8_unk1;
  bool xc_loop;
  bool xd_unk2;
  int x10_loopEnd;
  int x14_loopStart;
  rstl::vector< int > x18_keys;

public:
  CIEKeyframeEmitter(CInputStream& in);
  ~CIEKeyframeEmitter() override;
  bool GetValue(int frame, int& valOut) const override;
};

class CIESubtract : public CIntElement {
  CIntElement* x4_a;
  CIntElement* x8_b;

public:
  CIESubtract(CIntElement* a, CIntElement* b);
  ~CIESubtract() override;
  bool GetValue(int frame, int& valOut) const override;
};

class CIERealToInt : public CIntElement {
  CRealElement* x4_a;
  CRealElement* x8_b;

public:
  CIERealToInt(CRealElement* a, CRealElement* b);
  ~CIERealToInt() override;
  bool GetValue(int frame, int& valOut) const override;
};

class CIEGetCumulativeParticleCount : public CIntElement {
public:
  ~CIEGetCumulativeParticleCount() override {}
  bool GetValue(int frame, int& valOut) const override;
};

class CIEGetActiveParticleCount : public CIntElement {
public:
  ~CIEGetActiveParticleCount() override {}
  bool GetValue(int frame, int& valOut) const override;
};

class CIEGetEmitterTime : public CIntElement {
public:
  ~CIEGetEmitterTime() override;
  bool GetValue(int frame, int& valOut) const override;
};

#endif // _CINTELEMENT
