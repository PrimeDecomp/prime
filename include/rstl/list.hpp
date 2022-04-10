#ifndef _RSTL_LIST_HPP
#define _RSTL_LIST_HPP

#include "types.h"

#include "rmemory_allocator.hpp"

namespace rstl {
template < typename T, typename Alloc = rmemory_allocator >
class list {
public:
  ~list() {
    node* cur = x4_start;
    while (cur != nullptr) {
      delete cur->x8_item;
      cur = cur->x4_next;
    }
  }

private:
  struct node {
    node* x0_prev;
    node* x4_next;
    union {
      T* x8_item;
      u32 x8_count;
    };
  };

  Alloc x0_allocator;
  node* x4_start;
  node* x8_end;
  node xc_empty;
};
} // namespace rstl

#endif
