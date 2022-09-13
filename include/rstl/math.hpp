#ifndef _RSTL_MATH_HPP
#define _RSTL_MATH_HPP

#include "types.h"

namespace rstl {
template < typename T >
static inline const T& max_val(const T& a, const T& b) {
  return a > b ? a : b;
}
template < typename T >
static inline const T& min_val(const T& a, const T& b) {
  return a < b ? a : b;
}
} // namespace rstl

#endif
