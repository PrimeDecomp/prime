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

  // Relative

  static float MakeRelativeAngle(float angle) {
    float ret = angle - ((float)(int)(angle * (1.f / (2.f * M_PIF)))) * (2.f * M_PIF);
    if (ret < 0.f)
      ret += 2.f * M_PIF;
    return ret;
  }

  CRelAngle AsRelative() const { return CRelAngle(MakeRelativeAngle(x0_angle)); }

private:
  CRelAngle(float rad) : x0_angle(rad) {}

  float x0_angle;
};
CHECK_SIZEOF(CRelAngle, 0x4)

// __mi__FRC9CRelAngleRC9CRelAngle
// __pl__FRC9CRelAngleRC9CRelAngle
// __dv__FRC9CRelAnglef
// sine__FRC9CRelAngle

#endif // _CRELANGLE
