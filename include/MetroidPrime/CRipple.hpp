#ifndef _CRIPPLE
#define _CRIPPLE

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CVector3f.hpp"

class CRipple {
  TUniqueId x0_id;
  float x4_time;
  CVector3f x8_center;
  float x14_timeFalloff;
  float x18_distFalloff;
  float x1c_frequency;
  float x20_amplitude;
  float x24_lookupAmplitude;
  float x28_ooTimeFalloff;
  float x2c_ooDistFalloff;
  float x30_ooPhase;
  float x34_phase;
  float x38_lookupPhase;
  uint x3c_;

public:
  CRipple(TUniqueId id = kInvalidUniqueId, const CVector3f& center = CVector3f::Zero(),
          float intensity = 0.f);

  TUniqueId GetUniqueId() const { return x0_id; }

  float GetTime() const { return x4_time; }
  void SetTime(float t) { x4_time = t; }

  float GetTimeFalloff() const { return x14_timeFalloff; }
  const CVector3f& GetCenter() const { return x8_center; }

  static float kDefaultScale;
};

#endif // _CRIPPLE
