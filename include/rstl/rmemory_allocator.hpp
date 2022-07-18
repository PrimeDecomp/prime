#ifndef _RSTL_RMEMORY_ALLOCATOR_HPP
#define _RSTL_RMEMORY_ALLOCATOR_HPP

#include "types.h"

#include "Kyoto/Alloc/CMemory.hpp"

namespace rstl {
struct rmemory_allocator {
  template < typename T >
  static void allocate(T*& out, size_t sz) {
    out = reinterpret_cast< T* >(new u8[sz]);
  }
  template < typename T >
  static void deallocate(T* ptr) {
    if (ptr != nullptr)
      delete ptr;
  }
};
} // namespace rstl

#endif
