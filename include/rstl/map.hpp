#ifndef _RSTL_MAP_HPP
#define _RSTL_MAP_HPP

#include "types.h"

#include "rmemory_allocator.hpp"

namespace rstl {
template < typename K, typename V, typename Alloc = rmemory_allocator >
class map {
  u8 pad[0x10];
};
} // namespace rstl

#endif
