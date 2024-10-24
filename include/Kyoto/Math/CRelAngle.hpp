#ifndef _CRELANGLE
#define _CRELANGLE

#include "types.h"

#include "Kyoto/Math/CMath.hpp"

class CRelAngle {
public:
  CRelAngle(float rad) : x0_angle(rad) {}
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

  float x0_angle;
};
CHECK_SIZEOF(CRelAngle, 0x4)

inline CRelAngle operator-(const CRelAngle& a, const CRelAngle& b) {
  CRelAngle out(a);
  out -= b;
  return out;
}
inline CRelAngle operator+(const CRelAngle& a, const CRelAngle& b) {
  CRelAngle out(a);
  out += b;
  return out;
}
inline CRelAngle operator/(const CRelAngle& a, float b) {
  CRelAngle out(a);
  out /= b;
  return out;
}
inline float sine(const CRelAngle& angle) { return sin(angle.AsRadians()); }
inline float cosine(const CRelAngle& angle) { return cos(angle.AsRadians()); }

#endif // _CRELANGLE
