#ifndef _RSTL_CONSTRUCT_HPP
#define _RSTL_CONSTRUCT_HPP

#include "types.h"

namespace rstl {
template < typename T >
inline void construct(void* dest, const T& src) {
  *static_cast< T* >(dest) = src;
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

template < typename T >
inline void uninitialized_copy_n(T* dest, size_t count, T* src) {
  for (size_t i = 0; i < count; ++i) {
    construct(dest, *src);
    destroy(src);
    ++dest;
    ++src;
  }
}
} // namespace rstl

#endif
