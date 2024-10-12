#ifndef _RSTL_POINTER_ITERATOR
#define _RSTL_POINTER_ITERATOR

#include "stddef.h"
#include "types.h"

#include "rstl/construct.hpp"
#include "rstl/iterator.hpp"

namespace rstl {

template < typename T, typename Vec, typename Alloc >
class const_pointer_iterator {
public:
  typedef long difference_type;
  typedef random_access_iterator_tag iterator_category;
  typedef T value_type;

  const_pointer_iterator() : current(nullptr) {}
  const_pointer_iterator(const T* begin) : current(const_cast< T* >(begin)) {}
  const_pointer_iterator& operator++() {
    ++this->current;
    return *this;
  }
  const_pointer_iterator operator++(int) { return const_pointer_iterator(this->current++); }
  const_pointer_iterator& operator--() {
    --this->current;
    return *this;
  }
  const_pointer_iterator operator--(int) { return const_pointer_iterator(this->current--); }
  const_pointer_iterator& operator+=(int v) {
    this->current += v;
    return *this;
  }
  const_pointer_iterator& operator-=(int v) {
    this->current -= v;
    return *this;
  }
  const_pointer_iterator operator+(int v) const {
    return const_pointer_iterator(this->current + v);
  }
  const_pointer_iterator operator-(int v) const {
    return const_pointer_iterator(this->current - v);
  }
  difference_type operator-(const const_pointer_iterator& other) const {
    return this->current - other.current;
  }
  const T* get_pointer() const { return current; }
  const T& operator*() const { return *current; }
  const T* operator->() const { return current; }
  bool operator==(const const_pointer_iterator& other) { return current == other.current; }
  bool operator!=(const const_pointer_iterator& other) { return current != other.current; }
  bool operator<(const const_pointer_iterator& other) { return current < other.current; }
  bool operator>(const const_pointer_iterator& other) { return current > other.current; }
  bool operator<=(const const_pointer_iterator& other) { return current <= other.current; }
  bool operator>=(const const_pointer_iterator& other) { return current >= other.current; }

  // friend const_pointer_iterator operator+(const const_pointer_iterator& x, int v) {
  //   return const_pointer_iterator(x.current + v);
  // }
  // friend const_pointer_iterator operator-(const const_pointer_iterator& x, int v) {
  //   return const_pointer_iterator(x.current - v);
  // }

protected:
  T* current;
};

template < typename T, typename Vec, typename Alloc >
class pointer_iterator : public const_pointer_iterator< T, Vec, Alloc > {
  typedef const_pointer_iterator< T, Vec, Alloc > base;

public:
  typedef typename base::difference_type difference_type;
  typedef typename base::iterator_category iterator_category;
  typedef typename base::value_type value_type;

  pointer_iterator() : base(nullptr) {}
  pointer_iterator(T* begin) : base(begin) {}
  T& operator*() { return *this->current; }
  // TODO map says const, but breaks CScriptMazeNode::GenerateObjects
  T* operator->() { return this->current; }
  pointer_iterator& operator++() {
    ++this->current;
    return *this;
  }
  pointer_iterator operator++(int) {
    return *this += 1;
  }
  pointer_iterator& operator--() {
    --this->current;
    return *this;
  }
  pointer_iterator operator--(int) { return pointer_iterator(this->current--); }
  pointer_iterator& operator+=(int v) {
    this->current += v;
    return *this;
  }
  pointer_iterator& operator-=(int v) {
    this->current -= v;
    return *this;
  }
  pointer_iterator operator+(int v) const {
    return pointer_iterator(this->current + v);
  }
  pointer_iterator operator-(int v) const {
    return pointer_iterator(this->current - v);
  }
  // HACK: non-const operator- is required to match vector::insert
  difference_type operator-(const pointer_iterator& other) { return this->current - other.current; }
};

template < typename T >
struct const_counting_iterator {
  const T* ptr;
  int count;

  const_counting_iterator(const T* ptr, int count) : ptr(ptr), count(count) {}
  
  const_counting_iterator& operator++() {
    ++this->count;
    return *this;
  }
};

template < typename It >
inline typename It::difference_type __distance(It first, It last, random_access_iterator_tag) {
  return last - first;
}

template < typename It, typename S >
inline void __advance(It& it, S count, random_access_iterator_tag) {
  it += count;
}

template < typename T >
struct iterator_traits {};

template < typename T >
struct iterator_traits<T*> {
  typedef T value_type;
};

template < typename T, typename Vec, typename Alloc >
struct iterator_traits< pointer_iterator<T, Vec, Alloc> > {
  typedef typename pointer_iterator<T, Vec, Alloc>::value_type value_type;
};

} // namespace rstl

#endif // _RSTL_POINTER_ITERATOR
