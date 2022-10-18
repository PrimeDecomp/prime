#include "Kyoto/Particles/CRealElement.hpp"

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Math/CloseEnough.hpp"
#include "Kyoto/Particles/CParticleGlobals.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

#include "rstl/math.hpp"

CREConstant::CREConstant(float val) : x4_val(val) {}

CREConstant::~CREConstant() {}

bool CREConstant::GetValue(int frame, float& valOut) const override {
  valOut = x4_val;
  return false;
}

CRESineWave::CRESineWave(CRealElement* a, CRealElement* b, CRealElement* c)
: x4_frequency(b), x8_amplitude(c), xc_phase(a) {}

CRESineWave::~CRESineWave() {
  delete x4_frequency;
  delete x8_amplitude;
  delete xc_phase;
}

bool CRESineWave::GetValue(int frame, float& valOut) const {
  float amp, freq, phase;
  x8_amplitude->GetValue(frame, amp);
  x4_frequency->GetValue(frame, freq);
  xc_phase->GetValue(frame, phase);
  valOut = sine(CRelAngle::FromDegrees(frame * freq + phase)) * amp;
  return false;
}

CRETimeScale::CRETimeScale(CRealElement* a) : x4_a(a) {}

CRETimeScale::~CRETimeScale() { delete x4_a; }

bool CRETimeScale::GetValue(int frame, float& valOut) const {
  float a;
  x4_a->GetValue(frame, a);
  valOut = static_cast< float >(frame) * a;
  return false;
}

CREAdd::CREAdd(CRealElement* a, CRealElement* b) : x4_a(a), x8_b(b) {}

CREAdd::~CREAdd() {
  delete x4_a;
  delete x8_b;
}

bool CREAdd::GetValue(int frame, float& valOut) const {
  float a, b;
  x4_a->GetValue(frame, a);
  x8_b->GetValue(frame, b);
  valOut = a + b;
  return false;
}

CREMultiply::CREMultiply(CRealElement* a, CRealElement* b) : x4_a(a), x8_b(b) {}

CREMultiply::~CREMultiply() {
  delete x4_a;
  delete x8_b;
}

bool CREMultiply::GetValue(int frame, float& valOut) const {
  float a, b;
  x4_a->GetValue(frame, a);
  x8_b->GetValue(frame, b);
  valOut = a * b;
  return false;
}

CREDotProduct::CREDotProduct(CVectorElement* a, CVectorElement* b) : x4_a(a), x8_b(b) {}

CREDotProduct::~CREDotProduct() {
  delete x4_a;
  delete x8_b;
}

bool CREDotProduct::GetValue(int frame, float& valOut) const {
  CVector3f a = CVector3f::Zero();
  CVector3f b = CVector3f::Zero();
  x4_a->GetValue(frame, a);
  x8_b->GetValue(frame, b);
  valOut = CVector3f::Dot(a, b);
  return false;
}

CRERandom::CRERandom(CRealElement* min, CRealElement* max) : x4_min(min), x8_max(max) {}

CRERandom::~CRERandom() {
  delete x4_min;
  delete x8_max;
}

bool CRERandom::GetValue(int frame, float& valOut) const {
  float min, max;
  x4_min->GetValue(frame, min);
  x8_max->GetValue(frame, max);
  valOut = (max - min) * CRandom16::GetRandomNumber()->Float() + min;
  return false;
}

CREInitialRandom::CREInitialRandom(CRealElement* min, CRealElement* max)
: x4_min(min), x8_max(max) {}

CREInitialRandom::~CREInitialRandom() {
  delete x4_min;
  delete x8_max;
}

bool CREInitialRandom::GetValue(int frame, float& valOut) const {
  if (frame == 0) {
    float min, max;
    x4_min->GetValue(frame, min);
    x8_max->GetValue(frame, max);
    valOut = (max - min) * CRandom16::GetRandomNumber()->Float() + min;
  }
  return false;
}

CRETimeChain::CRETimeChain(CRealElement* a, CRealElement* b, CIntElement* c)
: x4_a(a), x8_b(b), xc_swFrame(c) {}

CRETimeChain::~CRETimeChain() {
  delete x4_a;
  delete x8_b;
  delete xc_swFrame;
}

bool CRETimeChain::GetValue(int frame, float& valOut) const {
  int v;
  xc_swFrame->GetValue(frame, v);
  if (frame < v) {
    return x4_a->GetValue(frame, valOut);
  } else {
    return x8_b->GetValue(frame - v, valOut);
  }
}

CREClamp::CREClamp(CRealElement* a, CRealElement* b, CRealElement* c)
: x4_min(a), x8_max(b), xc_val(c) {}

CREClamp::~CREClamp() {
  delete x4_min;
  delete x8_max;
  delete xc_val;
}

bool CREClamp::GetValue(int frame, float& valOut) const {
  float a, b;
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

CREPulse::CREPulse(CIntElement* a, CIntElement* b, CRealElement* c, CRealElement* d)
: x4_aDuration(a), x8_bDuration(b), xc_valA(c), x10_valB(d) {}

CREPulse::~CREPulse() {
  delete x4_aDuration;
  delete x8_bDuration;
  delete xc_valA;
  delete x10_valB;
}

bool CREPulse::GetValue(int frame, float& valOut) const {
  int a, b;
  x4_aDuration->GetValue(frame, a);
  x8_bDuration->GetValue(frame, b);
  int cv = a + b + 1;
  if (cv < 0) {
    cv = 1;
  }

  if (b >= 1) {
    // CREPulse is an outlier here, the other
    // IElement classes use > instead of >=.
    if (frame % cv >= a) {
      x10_valB->GetValue(frame, valOut);
    } else {
      xc_valA->GetValue(frame, valOut);
    }
  } else {
    xc_valA->GetValue(frame, valOut);
  }
  return false;
}

CRELifetimePercent::CRELifetimePercent(CRealElement* a) : x4_percentVal(a) {}

CRELifetimePercent::~CRELifetimePercent() { delete x4_percentVal; }

bool CRELifetimePercent::GetValue(int frame, float& valOut) const {
  float a = 0.f;
  x4_percentVal->GetValue(frame, a);
  if (a < 0.f) {
    a = 0.f;
  }
  valOut = (a / 100.f) * CParticleGlobals::GetParticleLifetimeReal();
  return false;
}

CRELifetimeTween::CRELifetimeTween(CRealElement* a, CRealElement* b) : x4_a(a), x8_b(b) {}

CRELifetimeTween::~CRELifetimeTween() {
  delete x4_a;
  delete x8_b;
}

// fake but using it to test
static inline float Lerp(float a, float b, float c) {
  return b * c + a * (1.f - c);
}

bool CRELifetimeTween::GetValue(int frame, float& valOut) const {
  float ltFac = frame / CParticleGlobals::GetParticleLifetimeReal();
  float a, b;
  x4_a->GetValue(frame, a);
  x8_b->GetValue(frame, b);
  valOut = Lerp(a, b, ltFac);
  return false;
}

CREKeyframeEmitter::CREKeyframeEmitter(CInputStream& in)
: x4_percent(in.ReadLong())
, x8_unk1(in.ReadLong())
, xc_loop(in.ReadBool())
, xd_unk2(in.ReadBool())
, x10_loopEnd(in.ReadLong())
, x14_loopStart(in.ReadLong())
, x18_keys(in) {}

CREKeyframeEmitter::~CREKeyframeEmitter() {}

bool CREKeyframeEmitter::GetValue(int frame, float& valOut) const {
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
  }

  int ltPerc = CParticleGlobals::GetParticleLifetimePercentage();
  if (ltPerc == 100) {
    valOut = x18_keys[ltPerc];
  } else {
    float ltPercRem = CParticleGlobals::GetParticleLifetimePercentageRemainder();
    float key1 = x18_keys[ltPerc];
    float key2 = x18_keys[ltPerc + 1];
    valOut = (1.f - ltPercRem) * key1 + ltPercRem * key2;
    // valOut = Lerp(key1, key2, ltPercRem);
  }
  return false;
}

bool CREParticleAccessParameter1::GetValue(int, float& valOut) const {
  valOut = CParticleGlobals::GetParticleAccessParameters()[0];
  return false;
}

bool CREParticleAccessParameter2::GetValue(int, float& valOut) const {
  valOut = CParticleGlobals::GetParticleAccessParameters()[1];
  return false;
}

bool CREParticleAccessParameter3::GetValue(int, float& valOut) const {
  valOut = CParticleGlobals::GetParticleAccessParameters()[2];
  return false;
}

bool CREParticleAccessParameter4::GetValue(int, float& valOut) const {
  valOut = CParticleGlobals::GetParticleAccessParameters()[3];
  return false;
}

bool CREParticleAccessParameter5::GetValue(int, float& valOut) const {
  valOut = CParticleGlobals::GetParticleAccessParameters()[4];
  return false;
}

bool CREParticleAccessParameter6::GetValue(int, float& valOut) const {
  valOut = CParticleGlobals::GetParticleAccessParameters()[5];
  return false;
}

bool CREParticleAccessParameter7::GetValue(int, float& valOut) const {
  valOut = CParticleGlobals::GetParticleAccessParameters()[6];
  return false;
}

bool CREParticleAccessParameter8::GetValue(int, float& valOut) const {
  valOut = CParticleGlobals::GetParticleAccessParameters()[7];
  return false;
}

bool CREParticleSizeOrLineLength::GetValue(int, float& valOut) const {
  valOut = CParticleGlobals::GetCurrentParticle()->x2c_lineLengthOrSize;
  return false;
}

bool CREParticleRotationOrLineWidth::GetValue(int, float& valOut) const {
  valOut = CParticleGlobals::GetCurrentParticle()->x30_lineWidthOrRota;
  return false;
}

CREVectorXToReal::CREVectorXToReal(CVectorElement* a) : x4_a(a) {}

CREVectorXToReal::~CREVectorXToReal() { delete x4_a; }

bool CREVectorXToReal::GetValue(int frame, float& valOut) const {
  CVector3f a = CVector3f::Zero();
  x4_a->GetValue(frame, a);
  valOut = a[0];
  return false;
}

CREVectorYToReal::CREVectorYToReal(CVectorElement* a) : x4_a(a) {}

CREVectorYToReal::~CREVectorYToReal() { delete x4_a; }

bool CREVectorYToReal::GetValue(int frame, float& valOut) const {
  CVector3f a = CVector3f::Zero();
  x4_a->GetValue(frame, a);
  valOut = a[1];
  return false;
}

CREVectorZToReal::CREVectorZToReal(CVectorElement* a) : x4_a(a) {}

CREVectorZToReal::~CREVectorZToReal() { delete x4_a; }

bool CREVectorZToReal::GetValue(int frame, float& valOut) const {
  CVector3f a = CVector3f::Zero();
  x4_a->GetValue(frame, a);
  valOut = a[2];
  return false;
}

CREVectorMagnitude::CREVectorMagnitude(CVectorElement* a) : x4_a(a) {}

CREVectorMagnitude::~CREVectorMagnitude() { delete x4_a; }

bool CREVectorMagnitude::GetValue(int frame, float& valOut) const {
  CVector3f a = CVector3f::Zero();
  x4_a->GetValue(frame, a);
  valOut = a.Magnitude();
  return false;
}

CREInitialSwitch::CREInitialSwitch(CRealElement* a, CRealElement* b) : x4_a(a), x8_b(b) {}

CREInitialSwitch::~CREInitialSwitch() {
  delete x4_a;
  delete x8_b;
}

bool CREInitialSwitch::GetValue(int frame, float& valOut) const {
  if (frame == 0) {
    x4_a->GetValue(0, valOut);
  } else {
    x8_b->GetValue(frame - 1, valOut);
  }
  return false;
}

CRECompareLessThan::CRECompareLessThan(CRealElement* a, CRealElement* b, CRealElement* c,
                                       CRealElement* d)
: x4_a(a), x8_b(b), xc_c(c), x10_d(d) {}

CRECompareLessThan::~CRECompareLessThan() {
  delete x4_a;
  delete x8_b;
  delete xc_c;
  delete x10_d;
}

bool CRECompareLessThan::GetValue(int frame, float& valOut) const {
  float a, b;
  x4_a->GetValue(frame, a);
  x8_b->GetValue(frame, b);
  if (a < b) {
    xc_c->GetValue(frame, valOut);
  } else {
    x10_d->GetValue(frame, valOut);
  }
  return false;
}

CRECompareEqual::CRECompareEqual(CRealElement* a, CRealElement* b, CRealElement* c, CRealElement* d)
: x4_a(a), x8_b(b), xc_c(c), x10_d(d) {}

CRECompareEqual::~CRECompareEqual() {
  delete x4_a;
  delete x8_b;
  delete xc_c;
  delete x10_d;
}

bool CRECompareEqual::GetValue(int frame, float& valOut) const {
  float a, b;
  x4_a->GetValue(frame, a);
  x8_b->GetValue(frame, b);
  if (close_enough(a, b)) {
    xc_c->GetValue(frame, valOut);
  } else {
    x10_d->GetValue(frame, valOut);
  }
  return false;
}

CREConstantRange::CREConstantRange(CRealElement* a, CRealElement* b, CRealElement* c,
                                   CRealElement* d, CRealElement* e)
: x4_val(a), x8_min(b), xc_max(c), x10_inRange(d), x14_outOfRange(e) {}

CREConstantRange::~CREConstantRange() {
  delete x4_val;
  delete x8_min;
  delete xc_max;
  delete x10_inRange;
  delete x14_outOfRange;
}

bool CREConstantRange::GetValue(int frame, float& valOut) const {
  float val, min, max;
  x4_val->GetValue(frame, val);
  x8_min->GetValue(frame, min);
  xc_max->GetValue(frame, max);
  if (val > min && val < max) {
    x10_inRange->GetValue(frame, valOut);
  } else {
    x14_outOfRange->GetValue(frame, valOut);
  }
  return false;
}

CREExternalVar::CREExternalVar(CIntElement* a) : x4_a(a) {}

CREExternalVar::~CREExternalVar() { delete x4_a; }

bool CREExternalVar::GetValue(int frame, float& valOut) const {
  int a = 0;
  x4_a->GetValue(frame, a);
  a = rstl::max_val(0, a);
  a %= 16;
  valOut = CParticleGlobals::GetCurrentParticleSystem()->x4_system->GetExternalVar(a);
  return false;
}

CRESubtract::CRESubtract(CRealElement* a, CRealElement* b) : x4_a(a), x8_b(b) {}

CRESubtract::~CRESubtract() {
  delete x4_a;
  delete x8_b;
}

bool CRESubtract::GetValue(int frame, float& valOut) const {
  float a = 0.f, b = 0.f;
  x4_a->GetValue(frame, a);
  x8_b->GetValue(frame, b);
  valOut = a - b;
  return false;
}

CREGetComponentRed::CREGetComponentRed(CColorElement* a) : x4_a(a) {}

CREGetComponentRed::~CREGetComponentRed() { delete x4_a; }

bool CREGetComponentRed::GetValue(int frame, float& valOut) const {
  CColor color = CColor::Black();
  x4_a->GetValue(frame, color);
  valOut = color.GetRed();
  return false;
}

CREGetComponentGreen::CREGetComponentGreen(CColorElement* a) : x4_a(a) {}

CREGetComponentGreen::~CREGetComponentGreen() { delete x4_a; }

bool CREGetComponentGreen::GetValue(int frame, float& valOut) const {
  CColor color = CColor::Black();
  x4_a->GetValue(frame, color);
  valOut = color.GetGreen();
  return false;
}

CREGetComponentBlue::CREGetComponentBlue(CColorElement* a) : x4_a(a) {}

CREGetComponentBlue::~CREGetComponentBlue() { delete x4_a; }

bool CREGetComponentBlue::GetValue(int frame, float& valOut) const {
  CColor color = CColor::Black();
  x4_a->GetValue(frame, color);
  valOut = color.GetBlue();
  return false;
}

CREGetComponentAlpha::CREGetComponentAlpha(CColorElement* a) : x4_a(a) {}

CREGetComponentAlpha::~CREGetComponentAlpha() { delete x4_a; }

bool CREGetComponentAlpha::GetValue(int frame, float& valOut) const {
  CColor color = CColor::Black();
  x4_a->GetValue(frame, color);
  valOut = color.GetAlpha();
  return false;
}

CREIntTimesReal::CREIntTimesReal(CIntElement* a, CRealElement* b) : x4_a(a), x8_b(b) {}

CREIntTimesReal::~CREIntTimesReal() {
  delete x4_a;
  delete x8_b;
}

bool CREIntTimesReal::GetValue(int frame, float& valOut) const {
  int a = 0;
  float b = 0.f;
  x8_b->GetValue(frame, b);
  x4_a->GetValue(frame, a);
  valOut = b * static_cast< float >(a);
  return false;
}
