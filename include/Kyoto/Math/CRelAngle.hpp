#ifndef _CRELANGLE_HPP
#define _CRELANGLE_HPP

#include "types.h"

#include "Kyoto/Math/CMath.hpp"

class CRelAngle {
public:
  f32 AsDegrees() const { return x0_angle * (180.f / M_PIF); }
  f32 AsRadians() const { return x0_angle; }
  // ArcCosine__9CRelAngleFf weak

  CRelAngle& operator+=(const CRelAngle& v) {
    x0_angle += v.x0_angle;
    return *this;
  }
  CRelAngle& operator-=(const CRelAngle& v) {
    x0_angle -= v.x0_angle;
    return *this;
  }
  CRelAngle& operator*=(f32 v) {
    x0_angle *= v;
    return *this;
  }
  CRelAngle& operator/=(f32 v) {
    x0_angle /= v;
    return *this;
  }

  // __lt__9CRelAngleCFRC9CRelAngle

  static CRelAngle FromDegrees(f32 deg) { return CRelAngle(deg * (M_PIF / 180.f)); }
  static CRelAngle FromRadians(f32 rad) { return CRelAngle(rad); }

private:
  CRelAngle(f32 rad) : x0_angle(rad) {}

  float x0_angle;
};
CHECK_SIZEOF(CRelAngle, 0x4)

// __mi__FRC9CRelAngleRC9CRelAngle
// __pl__FRC9CRelAngleRC9CRelAngle
// __dv__FRC9CRelAnglef
// sine__FRC9CRelAngle

#endif
