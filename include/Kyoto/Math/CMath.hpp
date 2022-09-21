#ifndef _CMATH_HPP
#define _CMATH_HPP

#include "types.h"

#define M_PIF 3.14159265358979323846f

class CMath {
public:
  static f32 FastCosR(f32 v);
  static f32 FastSinR(f32 v);
  static inline f32 FastFmod(f32 x, f32 y) {
    int v = static_cast< int >(x * (1.f / y));
    return x - v * y;
  }
  template < typename T >
  static const T& Clamp(const T& min, const T& val, const T& max);
  // ClampRadians__5CMathFf
  static f32 SqrtF(f32 v);
};

#endif
