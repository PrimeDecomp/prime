#ifndef _RSTL_VECTOR_HPP
#define _RSTL_VECTOR_HPP

#include "types.h"

#include "rstl/pointer_iterator.hpp"
#include "rstl/rmemory_allocator.hpp"

namespace rstl {
// template < typename T, typename Alloc >
// struct allocator_auto_ptr {
//   allocator_auto_ptr(T* ptr, Alloc* alloc) : ptr(ptr) {}
//   ~allocator_auto_ptr() {
//     if (ptr != nullptr) {
//       Alloc::deallocate(ptr);
//       ptr = nullptr;
//     }
//   }

//   T* release() { T* v = ptr; ptr = nullptr; return v; }

// private:
//   T* ptr;
// };

template < typename T, typename Alloc = rmemory_allocator >
class vector {
  Alloc x0_allocator;
  int x4_count;
  int x8_capacity;
  T* xc_items;

public:
  typedef pointer_iterator< T, vector< T, Alloc >, Alloc > iterator;
  typedef const_pointer_iterator< T, vector< T, Alloc >, Alloc > const_iterator;

  inline iterator begin() { return iterator(xc_items); }
  inline const_iterator begin() const { return const_iterator(xc_items); }
  inline iterator end() { return iterator(xc_items + x4_count); }
  inline const_iterator end() const { return const_iterator(xc_items + x4_count); }
  inline vector() : x4_count(0), x8_capacity(0), xc_items(NULL) {}
  inline vector(int count) : x4_count(0), x8_capacity(0), xc_items(0) { reserve(count); }
  vector(const vector& other) {
    x4_count = other.x4_count;
    x8_capacity = other.x8_capacity;
    if (other.x4_count == 0 && other.x8_capacity == 0) {
      xc_items = NULL;
    } else {
      int sz = x8_capacity * sizeof(T);
      if (sz == 0) {
        xc_items = NULL;
      } else {
        x0_allocator.allocate(xc_items, sz);
      }
      // rstl::uninitialized_copy_n(other.data(), x4_count, data());
      rstl::uninitialized_copy_n(data(), other.data(), x4_count);
    }
  }
  ~vector() {
    rstl::destroy(begin(), end());
    x0_allocator.deallocate(xc_items);
  }

  void reserve(int size);
  iterator erase(iterator it);

  void push_back(const T& in) {
    if (x4_count >= x8_capacity) {
      reserve(x8_capacity != 0 ? x8_capacity * 2 : 4);
    }
    iterator out = begin() + x4_count;
    out = in;
    ++x4_count;
  }

  vector& operator=(const vector& other) {
    if (this == &other)
      return *this;
    clear();
    if (other.size() == 0) {
      x0_allocator.deallocate(xc_items);
      x4_count = 0;
      x8_capacity = 0;
      xc_items = nullptr;
    } else {
      reserve(other.size());
      rstl::uninitialized_copy(data(), other.data(), other.data() + other.size());
      x4_count = other.x4_count;
    }
    return *this;
  }

  void clear() {
    rstl::destroy(begin(), end());
    x4_count = 0;
  }

  inline T* data() { return xc_items; }
  inline const T* data() const { return xc_items; }
  inline int size() const { return x4_count; }
  inline int capacity() const { return x8_capacity; }
  inline T& front() { return xc_items[0]; }
  inline const T& front() const { return xc_items[0]; }
  inline T& back() { return xc_items[x4_count - 1]; }
  inline const T& back() const { return xc_items[x4_count - 1]; }
  inline T& operator[](int idx) { return xc_items[idx]; }
  inline const T& operator[](int idx) const { return xc_items[idx]; }
};

template < typename T, typename Alloc >
void vector< T, Alloc >::reserve(int size) {
  if (size <= x8_capacity)
    return;
  int sz = size * sizeof(T);
  T* newData;
  if (sz == 0) {
    newData = nullptr;
  } else {
    x0_allocator.allocate(newData, sz);
  }
  rstl::uninitialized_copy(begin(), end(), newData);
  rstl::destroy(xc_items, xc_items + x4_count);
  x0_allocator.deallocate(xc_items);
  xc_items = newData;
  x8_capacity = size;
}

typedef vector< void > unk_vector;
CHECK_SIZEOF(unk_vector, 0x10)
} // namespace rstl

#endif
