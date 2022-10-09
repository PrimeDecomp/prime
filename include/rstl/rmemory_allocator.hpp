#ifndef _RSTL_RMEMORY_ALLOCATOR
#define _RSTL_RMEMORY_ALLOCATOR

#include "types.h"

#include "Kyoto/Alloc/CMemory.hpp"

namespace rstl {
struct rmemory_allocator {
  rmemory_allocator() {}
  rmemory_allocator(const rmemory_allocator&) {}
  template < typename T >
  static void allocate(T*& out, int count) {
    int size = count * sizeof(T);
    if (size == 0) {
      out = nullptr;
    } else {
      out = reinterpret_cast< T* >(new uchar[size]);
    }
  }
  // TODO: this fixes a regswap in vector::reserve
  template < typename T >
  static T* allocate2(int count) {
    int size = count * sizeof(T);
    if (size == 0) {
      return nullptr;
    } else {
      return reinterpret_cast< T* >(new uchar[size]);
    }
  }
  template < typename T >
  static void deallocate(T* ptr) {
    if (ptr != nullptr) {
      delete[] reinterpret_cast< uchar* >(ptr);
    }
  }
};
} // namespace rstl

#endif // _RSTL_RMEMORY_ALLOCATOR
