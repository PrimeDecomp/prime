#ifndef _RSTL_ALGORITHM
#define _RSTL_ALGORITHM

#include "rstl/functional.hpp"
#include "rstl/pair.hpp"
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

    It t1 = next - 1;
    It t2 = next;
    while (first < t2 && cmp(value, *t1)) {
      *t2-- = *t1--;
    }
    *t2 = value;
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
  int count = last - first; // use distance?
  if (count > 1) {
    if (count <= 20) {
      __insertion_sort(first, last, cmp);
    } else {
      It pivot = first + count / 2;
      It end = last;
      __sort3(*first, *pivot, *--end, cmp);
      typename iterator_traits< It >::value_type value = *pivot;
      It it = first + 1;
      --end;
      while (true) {
        while (cmp(*it, value))
          ++it;
        while (cmp(value, *end))
          --end;
        if (it >= end)
          break;
        iter_swap(it++, end--);
      }
      sort(first, it, cmp);
      sort(it, last, cmp);
    }
  }
}

template < typename It, typename T, typename Cmp >
It lower_bound(It start, It end, const T& value, Cmp cmp) {
  int dist = distance(start, end);
  It it = start;
  while (dist > 0) {
    int halfDist = dist / 2;
    it = start;
    advance(it, halfDist);
    if (cmp(*it, value)) {
      start = it;
      ++start;
      dist = (dist - halfDist) - 1;
    } else {
      dist = halfDist;
    }
  }
  return start;
}

template < typename It, typename T, typename Cmp >
inline It binary_find(It start, It end, const T& value, Cmp cmp) {
  It lower = lower_bound(start, end, value, cmp);
  bool found = false;
  if (lower != end && !cmp(value, *lower)) {
    found = true;
  }
  return found ? lower : end;
}

template < typename T, typename Cmp >
class pair_sorter_finder;

template < typename K, typename V, typename Cmp >
class pair_sorter_finder< pair< K, V >, Cmp > {
public:
  typedef K key_type;
  Cmp cmp;
  pair_sorter_finder(const Cmp& cmp) : cmp(cmp) {}

  bool operator()(const K& a, const pair< K, V >& b) const;
  /* {
    return cmp(a, b.first);
  }*/

  bool operator()(const pair< K, V >& a, const K& b) const;
  /* {
    return cmp(a.first, b);
  }*/

  bool operator()(const pair< K, V >& a, const pair< K, V >& b) const;
};

template <typename T>
inline pair_sorter_finder< typename T::value_type, less< typename select1st< typename T::value_type >::value_type > > default_pair_sorter_finder()
{
    less< typename select1st< typename T::value_type >::value_type > l;
    pair_sorter_finder< typename T::value_type, less< typename select1st< typename T::value_type >::value_type > > a(l);
    return a;
}

template < typename K, typename V, typename Cmp >
inline bool pair_sorter_finder< pair< K, V >, Cmp >::operator()(const K& a,
                                                                const pair< K, V >& b) const {
  return cmp(a, b.first);
}

template < typename K, typename V, typename Cmp >
inline bool pair_sorter_finder< pair< K, V >, Cmp >::operator()(const pair< K, V >& a,
                                                                const K& b) const {
  return cmp(a.first, b);
}

template < typename K, typename V, typename Cmp >
inline bool pair_sorter_finder< pair< K, V >, Cmp >::operator()(const pair< K, V >& a,
                                                                const pair< K, V >& b) const {
  return cmp(a.first, b.first);
}

template < typename T >
typename T::const_iterator
find_by_key(const T& container,
            const typename select1st< typename T::value_type >::value_type& key);

template < typename T >
typename T::const_iterator inline find_by_key(
    const T& container, const typename select1st< typename T::value_type >::value_type& key) {
  return binary_find(container.begin(), container.end(), key,
                     default_pair_sorter_finder<T>());
}

template < typename T >
typename T::iterator
find_by_key_nc(T& container, const typename select1st< typename T::value_type >::value_type& key);

template < typename T >
typename T::iterator inline find_by_key_nc(
    T& container, const typename select1st< typename T::value_type >::value_type& key) {
  return binary_find(container.begin(), container.end(), key,
                     default_pair_sorter_finder<T>());
}

} // namespace rstl

#endif // _RSTL_ALGORITHM
