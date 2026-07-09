#ifndef _RSTL_ALIGNED_ALLOCATOR
#define _RSTL_ALIGNED_ALLOCATOR

#include "types.h"

#include "Kyoto/Alloc/CMemory.hpp"

namespace rstl {
struct aligned_allocator {
  aligned_allocator() {}
  aligned_allocator(const aligned_allocator&) {}

  template < typename T >
  static void allocate(T*& out, int count) {
    int size = count * sizeof(T);
    if (size == 0) {
      out = nullptr;
    } else {
      out = static_cast< T* >(CMemory::Alloc(size, IAllocator::kHI_RoundUpLen));
    }
  }

  template < typename T >
  static void deallocate(T* ptr) {
    CMemory::Free(ptr);
  }
};
} // namespace rstl

#endif // _RSTL_ALIGNED_ALLOCATOR
