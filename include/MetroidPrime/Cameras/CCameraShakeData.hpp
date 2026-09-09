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

  SCameraShakePoint(int flags, float attackTime, float sustainTime, float duration,
                    float magnitude);

  static SCameraShakePoint NoMotion();
  void Update(float curTime);
  float GetValue() const;
};
CHECK_SIZEOF(SCameraShakePoint, 0x18)

class CCameraShakerComponent {
public:
  virtual ~CCameraShakerComponent() {}

  CCameraShakerComponent(int flags, const SCameraShakePoint& am, const SCameraShakePoint& fm);

  static CCameraShakerComponent NoMotion();
  void UpdateMotion(float curTime, float duration, float distAtt);
  float GetValue() const { return x38_value; }
  bool IsModulated() const { return (x4_useModulation & 1) != 0; }
  float GetAmplitude() const { return x8_am.GetValue(); }
  float GetSeverity() const { return x20_fm.GetValue(); }

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
  static CCameraShakeData EatOldCameraShakerData(CInputStream& in);
  CCameraShakeData(float duration, float sfxDist, int flags, const CVector3f& sfxPos,
                   const CCameraShakerComponent& shakerX, const CCameraShakerComponent& shakerY,
                   const CCameraShakerComponent& shakerZ);

  void SetId(int id) { xbc_shakerId = id; }
  int GetId() const { return xbc_shakerId; }
  void Update(float dt, CStateManager& mgr);
  float GetMaxAmplitude() const;
  float GetMaxSeverity() const;
  void SetSfxPositionAndDistance(float distance, CVector3f pos);

  static CCameraShakeData SoftHorizShake(float duration, float magnitude);
  static CCameraShakeData SoftBothAxesShake(float duration, float magnitude);
  static CCameraShakeData HardHorizShake(float duration, float magnitude);
  static CCameraShakeData HardVertShake(float duration, float magnitude);
  static CCameraShakeData HardBothAxesShake(float duration, float magnitude);
  static CCameraShakeData HardHorizShakeDistance(CVector3f pos, float duration, float magnitude,
                                                 float distance);
  static CCameraShakeData HardVertShakeDistance(float duration, float magnitude, float distance,
                                                CVector3f pos);

  float GetDuration() const { return x0_duration; }
  float GetCurTime() const { return x4_curTime; }
  CVector3f GetPoint() const;
  bool Done() const { return x4_curTime >= x0_duration; }
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

class CInputStream;
CCameraShakeData LoadCameraShakeData(CInputStream& in);
CCameraShakerComponent LoadNewCameraShakerComponent(CInputStream& in);

#endif // _CCAMERASHAKEDATA
