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
  ~CIEConstant();
  bool GetValue(int frame, int& valOut) const;
};

class CIEDeath : public CIntElement {
  CIntElement* x4_a;
  CIntElement* x8_b;

public:
  CIEDeath(CIntElement* a, CIntElement* b);
  ~CIEDeath();
  bool GetValue(int frame, int& valOut) const;
};

class CIEAdd : public CIntElement {
  CIntElement* x4_a;
  CIntElement* x8_b;

public:
  CIEAdd(CIntElement* a, CIntElement* b);
  ~CIEAdd();
  bool GetValue(int frame, int& valOut) const;
};

class CIEMultiply : public CIntElement {
  CIntElement* x4_a;
  CIntElement* x8_b;

public:
  CIEMultiply(CIntElement* a, CIntElement* b);
  ~CIEMultiply();
  bool GetValue(int frame, int& valOut) const;
};

class CIEModulo : public CIntElement {
  CIntElement* x4_a;
  CIntElement* x8_b;

public:
  CIEModulo(CIntElement* a, CIntElement* b);
  ~CIEModulo();
  bool GetValue(int frame, int& valOut) const;
};

class CIERandom : public CIntElement {
  CIntElement* x4_a;
  CIntElement* x8_b;

public:
  CIERandom(CIntElement* a, CIntElement* b);
  ~CIERandom();
  bool GetValue(int frame, int& valOut) const;
};

class CIESampleAndHold : public CIntElement {
  CIntElement* x4_sampleSource;
  mutable int x8_nextSampleFrame;
  CIntElement* xc_waitFramesMin;
  CIntElement* x10_waitFramesMax;
  mutable int x14_holdVal;

public:
  CIESampleAndHold(CIntElement* a, CIntElement* b, CIntElement* c);
  ~CIESampleAndHold();
  bool GetValue(int frame, int& valOut) const;
};

class CIEImpulse : public CIntElement {
  CIntElement* x4_a;

public:
  CIEImpulse(CIntElement* a);
  ~CIEImpulse();
  bool GetValue(int frame, int& valOut) const;
};

class CIETimescale : public CIntElement {
  CRealElement* x4_a;

public:
  CIETimescale(CRealElement* a);
  ~CIETimescale();
  bool GetValue(int frame, int& valOut) const;
};

class CIEInitialRandom : public CIntElement {
  CIntElement* x4_a;
  CIntElement* x8_b;

public:
  CIEInitialRandom(CIntElement* a, CIntElement* b);
  ~CIEInitialRandom();
  bool GetValue(int frame, int& valOut) const;
};

class CIETimeChain : public CIntElement {
  CIntElement* x4_a;
  CIntElement* x8_b;
  CIntElement* xc_swFrame;

public:
  CIETimeChain(CIntElement* a, CIntElement* b, CIntElement* c);
  ~CIETimeChain();
  bool GetValue(int frame, int& valOut) const;
};

class CIEClamp : public CIntElement {
  CIntElement* x4_min;
  CIntElement* x8_max;
  CIntElement* xc_val;

public:
  CIEClamp(CIntElement* a, CIntElement* b, CIntElement* c);
  ~CIEClamp();
  bool GetValue(int frame, int& valOut) const;
};

class CIEPulse : public CIntElement {
  CIntElement* x4_aDuration;
  CIntElement* x8_bDuration;
  CIntElement* xc_aVal;
  CIntElement* x10_bVal;

public:
  CIEPulse(CIntElement* a, CIntElement* b, CIntElement* c, CIntElement* d);
  ~CIEPulse();
  bool GetValue(int frame, int& valOut) const;
};

class CIELifetimePercent : public CIntElement {
  CIntElement* x4_percentVal;

public:
  CIELifetimePercent(CIntElement* a);
  ~CIELifetimePercent();
  bool GetValue(int frame, int& valOut) const;
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
  ~CIEKeyframeEmitter();
  bool GetValue(int frame, int& valOut) const;
};

class CIESubtract : public CIntElement {
  CIntElement* x4_a;
  CIntElement* x8_b;

public:
  CIESubtract(CIntElement* a, CIntElement* b);
  ~CIESubtract();
  bool GetValue(int frame, int& valOut) const;
};

class CIERealToInt : public CIntElement {
  CRealElement* x4_a;
  CRealElement* x8_b;

public:
  CIERealToInt(CRealElement* a, CRealElement* b);
  ~CIERealToInt();
  bool GetValue(int frame, int& valOut) const;
};

class CIEGetCumulativeParticleCount : public CIntElement {
public:
  ~CIEGetCumulativeParticleCount() {}
  bool GetValue(int frame, int& valOut) const;
};

class CIEGetActiveParticleCount : public CIntElement {
public:
  ~CIEGetActiveParticleCount() {}
  bool GetValue(int frame, int& valOut) const;
};

class CIEGetEmitterTime : public CIntElement {
public:
  ~CIEGetEmitterTime();
  bool GetValue(int frame, int& valOut) const;
};

#endif // _CINTELEMENT
