#ifndef _RSTL_CONSTRUCT_HPP
#define _RSTL_CONSTRUCT_HPP

#include "types.h"

namespace rstl {
template < typename T >
inline void construct(void* dest, const T& src) {
  new(dest) T(src);
}

template < typename T >
inline void destroy(T* in) {
  in->~T();
}

template < typename Iter >
inline void destroy(Iter begin, Iter end) {
  Iter current = begin;
  while (current != end) {
    current.destroy();
    ++current;
  }
}

template < typename Iter, typename T >
inline void uninitialized_copy(Iter begin, Iter end, T* in) {
  Iter current = begin;
  while (current != end) {
    current = *in;
    ++current;
  }
}

template < typename S, typename D >
inline void uninitialized_copy_n(D* dest, S* src, size_t count) {
  for (size_t i = 0; i < count; ++dest, ++i, ++src) {
    construct(dest, *src);
  }
  // destroy(src, src + count); ??
}
} // namespace rstl

#endif
