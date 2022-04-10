#ifndef _RSTL_RMEMORY_ALLOCATOR_HPP
#define _RSTL_RMEMORY_ALLOCATOR_HPP

#include "types.h"

#include "../Kyoto_CWD/CMemory.hpp"

namespace rstl {
struct rmemory_allocator {
  template < typename T >
  static void allocate(T*& out, size_t count) {
    out = new T[count];
  }
  template < typename T >
  static void deallocate(T* ptr) {
    if (ptr != nullptr)
      delete ptr;
  }
};
} // namespace rstl

#endif
