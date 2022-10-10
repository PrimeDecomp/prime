#ifndef _RSTL_PAIR
#define _RSTL_PAIR

#include "types.h"

namespace rstl {
template < typename L, typename R >
class pair {
public:
  inline pair() {}
  inline pair(const L& first, const R& second) : first(first), second(second) {}

  inline pair& operator=(const pair& other) {
    first = other.first;
    second = other.second;
    return *this;
  }

  L first;
  R second;
};
} // namespace rstl

#endif // _RSTL_PAIR
