#ifndef _CMATH
#define _CMATH

#include "types.h"

#include "math.h"

#define M_PIF 3.14159265358979323846f
#define M_2PIF 6.28318530718f

class CMath {
public:
  static float FastCosR(float v);
  static float FastSinR(float v);
  static float FastArcCosR(float v);
  static inline float FastFmod(float x, float y) {
    int v = static_cast< int >(x * (1.f / y));
    return x - v * y;
  }
  template < typename T >
  static const T& Clamp(const T& min, const T& val, const T& max); // TODO: weak
  static float SqrtF(float v);
  static inline float Limit(float v, float h) { return fabs(v) > h ? h * Sign(v) : v; }
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
  static inline float FastFSel(float v, float h, float l) {
    return v >= 0.f ? h : l;
  }
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
  // InvSqrtF__5CMathFf global
  // FastArcCosR__5CMathFf global
  // SlowCosineR__5CMathFf global
  // SlowSineR__5CMathFf global
  // FastCosR__5CMathFf global
  // GetBezierPoint__5CMathFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3ff global
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
  static float ArcCosineR(float v);
  // FloorF__5CMathFf global
  // BaryToWorld__5CMathFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3f global
  // GetCatmullRomSplinePoint__5CMathFRC9CVector3fRC9CVector3fRC9CVector3fRC9CVector3ff global
  // FastSqrtF__5CMathFf weak
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
  // Swap<f>__5CMathFRfRf weak
};

#endif // _CMATH
