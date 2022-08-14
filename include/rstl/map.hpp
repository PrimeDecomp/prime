#ifndef _RSTL_MAP_HPP
#define _RSTL_MAP_HPP

#include "types.h"

#include "rstl/red_black_tree.hpp"
#include "rstl/rmemory_allocator.hpp"

namespace rstl {
template < typename K, typename V, typename Cmp = less< K >, typename Alloc = rmemory_allocator >
class map {
  u8 pad[0x14];
};
} // namespace rstl

#endif
