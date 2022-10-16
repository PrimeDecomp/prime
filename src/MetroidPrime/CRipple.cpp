#include "MetroidPrime/CRipple.hpp"

#include "MetroidPrime/CFluidPlane.hpp"

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Math/CMath.hpp"

#include "rstl/math.hpp"

CRipple::CRipple(TUniqueId id, const CVector3f& center, float intensity)
  : x0_id(id)
  , x4_time(0.f)
  , x8_center(center)
  , x14_timeFalloff(2.f)
  , x18_distFalloff(12.f)
  , x1c_frequency(3.f)
  , x20_amplitude(0.25f)
  , x24_lookupAmplitude(0.00098039221f)
  , x28_ooTimeFalloff(0.f)
  , x2c_ooDistFalloff(0.f)
  , x30_ooPhase(0.f)
  , x34_phase(0.f)
  , x38_lookupPhase(0.f)
  , x3c_(sub_8012f098())
{
  if (0.f < intensity && intensity < 1.f) {
    static CRandom16 sRippleRandom(0xABBA);

    float value1 = (intensity * (sRippleRandom.Float() - 0.5f)) * 2.f * 0.1f + intensity;
    float tmp = 2.f * (0.0f < value1 ? (1.0f < value1 ? 1.0f : value1) : 0.0f);

    x14_timeFalloff = 0.5f * tmp + 1.5f;
    x18_distFalloff = 4.f * tmp + 8.f;
    x1c_frequency = 2.f + tmp;
    x20_amplitude = 0.15f * tmp + 0.1f;
    x24_lookupAmplitude = x20_amplitude / 255.f;
  }

  x28_ooTimeFalloff = 1.f / x14_timeFalloff;
  x2c_ooDistFalloff = 1.f / x18_distFalloff;
  x30_ooPhase = x18_distFalloff / 2.5f;
  x34_phase = 1.f / x30_ooPhase;
  x38_lookupPhase = 256.f * x34_phase;
}
