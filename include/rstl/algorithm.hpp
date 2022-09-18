#ifndef _RSTL_MATH_HPP
#define _RSTL_MATH_HPP

#include "rstl/pointer_iterator.hpp"

namespace rstl {
template < typename T >
inline const T& min_val(const T& a, const T& b) {
  return (b < a) ? b : a;
}

template < typename T >
inline const T& max_val(const T& a, const T& b) {
  return (a < b) ? b : a;
}

template < class Iter, class T >
inline Iter find(Iter first, Iter last, const T& val) {
  return find(first, last, val, typename Iter::iterator_category());
}

template < class Iter, class T >
inline Iter find(Iter first, Iter last, const T& val, input_iterator_tag) {
  while (first != last && !(*first == val))
    ++first;
  return first;
}
} // namespace rstl
#endif // _RSTL_MATH_HPP
