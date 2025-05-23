#ifndef _CCAMERASHAKEDATA
#define _CCAMERASHAKEDATA

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

struct SCameraShakePoint {
  uint x0_useEnvelope;
  float x4_value;
  float x8_magnitude;
  float xc_attackTime;
  float x10_sustainTime;
  float x14_duration;

  SCameraShakePoint()
  : x0_useEnvelope(false)
  , x8_magnitude(0.f)
  , xc_attackTime(0.f)
  , x10_sustainTime(0.f)
  , x14_duration(0.f) {}

  SCameraShakePoint(bool useEnvelope, float attackTime, float sustainTime, float duration,
                    float magnitude)
  : x0_useEnvelope(useEnvelope)
  , x8_magnitude(magnitude)
  , xc_attackTime(attackTime)
  , x10_sustainTime(sustainTime)
  , x14_duration(duration) {}
};
CHECK_SIZEOF(SCameraShakePoint, 0x18)

class CCameraShakerComponent {
public:
  CCameraShakerComponent() : x4_useModulation(false), x38_value(0.f) {}

  CCameraShakerComponent(bool useModulation, const SCameraShakePoint& am,
                         const SCameraShakePoint& fm)
  : x4_useModulation(useModulation), x8_am(am), x20_fm(fm) {}

  virtual ~CCameraShakerComponent() {}

private:
  uint x4_useModulation;
  SCameraShakePoint x8_am;
  SCameraShakePoint x20_fm;
  float x38_value;
};
CHECK_SIZEOF(CCameraShakerComponent, 0x3c)

class CStateManager;
class CCameraShakeData {
public:
  CCameraShakeData(float duration, float magnitude)
  : x0_duration(duration)
  , xd0_sfxDist(100.f)
  , xc0_flags(0)
  , xc4_sfxPos(CVector3f::Zero())
  , x8_shakerX()
  , x44_shakerY()
  , x80_shakerZ(true, SCameraShakePoint(false, 0.25f * duration, 0.f, 0.75f * duration, magnitude),
                SCameraShakePoint(true, 0.f, 0.f, 0.5f * duration, 2.f)) {}  
  void SetId(int id) { xbc_shakerId = id; }
  int GetId() const { return xbc_shakerId; }
  void Update(float dt, CStateManager& mgr);
  // GeneratePoint__16CCameraShakeDataFfR9CRandom16
  float GetSomething() const;
  float GetSomething2() const;

  // From MP1R
  float GetAttenuatedMagnitude() const;
  float GetMaxAmplitude() const;
  float GetMaxSeverity() const;
  bool IsSingleDirection() const;
  void ResetTime();
  void SetAttenuation(float, CVector3f);
  void SetTranslation(const CVector3f&);

  static CCameraShakeData HardBothAxesShake(float duration, float);
  static CCameraShakeData HardHorizShake(float duration, float);
  static CCameraShakeData HardHorizShakeDistance(float duration, float, float, CVector3f);
  static CCameraShakeData HardVertShake(float duration, float);
  static CCameraShakeData HardVertShakeDistance(float duration, float, float, CVector3f);
  static CCameraShakeData SoftBothAxesShake(float duration, float);
  static CCameraShakeData SoftHorizShake(float duration, float);
  static CCameraShakeData SoftHorizShakeDistance(float duration, float, float, CVector3f);
  static CCameraShakeData SoftVertShake(float duration, float);
  static CCameraShakeData SoftVertShakeDistance(float duration, float, float, CVector3f);
  static CCameraShakeData VerticalOverrideShake(float duration);

  float GetDuration() const { return x0_duration; } // In MP1R, returns either x0 or xec?
  float GetCurTime() const { return x4_curTime; }
  CVector3f GetPoint() const; // { return xc4_sfxPos; }
  bool Done() const { return x4_curTime >= x0_duration; } // Finished in MP1R
  uint GetFlags() const { return xc0_flags; }
  const CVector3f& GetSfxPos() const { return xc4_sfxPos; }

  static CCameraShakeData skSoftRecoil;
  static CCameraShakeData skHardRecoil;

private:
  float x0_duration;
  float x4_curTime;
  CCameraShakerComponent x8_shakerX;
  CCameraShakerComponent x44_shakerY;
  CCameraShakerComponent x80_shakerZ;
  int xbc_shakerId;
  uint xc0_flags;
  CVector3f xc4_sfxPos;
  float xd0_sfxDist;
};
CHECK_SIZEOF(CCameraShakeData, 0xd4)

#endif // _CCAMERASHAKEDATA
