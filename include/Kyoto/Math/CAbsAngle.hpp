#ifndef _CABSANGLE_HPP
#define _CABSANGLE_HPP

#include "types.h"

#include "Kyoto/Math/CMath.hpp"

class CAbsAngle {
public:
  f32 AsDegrees() const { return x0_angle * (180.f / M_PIF); }
  f32 AsRadians() const { return x0_angle; }
  // ArcCosine__9CAbsAngleFf weak
  // -> calls ArcCosineR__5CMathFf

  CAbsAngle& operator+=(const CAbsAngle& v) {
    x0_angle += v.x0_angle;
    return *this;
  }
  CAbsAngle& operator-=(const CAbsAngle& v) {
    x0_angle -= v.x0_angle;
    return *this;
  }
  CAbsAngle& operator*=(f32 v) {
    x0_angle *= v;
    return *this;
  }
  CAbsAngle& operator/=(f32 v) {
    x0_angle /= v;
    return *this;
  }

  // __apl__9CAbsAngleFRC9CRelAngle
  // __ami__9CAbsAngleFRC9CRelAngle

  static CAbsAngle FromDegrees(f32 deg) {
    return CAbsAngle(CMath::ClampRadians(deg * (M_PIF / 180.f)));
  }
  static CAbsAngle FromRadians(f32 rad) { return CAbsAngle(CMath::ClampRadians(rad)); }

private:
  CAbsAngle(f32 rad) : x0_angle(rad) {}

  float x0_angle;
};
CHECK_SIZEOF(CAbsAngle, 0x4)

// __mi__FRC9CAbsAngleRC9CAbsAngle

static inline f32 cosine(const CAbsAngle& angle) { return cos(angle.AsRadians()); }

#endif
