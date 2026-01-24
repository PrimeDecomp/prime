#include "MetroidPrime/CRipple.hpp"

#include "MetroidPrime/CFluidPlaneManager.hpp"

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Math/CMath.hpp"

#include "rstl/math.hpp"

const float CRipple::kDefaultScale = 0.5f;

CRipple::CRipple(const TUniqueId id, const CVector3f& center, const float intensity)
: x0_id(id)
, x4_time(0.f)
, x8_center(center)
, x14_timeFalloff(2.f)
, x18_distFalloff(12.f)
, x1c_frequency(3.f)
, x20_amplitude(0.25f)
, x24_lookupAmplitude(0.0009803922f)
, x28_ooTimeFalloff(0.f)
, x2c_ooDistFalloff(0.f)
, x30_ooPhase(0.f)
, x34_phase(0.f)
, x38_lookupPhase(0.f)
, x3c_(CFluidPlaneManager::GetFreqTableIndex(intensity)) {
  if (intensity < 0.f || intensity > 1.f) {
    // lmao
  } else {
    static CRandom16 sRippleRandom(0xABBA);
    float intensityScale = (intensity * (sRippleRandom.Float() - .5f));
    intensityScale = .1f * (intensityScale * 2.f) + intensity;

    if (intensityScale < 0.f) {
      intensityScale = 0.f;
    } else if (intensityScale > 1.f) {
      intensityScale = 1.f;
    }

    intensityScale = intensityScale * 2.f;
    x14_timeFalloff = (intensityScale * .5f) + 1.5f;
    x18_distFalloff = (intensityScale * 4.f) + 8.f;
    x1c_frequency = intensityScale + 2.f;
    x20_amplitude = (intensityScale * .15f) + 0.099999994f;
    x24_lookupAmplitude = x20_amplitude / 255.f;
  }

  x28_ooTimeFalloff = 1.f / x14_timeFalloff;
  x2c_ooDistFalloff = 1.f / x18_distFalloff;
  x30_ooPhase = x18_distFalloff / 2.5f;
  x34_phase = 1.f / x30_ooPhase;
  x38_lookupPhase = x34_phase * 256.f;
}
