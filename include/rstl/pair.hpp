#ifndef _RSTL_PAIR_HPP
#define _RSTL_PAIR_HPP

#include "types.h"

namespace rstl {
template < typename L, typename R >
class pair {
public:
  L first;
  R second;

  inline pair() {}
  inline pair(const L& first, const R& second) : first(first), second(second) {}
};
} // namespace rstl

#endif
