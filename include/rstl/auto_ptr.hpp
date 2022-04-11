#ifndef _RSTL_AUTO_PTR_HPP
#define _RSTL_AUTO_PTR_HPP

#include "types.h"

namespace rstl {
template < typename T >
class auto_ptr {
  bool x0_has;
  T* x4_item;

public:
  auto_ptr() : x0_has(false), x4_item(nullptr) {}
  T* get() { return x4_item; }
  T* operator->() { return get(); }
};
} // namespace rstl

#endif
