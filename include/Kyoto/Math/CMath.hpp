#ifndef _CMATH
#define _CMATH

#include "types.h"

#include "math.h"
#include "float.h"

#include <Kyoto/Math/CVector3f.hpp>

#define M_PI 3.14159265358979323846
#define M_PIF 3.14159265358979323846f
#define M_2PIF 6.28318530718f

class CMath {
public:
  static inline float FastFmod(float x, float y) {
    int v = static_cast< int >(x * (1.f / y));
    return x - v * y;
  }
  template < typename T >
  static const T& Clamp(const T& min, const T& val, const T& max);
  static float SqrtF(float v);
  static inline float Limit(float v, float h) { if (fabs(v) > h) return h * Sign(v); return v; }
  static inline float Sign(float v) { return FastFSel(v, 1.f, -1.f); }
#ifdef __MWERKS__
  static inline float FastFSel(register float v, register float h, register float l) {
    register float out;
    asm {
      fsel out, v, h, l
    }
    return out;
  }
#else
  static inline float FastFSel(float v, float h, float l) { return v >= 0.f ? h : l; }
#endif
  static inline float AbsF(float v) { return fabs(v); }
  static inline double AbsD(double v) { return fabs(v); }
  static inline int AbsI(int v) { return abs(v); }
  // WrapPi__5CMathFf weak
  // WrapTwoPi__5CMathFf weak
  template < typename T >
  static const T& Min(const T& a, const T& b);
  template < typename T >
  static const T& Max(const T& a, const T& b);
  static float InvSqrtF(float x);
  static float FastArcCosR(float x);
  static float SlowCosineR(float x);
  static float SlowSineR(float x);
  static float SlowTangentR(float x);
  static float FastSinR(float x);
  static float FastCosR(float x);
  static float ClampRadians(float rad) {
    float value = FastFmod(rad, M_2PIF);
    if (value < 0.f) {
      value += M_2PIF;
    }
    return value;
  }
  // ModF__5CMathFff weak
  static float Deg2Rad(float deg) { return Deg2Rev(deg) * M_2PIF; }
  static float Deg2Rev(float deg) { return deg * (1.f / 360.f); }
  static float ArcSineR(float v);
  static float ArcCosineR(float v);
  static float ArcTangentR(float v);
  static float PowF(float x, float y);
  static const float FloorF(float x);
  static float CeilingF(float x);
  static CVector3f GetCatmullRomSplinePoint(const CVector3f& a, const CVector3f& b,
                                            const CVector3f& c, const CVector3f& d, float t);
  static float GetCatmullRomSplinePoint(float a, float b, float c, float d, float t);
  static CVector3f GetBezierPoint(const CVector3f&, const CVector3f&, const CVector3f&,
                                  const CVector3f&, float);
  static CVector3f BaryToWorld(const CVector3f& p0, const CVector3f& p1, const CVector3f& p2,
                               const CVector3f& bary);
  // GetCatmullRomSplinePoint__5CMathFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3ff global
#ifdef __MWERKS__
  static inline float FastSqrtF(register float x) {
    if (x == 0.f) {
      return 0.f;
    }
    return x * __frsqrte(x);
  }
#else
  static inline float FastSqrtF(float x) { return sqrtf(x); }
#endif
  static double SqrtD(double x);
  // IsEpsilon__5CMathFfff global
  // FastMin__5CMathFff weak
  // FastMax__5CMathFff weak
  // PowF__5CMathFff global
  // Rev2Deg__5CMathFf weak
  // GetCatmullRomSplinePoint__5CMathFfffff global
  // SlowTangentR__5CMathFf global
  static float Rad2Deg(float rad) { return rad * (180.f / M_PIF); }
  static float Rad2Rev(float rad) { return rad * (1.f / M_2PIF); }
  // CeilingF__5CMathFf global
  // ArcTangentR__5CMathFf global
  template < typename T >
  static void Swap(T& a, T& b) {
    T tmp = a;
    a = b;
    b = tmp;
  }

  static int FloorPowerOfTwo(int v);
};

template < typename T >
const T& CMath::Clamp(const T& min, const T& val, const T& max) {
  return min > val ? min : max < val ? max : val;
}
#endif // _CMATH
