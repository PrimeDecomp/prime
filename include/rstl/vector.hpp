#ifndef _RSTL_VECTOR_HPP
#define _RSTL_VECTOR_HPP

#include "types.h"

#include "pointer_iterator.hpp"
#include "rmemory_allocator.hpp"

namespace rstl {
template < typename T, typename Alloc = rmemory_allocator >
class vector {
  Alloc x0_allocator;
  size_t x4_count;
  size_t x8_capacity;
  T* xc_items;

public:
  typedef pointer_iterator< T, vector< T, Alloc >, Alloc > iterator;
  typedef const_pointer_iterator< T, vector< T, Alloc >, Alloc > const_iterator;

  inline iterator begin() { return iterator(xc_items); }
  inline const_iterator begin() const { return const_iterator(xc_items); }
  inline iterator end() { return iterator(xc_items + x4_count); }
  inline const_iterator end() const { return const_iterator(xc_items + x4_count); }
  inline vector() : x4_count(0), x8_capacity(0), xc_items(NULL) {}
  inline vector(size_t count) : x4_count(0), x8_capacity(0), xc_items(0) { reserve(count); }
  vector(const vector& other) {
    x4_count = other.x4_count;
    x8_capacity = other.x8_capacity;
    if (x4_count == 0 && x8_capacity == 0) {
      xc_items = NULL;
    } else {
      if (x8_capacity == 0) {
        xc_items = NULL;
      } else {
        Alloc::allocate(xc_items, x8_capacity);
      }
      // what's going on here?
      iterator iter;
      const_iterator otherIter;
      otherIter = other.begin();
      iter = begin();
      for (size_t i = 0; i < x4_count; ++i) {
        iter = *otherIter;
        ++iter;
        ++otherIter;
      }
    }
  }
  ~vector() {
    rstl::destroy(begin(), end());
    Alloc::deallocate(xc_items);
  }

  void reserve(size_t size); /* {
     if (x8_capacity >= size) return;
     T* newData;
     Alloc::allocate(newData, size);
     uninitialized_copy_n(newData, x4_count, xc_items);
     rstl::destroy(begin(), end());
     Alloc::deallocate(xc_items);
     xc_items = newData;
     x8_capacity = size;
   }*/
  void push_back(const T& in) {
    if (x4_count >= x8_capacity) {
      reserve(x8_capacity != 0 ? x8_capacity * 2 : 4);
    }
    iterator out = begin() + x4_count;
    out = in;
    ++x4_count;
  }

  inline T* data() { return xc_items; }
  inline const T* data() const { return xc_items; }
  inline size_t size() const { return x4_count; }
  inline size_t capacity() const { return x8_capacity; }
  inline T& front() { return xc_items[0]; }
  inline const T& front() const { return xc_items[0]; }
  inline T& back() { return xc_items[x4_count - 1]; }
  inline const T& back() const { return xc_items[x4_count - 1]; }
  inline T& operator[](size_t idx) { return xc_items[idx]; }
  inline const T& operator[](size_t idx) const { return xc_items[idx]; }
};
} // namespace rstl

#endif
