#ifndef _RSTL_ALGORITHM_HPP
#define _RSTL_ALGORITHM_HPP

#include "rstl/pointer_iterator.hpp"

namespace rstl {
template < typename T >

template < class Iter, class T >
inline Iter find(Iter first, Iter last, const T& val) {
  while (first != last && !(*first == val))
    ++first;
  return first;
}
} // namespace rstl
#endif // _RSTL_ALGORITHM_HPP
