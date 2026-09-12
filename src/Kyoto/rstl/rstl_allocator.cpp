#include "rstl/allocator.hpp"

#if defined(__MWERKS__) && (VERSION == 3 || VERSION == 4)
void* rstl::rmemory_allocator::allocate(int size) {
  return size == 0 ? nullptr : rs_new uchar[size];
}
#endif
