#ifndef _RSTL_RESERVED_VECTOR_HPP
#define _RSTL_RESERVED_VECTOR_HPP

#include "types.h"

#include "construct.hpp"
#include "pointer_iterator.hpp"

namespace rstl {
template < typename T, size_t N >
class reserved_vector {
  size_t x0_count;
  T x4_items[N];

public:
  typedef pointer_iterator< T, reserved_vector< T, N >, void > iterator;
  typedef const_pointer_iterator< T, reserved_vector< T, N >, void > const_iterator;

  inline iterator begin() { return iterator(x4_items); }
  inline const_iterator begin() const { return const_iterator(x4_items); }
  inline iterator end() { return iterator(x4_items + x0_count); }
  inline const_iterator end() const { return const_iterator(x4_items + x0_count); }

  ~reserved_vector() {
    for (u32 i = x0_count; i > 0; --i) {
      rstl::destroy(&x4_items[i]);
    }
  }

  void push_back(const T& in) {
    if (x0_count < N) {
      iterator out = begin() + x0_count;
      out = in;
      ++x0_count;
    }
  }

  inline T* data() { return x4_items; }
  inline const T* data() const { return x4_items; }
  inline size_t size() const { return x0_count; }
  inline size_t capacity() const { return N; }
  inline T& front() { return x4_items[0]; }
  inline const T& front() const { return x4_items[0]; }
  inline T& back() { return x4_items[x0_count - 1]; }
  inline const T& back() const { return x4_items[x0_count - 1]; }
  inline T& operator[](size_t idx) { return data()[idx]; }
  inline const T& operator[](size_t idx) const { return data()[idx]; }
};
} // namespace rstl

#endif
