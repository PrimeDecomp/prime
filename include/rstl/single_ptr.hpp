#ifndef _RSTL_SINGLE_PTR_HPP
#define _RSTL_SINGLE_PTR_HPP

#include "types.h"

namespace rstl {
template < typename T >
class single_ptr {
  T* x0_ptr;

public:
  single_ptr() : x0_ptr(nullptr) {}
  single_ptr(T* ptr) : x0_ptr(ptr) {}
  ~single_ptr() { delete x0_ptr; }
  T* get() { return x0_ptr; }
  const T* get() const { return x0_ptr; }
  T* operator->() { return x0_ptr; }
  void operator=(T* ptr) {
    delete x0_ptr;
    x0_ptr = ptr;
  }
};
} // namespace rstl

#endif
