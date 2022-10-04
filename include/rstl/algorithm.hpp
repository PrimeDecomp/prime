#ifndef _RSTL_ALGORITHM_HPP
#define _RSTL_ALGORITHM_HPP

#include "rstl/pointer_iterator.hpp"

namespace rstl {
template < class It, class T >
inline It find(It first, It last, const T& val) {
  while (first != last && !(*first == val))
    ++first;
  return first;
}

template < typename T >
inline void swap(T& a, T& b) {
  T tmp(a);
  a = b;
  b = tmp;
}

template < typename I1, typename I2 >
inline void iter_swap(I1 a, I2 b) {
  swap(*a, *b);
}

template < class It, class Cmp >
void __sort3(It a, It b, It c, Cmp comp); // TODO

template < typename It, class Cmp >
inline void sort(It first, It last, Cmp cmp); // TODO
} // namespace rstl

#endif // _RSTL_ALGORITHM_HPP
