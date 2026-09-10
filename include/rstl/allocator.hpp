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
      out = reinterpret_cast< T* >(rs_new uchar[size]);
    }
  }

  template < typename T >
  static void deallocate(T* ptr) {
    if (ptr != nullptr) {
      delete[] reinterpret_cast< uchar* >(ptr);
    }
  }
};

struct aligned_allocator {
  aligned_allocator() {}
  aligned_allocator(const aligned_allocator&) {}

  template < typename T >
  static void allocate(T*& out, int count) {
    const int size = count * sizeof(T);
    out = size == 0 ? nullptr
                    : static_cast< T* >(CMemory::Alloc(size, IAllocator::kHI_RoundUpLen));
  }

  template < typename T >
  static void deallocate(T* ptr) {
    delete[] reinterpret_cast< uchar* >(ptr);
  }
};
} // namespace rstl

#endif // _RSTL_RMEMORY_ALLOCATOR
