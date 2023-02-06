#ifndef _CCOLORELEMENT
#define _CCOLORELEMENT

#include "types.h"

#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Particles/IElement.hpp"

class CCEConstant : public CColorElement {
  CRealElement* x4_r;
  CRealElement* x8_g;
  CRealElement* xc_b;
  CRealElement* x10_a;

public:
  CCEConstant(CRealElement* r, CRealElement* g, CRealElement* b, CRealElement* a);
  ~CCEConstant();
  bool GetValue(int frame, CColor& colorOut) const;
};

class CCEFastConstant : public CColorElement {
  CColor x4_val;

public:
  CCEFastConstant(float r, float g, float b, float a);
  ~CCEFastConstant();
  bool GetValue(int frame, CColor& colorOut) const;
};

class CCEFade : public CColorElement {
  CColorElement* x4_a;
  CColorElement* x8_b;
  CRealElement* xc_endFrame;

public:
  CCEFade(CColorElement* a, CColorElement* b, CRealElement* end);
  ~CCEFade();
  bool GetValue(int frame, CColor& colorOut) const;
};

class CCEFadeEnd : public CColorElement {
  CColorElement* x4_a;
  CColorElement* x8_b;
  CRealElement* xc_startFrame;
  CRealElement* x10_endFrame;

public:
  CCEFadeEnd(CColorElement* a, CColorElement* b, CRealElement* start, CRealElement* end);
  ~CCEFadeEnd();
  bool GetValue(int frame, CColor& colorOut) const;
};

class CCETimeChain : public CColorElement {
  CColorElement* x4_a;
  CColorElement* x8_b;
  CIntElement* xc_swFrame;

public:
  CCETimeChain(CColorElement* a, CColorElement* b, CIntElement* c);
  ~CCETimeChain();
  bool GetValue(int frame, CColor& colorOut) const;
};

class CCEPulse : public CColorElement {
  CIntElement* x4_aDuration;
  CIntElement* x8_bDuration;
  CColorElement* xc_aVal;
  CColorElement* x10_bVal;

public:
  CCEPulse(CIntElement* a, CIntElement* b, CColorElement* c, CColorElement* d);
  ~CCEPulse();
  bool GetValue(int frame, CColor& colorOut) const;
};

class CCEKeyframeEmitter : public CColorElement {
  int x4_percent;
  int x8_unk1;
  bool xc_loop;
  bool xd_unk2;
  int x10_loopEnd;
  int x14_loopStart;
  rstl::vector< CColor > x18_keys;

public:
  CCEKeyframeEmitter(CInputStream& in);
  ~CCEKeyframeEmitter();
  bool GetValue(int frame, CColor& valOut) const;
};

class CCEParticleColor : public CColorElement {
public:
  ~CCEParticleColor() {}
  bool GetValue(int frame, CColor& colorOut) const;
};

#endif // _CCOLORELEMENT
