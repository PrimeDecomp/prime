#ifndef _RSTL_RMEMORY_ALLOCATOR_HPP
#define _RSTL_RMEMORY_ALLOCATOR_HPP

#include "types.h"

#include "Kyoto/Alloc/CMemory.hpp"

namespace rstl {
struct rmemory_allocator {
  template < typename T >
  static void allocate(T*& out, int count) {
    int size = count * sizeof(T);
    if (size == 0) {
      out = nullptr;
    } else {
      out = reinterpret_cast< T* >(new u8[size]);
    }
  }
  // TODO: this fixes a regswap in vector::reserve
  template < typename T >
  static T* allocate2(int count) {
    int size = count * sizeof(T);
    if (size == 0) {
      return nullptr;
    } else {
      return reinterpret_cast< T* >(new u8[size]);
    }
  }
  template < typename T >
  static void deallocate(T* ptr) {
    if (ptr != nullptr) {
      delete[] reinterpret_cast< u8* >(ptr);
    }
  }
};
} // namespace rstl

#endif
