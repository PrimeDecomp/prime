#ifndef _RSTL_PAIR_HPP
#define _RSTL_PAIR_HPP

#include "types.h"

namespace rstl {
template < typename L, typename R >
class pair {
public:
  inline pair() {}
  inline pair(const L& first, const R& second) : first(first), second(second) {}
  inline pair(const pair& other) : first(other.first), second(other.second) {}
  inline void operator=(const pair& other) {
    first = other.first;
    second = other.second;
  }

  L first;
  R second;
};
} // namespace rstl

#endif
