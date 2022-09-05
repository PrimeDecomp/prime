#ifndef _CMATH_HPP
#define _CMATH_HPP

#include "types.h"

class CMath {
public:
  static f32 FastCosR(f32 v);
  static f32 FastSinR(f32 v);
  static inline f32 FastFmod(f32 x, f32 y) {
    int v = static_cast<int>(x * (1.f / y));
    return x - v * y;
  }
};

#endif