#ifndef _RSTL_OPTIONAL_OBJECT_HPP
#define _RSTL_OPTIONAL_OBJECT_HPP

#include "types.h"

#include "rstl/construct.hpp"

namespace rstl {
template < typename T >
class optional_object {
public:
  optional_object() : x4_valid(false) {}
  optional_object(const T& item) : x0_item(item), x4_valid(true) {}
  ~optional_object() { clear(); }

  optional_object& operator=(const T& item) {
    assign(item);
    return *this;
  }

  T& data() { return x0_item; }
  T* get_ptr() { return &x0_item; }
  operator bool() const { return x4_valid; }
  void clear() {
    rstl::destroy(&x0_item);
    x4_valid = false;
  }

  T& operator*() { return data(); }

private:
  T x0_item;
  bool x4_valid;

  void assign(const T& item) {
    if (!x4_valid) {
      rstl::construct(get_ptr(), item);
      x4_valid = true;
    } else {
      data() = item;
    }
  }
};
} // namespace rstl

#endif
