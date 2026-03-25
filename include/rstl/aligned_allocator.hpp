#ifndef _RSTL_ALIGNED_ALLOCATOR
#define _RSTL_ALIGNED_ALLOCATOR

#include "types.h"

#include "Kyoto/Alloc/CCallStack.hpp"
#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Alloc/IAllocator.hpp"

namespace rstl {
struct aligned_allocator {
  aligned_allocator() {}
  aligned_allocator(const aligned_allocator&) {}

  int max_size() const { return 0x7FFFFFFF; }

  template < typename T >
  void allocate(T*& out, int count) {
    int size = count * sizeof(T);
    if (size == 0) {
      out = nullptr;
    } else {
      CCallStack cs(-1, "??(??)", CCallStack::kUnknownType);
      out = static_cast< T* >(
          CMemory::Alloc(size, IAllocator::kHI_RoundUpLen, IAllocator::kSC_Unk1,
                         IAllocator::kTP_Heap, cs));
    }
  }

  template < typename T >
  static void deallocate(T* ptr) {
    if (ptr != nullptr) {
      CMemory::Free(ptr);
    }
  }
};
} // namespace rstl

#endif // _RSTL_ALIGNED_ALLOCATOR
