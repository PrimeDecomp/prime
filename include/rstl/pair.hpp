#ifndef _RSTL_PAIR
#define _RSTL_PAIR

#include "types.h"

namespace rstl {
template < typename L, typename R >
class pair {
public:
  pair() {}
  pair(const L& first, const R& second) : first(first), second(second) {}

  bool operator==(const pair& other) const { return first == other.first && second == other.second; }

  L first;
  R second;
};
} // namespace rstl

#endif // _RSTL_PAIR
