#include "Kyoto/Particles/CParticleSwoosh.hpp"

#include "Kyoto/Basics/CStopwatch.hpp"
#include "Kyoto/Particles/CParticleGlobals.hpp"
#include "Kyoto/Particles/CSwooshDescription.hpp"

#pragma inline_max_size(250)
uint CParticleSwoosh::mSwooshAliveCount = 0;

CParticleSwoosh::CParticleSwoosh(const TToken< CSwooshDescription > desc, const int leng)
: x1c_desc(desc)
, x28_curFrame(0)
, x2c_PSLT(0)
, x30_curTime(0.0)
, x38_translation(0.f, 0.f, 0.f)
, x44_orientation(CTransform4f::Identity())
, x74_invOrientation(CTransform4f::Identity())
, xa4_globalTranslation(0.f, 0.f, 0.f)
, xb0_globalOrientation(CTransform4f::Identity())
, xe0_globalScale(1.f, 1.f, 1.f)
, xec_scaleXf(CTransform4f::Identity())
, x11c_invScaleXf(CTransform4f::Identity())
, x14c_localScale(1.f, 1.f, 1.f)
, x158_curParticle(0)
, x1ac_particleCount(0)
, x1b0_SPLN(0)
, x1c0_rand(
      CCast::ToInt16(x1c_desc->x45_26_CRND ? CCast::ToInt16(CStopwatch::GetGlobalMicros()) : 99))
, x1c4_(0.f)
, x1c8_(0.f)
, x1d0_24_emitting(true)
, x1d0_26_forceOneUpdate(false)
, x1d0_27_renderGaps(false)
, x1d0_31_constantTex(false)
, x1d1_24_constantUv(false)
, x1e4_tex(nullptr)
, x1e8_uvSpan(1.f)
, x1ec_TSPN(0)
, x1f0_aabbMin(CVector3f::Zero())
, x1fc_aabbMax(CVector3f::Zero())
, x208_maxRadius(0.f)
, x20c_moduColor(0xffffffff) {
  CGlobalRandom _(x1c0_rand);
  mSwooshAliveCount++;

  if (leng > 0) {
    x1b4_LENG = leng;
  } else {
    if (x1c_desc->x10_LENG) {
      x1c_desc->x10_LENG->GetValue(0, x1b4_LENG);
    }
  }
  ++x1b4_LENG;

  if (x1c_desc->x18_SIDE) {
    x1c_desc->x18_SIDE->GetValue(0, x1b8_SIDE);
  }

  x1d0_28_LLRD = x1c_desc->x44_24_LLRD;
  x1d0_29_VLS1 = x1c_desc->x44_26_VLS1;
  x1d0_30_VLS2 = x1c_desc->x44_27_VLS2;

  if (IsLargeEnough()) {
    if (x1c_desc->x0_PSLT) {
      x1c_desc->x0_PSLT->GetValue(0, x2c_PSLT);
    } else {
      x2c_PSLT = 0x7fffff;
    }

    x1d0_25_AALP = x1c_desc->x44_31_AALP;

    if (x1c_desc->x38_SPLN) {
      x1c_desc->x38_SPLN->GetValue(0, x1b0_SPLN);
    }
    if (x1b0_SPLN < 0) {
      x1b0_SPLN = 0;
    }

    x15c_swooshes.clear();
    x15c_swooshes.reserve(x1b4_LENG);
    for (int i = 0; i < x15c_swooshes.capacity(); i++) {
      x15c_swooshes.push_back(SSwooshData());
    }

    SetOrientation(CTransform4f::Identity());

    x16c_p0.clear();
    x16c_p0.reserve(x1b8_SIDE);

    for (int i = 0; i < x16c_p0.capacity(); i++) {
      x16c_p0.push_back(CVector3f::Zero());
    }
    x17c_p1.clear();
    x17c_p1.reserve(x1b8_SIDE);
    for (int i = 0; i < x17c_p1.capacity(); i++) {
      x17c_p1.push_back(CVector3f::Zero());
    }

    x18c_p2.clear();
    x18c_p2.reserve(x1b8_SIDE);
    for (int i = 0; i < x18c_p2.capacity(); i++) {
      x18c_p2.push_back(CVector3f::Zero());
    }
    x19c_p3.clear();
    x19c_p3.reserve(x1b8_SIDE);
    for (int i = 0; i < x19c_p3.capacity(); i++) {
      x19c_p3.push_back(CVector3f::Zero());
    }
  }
}

CParticleSwoosh::~CParticleSwoosh() { --mSwooshAliveCount; }

bool CParticleSwoosh::IsLargeEnough() const { return x1b4_LENG >= 2 && x1b8_SIDE >= 2; }

bool CParticleSwoosh::Update(double dt) {
  if (!IsLargeEnough()) {
    return false;
  }
  OSTime time = OSGetTime();
  CGlobalRandom _(x1c0_rand);
  CParticleGlobals::SetParticleLifetime(x1b4_LENG);
  CParticleGlobals::SetEmitterTime(x28_curFrame);
  CParticleGlobals::UpdateParticleLifetimeTweenValues(0);
  float t = time * (1/60.f);
}