#include "Kyoto/Particles/CIntElement.hpp"

#include "Kyoto/Basics/CCast.hpp"
#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Particles/CParticleGlobals.hpp"
#include "Kyoto/Particles/CElementGen.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

#include "rstl/math.hpp"

CIEConstant::CIEConstant(int val) : x4_val(val) {}

CIEConstant::~CIEConstant() {}

bool CIEConstant::GetValue(int frame, int& valOut) const {
  valOut = x4_val;
  return false;
}

CIEDeath::CIEDeath(CIntElement* a, CIntElement* b) : x4_a(a), x8_b(b) {}

CIEDeath::~CIEDeath() {
  delete x4_a;
  delete x8_b;
}

bool CIEDeath::GetValue(int frame, int& valOut) const {
  int b;
  x4_a->GetValue(frame, valOut);
  x8_b->GetValue(frame, b);
  return frame >= b ? TRUE : FALSE;
}

CIEAdd::CIEAdd(CIntElement* a, CIntElement* b) : x4_a(a), x8_b(b) {}

CIEAdd::~CIEAdd() {
  delete x4_a;
  delete x8_b;
}

bool CIEAdd::GetValue(int frame, int& valOut) const {
  int a, b;
  x4_a->GetValue(frame, a);
  x8_b->GetValue(frame, b);
  valOut = a + b;
  return false;
}

CIEMultiply::CIEMultiply(CIntElement* a, CIntElement* b) : x4_a(a), x8_b(b) {}

CIEMultiply::~CIEMultiply() {
  delete x4_a;
  delete x8_b;
}

bool CIEMultiply::GetValue(int frame, int& valOut) const {
  int a, b;
  x4_a->GetValue(frame, a);
  x8_b->GetValue(frame, b);
  valOut = a * b;
  return false;
}

CIEModulo::CIEModulo(CIntElement* a, CIntElement* b) : x4_a(a), x8_b(b) {}

CIEModulo::~CIEModulo() {
  delete x4_a;
  delete x8_b;
}

bool CIEModulo::GetValue(int frame, int& valOut) const {
  int a, b;
  x4_a->GetValue(frame, a);
  x8_b->GetValue(frame, b);
  if (b != 0) {
    valOut = a % b;
  } else {
    valOut = a;
  }
  return false;
}

CIERandom::CIERandom(CIntElement* a, CIntElement* b) : x4_a(a), x8_b(b) {}

CIERandom::~CIERandom() {
  delete x4_a;
  delete x8_b;
}

bool CIERandom::GetValue(int frame, int& valOut) const {
  int a, b;
  x4_a->GetValue(frame, a);
  x8_b->GetValue(frame, b);
  if (a > 0) {
    valOut = CRandom16::GetRandomNumber()->Range(a, b);
  } else {
    valOut = CRandom16::GetRandomNumber()->Next();
  }
  return false;
}

CIESampleAndHold::CIESampleAndHold(CIntElement* a, CIntElement* b, CIntElement* c)
: x4_sampleSource(a), x8_nextSampleFrame(0), xc_waitFramesMin(b), x10_waitFramesMax(c) {}

CIESampleAndHold::~CIESampleAndHold() {
  delete x4_sampleSource;
  delete xc_waitFramesMin;
  delete x10_waitFramesMax;
}

bool CIESampleAndHold::GetValue(int frame, int& valOut) const {
  bool ret;
  if (x8_nextSampleFrame < frame) {
    int b, c;
    xc_waitFramesMin->GetValue(frame, b);
    x10_waitFramesMax->GetValue(frame, c);
    x8_nextSampleFrame = CRandom16::GetRandomNumber()->Range(b, c) + frame;
    ret = x4_sampleSource->GetValue(frame, valOut);
    x14_holdVal = valOut;
  } else {
    valOut = x14_holdVal;
    ret = false;
  }
  return ret;
}

CIEImpulse::CIEImpulse(CIntElement* a) : x4_a(a) {}

CIEImpulse::~CIEImpulse() { delete x4_a; }

bool CIEImpulse::GetValue(int frame, int& valOut) const {
  if (frame == 0) {
    x4_a->GetValue(frame, valOut);
  } else {
    valOut = 0;
  }
  return false;
}

CIETimescale::CIETimescale(CRealElement* a) : x4_a(a) {}

CIETimescale::~CIETimescale() { delete x4_a; }

bool CIETimescale::GetValue(int frame, int& valOut) const {
  float a;
  x4_a->GetValue(frame, a);
  valOut = static_cast< float >(frame) * a;
  return false;
}

CIEInitialRandom::CIEInitialRandom(CIntElement* a, CIntElement* b) : x4_a(a), x8_b(b) {}

CIEInitialRandom::~CIEInitialRandom() {
  delete x4_a;
  delete x8_b;
}

bool CIEInitialRandom::GetValue(int frame, int& valOut) const {
  if (frame == 0) {
    int a, b;
    x4_a->GetValue(frame, a);
    x8_b->GetValue(frame, b);
    valOut = CRandom16::GetRandomNumber()->Range(a, b);
  }
  return false;
}

CIETimeChain::CIETimeChain(CIntElement* a, CIntElement* b, CIntElement* c)
: x4_a(a), x8_b(b), xc_swFrame(c) {}

CIETimeChain::~CIETimeChain() {
  delete x4_a;
  delete x8_b;
  delete xc_swFrame;
}

bool CIETimeChain::GetValue(int frame, int& valOut) const {
  int v;
  xc_swFrame->GetValue(frame, v);
  if (frame < v) {
    return x4_a->GetValue(frame, valOut);
  } else {
    return x8_b->GetValue(frame - v, valOut);
  }
}

CIEClamp::CIEClamp(CIntElement* a, CIntElement* b, CIntElement* c)
: x4_min(a), x8_max(b), xc_val(c) {}

CIEClamp::~CIEClamp() {
  delete x4_min;
  delete x8_max;
  delete xc_val;
}

bool CIEClamp::GetValue(int frame, int& valOut) const {
  int a, b;
  x4_min->GetValue(frame, a);
  x8_max->GetValue(frame, b);
  xc_val->GetValue(frame, valOut);
  if (valOut > b) {
    valOut = b;
  }
  if (valOut < a) {
    valOut = a;
  }
  return false;
}

CIEPulse::CIEPulse(CIntElement* a, CIntElement* b, CIntElement* c, CIntElement* d)
: x4_aDuration(a), x8_bDuration(b), xc_aVal(c), x10_bVal(d) {}

CIEPulse::~CIEPulse() {
  delete x4_aDuration;
  delete x8_bDuration;
  delete xc_aVal;
  delete x10_bVal;
}

bool CIEPulse::GetValue(int frame, int& valOut) const {
  int a, b;
  x4_aDuration->GetValue(frame, a);
  x8_bDuration->GetValue(frame, b);
  int cv = a + b + 1;
  if (cv < 0) {
    cv = 1;
  }

  if (b >= 1) {
    if (frame % cv > a) {
      x10_bVal->GetValue(frame, valOut);
    } else {
      xc_aVal->GetValue(frame, valOut);
    }
  } else {
    xc_aVal->GetValue(frame, valOut);
  }
  return false;
}

CIELifetimePercent::CIELifetimePercent(CIntElement* a) : x4_percentVal(a) {}

CIELifetimePercent::~CIELifetimePercent() { delete x4_percentVal; }

bool CIELifetimePercent::GetValue(int frame, int& valOut) const {
  int a = 0;
  x4_percentVal->GetValue(frame, a);
  if (a < 0) {
    a = 0;
  }
  valOut = (a / 100.0f) * CParticleGlobals::GetParticleLifetimeReal() + 0.5f;
  return false;
}

CIEKeyframeEmitter::CIEKeyframeEmitter(CInputStream& in)
: x4_percent(in.ReadLong())
, x8_unk1(in.ReadLong())
, xc_loop(in.ReadBool())
, xd_unk2(in.ReadBool())
, x10_loopEnd(in.ReadLong())
, x14_loopStart(in.ReadLong())
, x18_keys(in) {}

CIEKeyframeEmitter::~CIEKeyframeEmitter() {}

bool CIEKeyframeEmitter::GetValue(int frame, int& valOut) const {
  if (x4_percent == 0) {
    int emitterTime = CParticleGlobals::GetEmitterTime();
    if (xc_loop) {
      if (emitterTime >= x10_loopEnd) {
        emitterTime -= x14_loopStart;
        emitterTime = emitterTime % (x10_loopEnd - x14_loopStart);
        emitterTime += x14_loopStart;
      }
      valOut = x18_keys[emitterTime];
    } else {
      emitterTime = rstl::min_val(emitterTime, x10_loopEnd - 1);
      valOut = x18_keys[emitterTime];
    }
    return false;
  } else {
    int ltPerc = CParticleGlobals::GetParticleLifetimePercentage();
    if (ltPerc == 100) {
      valOut = x18_keys[ltPerc];
    } else {
      float ltPercRem = CParticleGlobals::GetParticleLifetimePercentageRemainder();
      float lerp = (1.0f - ltPercRem) * x18_keys[ltPerc] + ltPercRem * x18_keys[ltPerc + 1];
      valOut = CCast::ToInt32(lerp);
    }
    return false;
  }
}

CIESubtract::CIESubtract(CIntElement* a, CIntElement* b) : x4_a(a), x8_b(b) {}

CIESubtract::~CIESubtract() {
  delete x4_a;
  delete x8_b;
}

bool CIESubtract::GetValue(int frame, int& valOut) const {
  int a, b;
  x4_a->GetValue(frame, a);
  x8_b->GetValue(frame, b);
  valOut = a - b;
  return false;
}

CIERealToInt::CIERealToInt(CRealElement* a, CRealElement* b) : x4_a(a), x8_b(b) {}

CIERealToInt::~CIERealToInt() {
  delete x4_a;
  delete x8_b;
}

bool CIERealToInt::GetValue(int frame, int& valOut) const {
  float a = 0.0f;
  float b = 1.0f;
  x8_b->GetValue(frame, b);
  x4_a->GetValue(frame, a);
  valOut = CCast::ToInt32(a * b);
  return false;
}

bool CIEGetCumulativeParticleCount::GetValue(int frame, int& valOut) const {
  valOut = CParticleGlobals::GetCurrentParticleSystem()->x4_system->GetCumulativeParticleCount();
  return false;
}

bool CIEGetActiveParticleCount::GetValue(int frame, int& valOut) const {
  valOut = CParticleGlobals::GetCurrentParticleSystem()->x4_system->GetParticleCount();
  return false;
}

bool CIEGetEmitterTime::GetValue(int frame, int& valOut) const {
  valOut = CParticleGlobals::GetCurrentParticleSystem()->x4_system->GetEmitterTime();
  return false;
}

CIEGetEmitterTime::~CIEGetEmitterTime() {}
