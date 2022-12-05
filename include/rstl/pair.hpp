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

template < typename P >
struct select1st {
  const P& operator()(const P& it) const { return it; }
};

template < typename K, typename V >
struct select1st< pair< K, V > > {
  typedef K value_type;

  const K& operator()(const pair< K, V >& it) const { return it.first; }
};


} // namespace rstl

#endif // _RSTL_PAIR
