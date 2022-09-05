#ifndef _CCAMERASHAKEDATA_HPP
#define _CCAMERASHAKEDATA_HPP

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

struct SCameraShakePoint {
  bool x0_useEnvelope;
  f32 x4_value;
  f32 x8_magnitude;
  f32 xc_attackTime;
  f32 x10_sustainTime;
  f32 x14_duration;
};
CHECK_SIZEOF(SCameraShakePoint, 0x18)

class CCameraShakerComponent {
public:
  virtual ~CCameraShakerComponent();

private:
  bool x4_useModulation;
  SCameraShakePoint x8_am;
  SCameraShakePoint x20_fm;
  f32 x38_value;
};
CHECK_SIZEOF(CCameraShakerComponent, 0x3c)

class CCameraShakeData {
private:
  f32 x0_duration;
  f32 x4_curTime;
  CCameraShakerComponent x8_shakerX;
  CCameraShakerComponent x44_shakerY;
  CCameraShakerComponent x80_shakerZ;
  uint xbc_shakerId;
  uint xc0_flags;
  CVector3f xc4_sfxPos;
  f32 xd0_sfxDist;
};
CHECK_SIZEOF(CCameraShakeData, 0xd4)

#endif