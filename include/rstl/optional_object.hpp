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

  T& data() { return x0_item; }
  operator bool() const { return x4_valid; }
  void clear() {
    rstl::destroy(&x0_item);
    x4_valid = false;
  }

private:
  T x0_item;
  bool x4_valid;
};
} // namespace rstl

#endif
