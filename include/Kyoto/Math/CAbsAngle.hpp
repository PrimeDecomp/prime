#ifndef _CABSANGLE
#define _CABSANGLE

#include "types.h"

#include "Kyoto/Math/CMath.hpp"

class CAbsAngle {
public:
  float AsDegrees() const { return x0_angle * (180.f / M_PIF); }
  float AsRadians() const { return x0_angle; }
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
  CAbsAngle& operator*=(float v) {
    x0_angle *= v;
    return *this;
  }
  CAbsAngle& operator/=(float v) {
    x0_angle /= v;
    return *this;
  }

  // __apl__9CAbsAngleFRC9CRelAngle
  // __ami__9CAbsAngleFRC9CRelAngle

  static CAbsAngle FromDegrees(float deg) {
    return CAbsAngle(CMath::ClampRadians(deg * (M_PIF / 180.f)));
  }
  static CAbsAngle FromRadians(float rad) { return CAbsAngle(CMath::ClampRadians(rad)); }

private:
  CAbsAngle(float rad) : x0_angle(rad) {}

  float x0_angle;
};
CHECK_SIZEOF(CAbsAngle, 0x4)

// __mi__FRC9CAbsAngleRC9CAbsAngle

static inline float cosine(const CAbsAngle& angle) { return cos(angle.AsRadians()); }

#endif // _CABSANGLE
