#ifndef _RSTL_CONSTRUCT_HPP
#define _RSTL_CONSTRUCT_HPP

#include "types.h"

namespace rstl {
template < typename T >
inline void construct(void* dest, const T& src) {
  new (dest) T(src);
}

template < typename T >
inline void destroy(T* in) {
  in->~T();
}
// template < typename T >
// inline void destroy(const T* in) {}

template < typename Iter >
inline void destroy(Iter begin, Iter end) {
  Iter current = begin;
  while (current != end) {
    current.destroy();
    ++current;
  }
}
template < typename S >
inline void destroy(S* begin, S* end) {
  S* current = begin;
  while (current != end) {
    destroy(current);
    ++current;
  }
}

template < typename Iter, typename T >
inline void uninitialized_copy(Iter begin, Iter end, T* out) {
  Iter current = begin;
  while (current != end) {
    construct(out, *current);
    current.destroy();
    ++out;
    ++current;
  }
}

template < typename S, typename D >
inline void uninitialized_copy(D* out, S* begin, S* end) {
  while (begin != end) {
    construct(out, *begin);
    ++out;
    ++begin;
  }
  // rstl::destroy(begin, end);
}

// FIXME this is a hack around regalloc
// need to figure out the proper types/positions for all of these funcs
template < typename S, typename D >
inline void uninitialized_copy_2(S* begin, D* out, S* end) {
  while (begin != end) {
    construct(out, *begin);
    ++out;
    ++begin;
  }
}

template < typename S, typename D >
inline void uninitialized_copy_n(D* dest, S* src, size_t count) {
  for (size_t i = 0; i < count; ++dest, ++i, ++src) {
    construct(dest, *src);
  }
  // destroy(src, src + count); ??
}

template < typename D, typename S >
inline void uninitialized_fill_n(D dest, int count, const S& value) {
  for (int i = 0; i < count; ++dest, ++i) {
    construct(dest, value);
  }
}
} // namespace rstl

#endif
