#ifndef _RSTL_LIST_HPP
#define _RSTL_LIST_HPP

#include "types.h"

#include "rstl/rmemory_allocator.hpp"

namespace rstl {
template < typename T, typename Alloc = rmemory_allocator >
class list {
public:
  list() : x4_start(&xc_empty), x8_end(&xc_empty), xc_empty(x8_end, nullptr) {}
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

    node(node* prev, node* next) : x0_prev(prev), x4_next(next), x8_count(0) {}
  };

  Alloc x0_allocator;
  node* x4_start;
  node* x8_end;
  node xc_empty;
};
} // namespace rstl

#endif
