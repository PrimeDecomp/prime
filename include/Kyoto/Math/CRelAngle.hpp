#ifndef _CRELANGLE
#define _CRELANGLE

#include "types.h"

#include "Kyoto/Math/CMath.hpp"

class CRelAngle {
public:
  float AsDegrees() const { return x0_angle * (180.f / M_PIF); }
  float AsRadians() const { return x0_angle; }
  // ArcCosine__9CRelAngleFf weak

  CRelAngle& operator+=(const CRelAngle& v) {
    x0_angle += v.x0_angle;
    return *this;
  }
  CRelAngle& operator-=(const CRelAngle& v) {
    x0_angle -= v.x0_angle;
    return *this;
  }
  CRelAngle& operator*=(float v) {
    x0_angle *= v;
    return *this;
  }
  CRelAngle& operator/=(float v) {
    x0_angle /= v;
    return *this;
  }

  // __lt__9CRelAngleCFRC9CRelAngle

  static CRelAngle FromDegrees(float deg) { return CRelAngle(deg * (M_PIF / 180.f)); }
  static CRelAngle FromRadians(float rad) { return CRelAngle(rad); }

private:
  CRelAngle(float rad) : x0_angle(rad) {}

  float x0_angle;
};
CHECK_SIZEOF(CRelAngle, 0x4)

// __mi__FRC9CRelAngleRC9CRelAngle
// __pl__FRC9CRelAngleRC9CRelAngle
// __dv__FRC9CRelAnglef
// static inline CRelAngle operator/(const CRelAngle& ang, float f) {
//   return CRelAngle::FromRadians(ang.AsRadians() / f);
// }
static inline float sine(const CRelAngle& angle) { return sin(angle.AsRadians()); }
static inline float cosine(const CRelAngle& angle) { return cos(angle.AsRadians()); }

#endif // _CRELANGLE
