#ifndef _RSTL_AUTO_PTR_HPP
#define _RSTL_AUTO_PTR_HPP

#include "types.h"

namespace rstl {
template < typename T >
class auto_ptr {
  mutable bool x0_has;
  mutable T* x4_item;

public:
  auto_ptr() : x0_has(false), x4_item(nullptr) {}
  auto_ptr(T* ptr) : x0_has(ptr != nullptr), x4_item(ptr) {}
  ~auto_ptr() {
    if (x0_has) {
      delete x4_item;
    }
  }
  // TODO check
  // auto_ptr(const auto_ptr& other) : x0_has(other.x0_has), x4_item(other.x4_item) {
  //   other.x0_has = false;
  // }
  // TODO check
  // auto_ptr& operator=(const auto_ptr& other) {
  //   x0_has = other.x4_item != nullptr;
  //   x4_item = other.x4_item;
  //   other.x0_has = false;
  // }
  T* get() { return x4_item; }
  const T* get() const { return x4_item; }
  T* operator->() { return get(); }
  const T* operator->() const { return get(); }
  T* release() const {
    x0_has = false;
    return x4_item;
  }
  operator bool() const { return x0_has; }
};
} // namespace rstl

#endif
