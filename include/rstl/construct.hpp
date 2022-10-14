#ifndef _RSTL_CONSTRUCT
#define _RSTL_CONSTRUCT

#include "types.h"

#include "Kyoto/Alloc/CMemory.hpp"

namespace rstl {
template < typename T >
inline void construct(void* dest, const T& src) {
  new (dest) T(src);
}

template < typename T >
inline void destroy(T* in) {
  in->~T();
}

template < typename It >
inline void destroy(It begin, It end) {
  It cur = begin;
  for (; cur != end; ++cur) {
    destroy(&*cur);
  }
}

template < typename It, typename T >
inline void uninitialized_copy(It begin, It end, T* out) {
  It cur = begin;
  for (; cur != end; ++out, ++cur) {
    construct(out, *cur);
  }
}

template < typename S, typename D >
inline void uninitialized_copy_n(S src, int n, D dest) {
  D cur = dest;
  for (int i = 0; i < n; ++cur, ++i, ++src) {
    construct(&*cur, *src);
  }
}

template < typename D, typename S >
inline void uninitialized_fill_n(D dest, int n, const S& value) {
  D cur = dest;
  for (int i = 0; i < n; ++i, ++cur) {
    construct(&*cur, value);
  }
}
} // namespace rstl

#endif // _RSTL_CONSTRUCT
