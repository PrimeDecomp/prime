#ifndef _RSTL_LIST
#define _RSTL_LIST

#include "types.h"

#include "rstl/rmemory_allocator.hpp"

namespace rstl {
template < typename T, typename Alloc = rmemory_allocator >
class list {
public:
  list() : x4_start(&xc_empty), x8_end(&xc_empty), xc_empty(&xc_empty, &xc_empty) {}
  ~list() {
    node* cur = x4_start;
    while (cur != x8_end) {
      cur->get_value()->~T();
      x0_allocator.deallocate(cur->get_value());
      cur = cur->get_next();
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

    node* get_prev() const { return x0_prev; }
    node* get_next() const { return x4_next; }
    T* get_value() { return x8_item; }

    // todo set_next / set_prev
  };

  Alloc x0_allocator;
  node* x4_start;
  node* x8_end;
  node xc_empty;
};
} // namespace rstl

#endif // _RSTL_LIST
