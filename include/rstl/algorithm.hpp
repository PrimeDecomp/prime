#ifndef _RSTL_ALGORITHM
#define _RSTL_ALGORITHM

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

template < typename It, class Cmp >
void __insertion_sort(It first, It last, Cmp cmp);

template < class T, class Cmp >
void __sort3(T& a, T& b, T& c, Cmp comp); // TODO

template < typename It, class Cmp >
void sort(It first, It last, Cmp cmp); // TODO

// Implementations

template < typename It, class Cmp >
void __insertion_sort(It first, It last, Cmp cmp) {
  for (It next = first + 1; next < last; ++next) {
    typename iterator_traits< It >::value_type value = *next;

    It t1 = next;
    for (It t2 = next - 1; first < t1 && cmp(value, *t2); --t2) {
      *t1 = *t2;
      --t1;
    }
    *t1 = value;
  }
}

template < typename T, class Cmp >
void __sort3(T& a, T& b, T& c, Cmp comp) {
  if (comp(b, a)) {
    swap(a, b);
  }
  if (comp(c, b)) {
    T tmp(c);
    c = b;
    if (comp(tmp, a)) {
      b = a;
      a = tmp;
    } else {
      b = tmp;
    }
  }
}

template < typename It, class Cmp >
void sort(It first, It last, Cmp cmp) {
  int count = last - first;
  if (count > 1) {
    if (count <= 20) {
      __insertion_sort(first, last, cmp);
    } else {
      It beforeLast = last - 1;
      It middle = first + count / 2;
      __sort3(*first, *middle, *(last - 1), cmp);
      typename iterator_traits< It >::value_type value = *middle;
      
      It it = first + 1;

      while (true) {
        for (; cmp(*it, value); ++it)
          ;
        for (; cmp(value, *beforeLast); --beforeLast)
          ;
        if (it > beforeLast)
          break;
        rstl::swap(*it, *beforeLast);
        ++it;
        --beforeLast;
      }
      sort(first, it, cmp);
      sort(it, last, cmp);
    }
  }
}

} // namespace rstl

#endif // _RSTL_ALGORITHM
