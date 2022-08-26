/* @(#)w_pow.c 1.2 95/01/04 */
/*
 * ====================================================
 * Copyright (C) 1993 by Sun Microsystems, Inc. All rights reserved.
 *
 * Developed at SunPro, a Sun Microsystems, Inc. business.
 * Permission to use, copy, modify, and distribute this
 * software is freely granted, provided that this notice
 * is preserved.
 * ====================================================
 */

/*
 * wrapper pow(x,y) return x**y
 */

#include "fdlibm.h"

#ifdef __STDC__
double pow(double x, double y) /* wrapper pow */
#else
double pow(x, y) /* wrapper pow */
double x, y;
#endif
{
#ifdef _IEEE_LIBM
  return __ieee754_pow(x, y);
#else
  double z;
  z = __ieee754_pow(x, y);
  if (_LIB_VERSION == _IEEE_ || isnan(y))
    return z;
  if (isnan(x)) {
    if (y == 0.0)
      return __kernel_standard(x, y, 42); /* pow(NaN,0.0) */
    else
      return z;
  }
  if (x == 0.0) {
    if (y == 0.0)
      return __kernel_standard(x, y, 20); /* pow(0.0,0.0) */
    if (isfinite(y) && y < 0.0)
      return __kernel_standard(x, y, 23); /* pow(0.0,negative) */
    return z;
  }
  if (!isfinite(z)) {
    if (isfinite(x) && isfinite(y)) {
      if (isnan(z))
        return __kernel_standard(x, y, 24); /* pow neg**non-int */
      else
        return __kernel_standard(x, y, 21); /* pow overflow */
    }
  }
  if (z == 0.0 && isfinite(x) && isfinite(y))
    return __kernel_standard(x, y, 22); /* pow underflow */
  return z;
#endif
}
