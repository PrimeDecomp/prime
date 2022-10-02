#ifndef _RSTL_POINTER_ITERATOR_HPP
#define _RSTL_POINTER_ITERATOR_HPP

#include "types.h"

#include "rstl/construct.hpp"

namespace rstl {
struct input_iterator_tag {};
struct output_iterator_tag {};
struct forward_iterator_tag : public input_iterator_tag {};
struct bidirectional_iterator_tag : public forward_iterator_tag {};
struct random_access_iterator_tag : public bidirectional_iterator_tag {};

template < typename T, typename Vec, typename Alloc >
class const_pointer_iterator {
public:
  typedef random_access_iterator_tag iterator_category;

  const_pointer_iterator() : current(nullptr) {}
  const_pointer_iterator(const T* begin) : current(const_cast< T* >(begin)) {}
  const_pointer_iterator& operator++() {
    ++this->current;
    return *this;
  }
  const_pointer_iterator& operator++(int) { return const_pointer_iterator(this->current++); }
  const_pointer_iterator& operator--() {
    --this->current;
    return *this;
  }
  const_pointer_iterator& operator--(int) { return const_pointer_iterator(this->current--); }
  const_pointer_iterator& operator+=(int v) {
    this->current += v;
    return *this;
  }
  const_pointer_iterator& operator-=(int v) {
    this->current -= v;
    return *this;
  }
  const_pointer_iterator operator+(int v) const {
    const_pointer_iterator it = *this;
    return it += v;
  }
  const_pointer_iterator operator-(int v) const {
    const_pointer_iterator it = *this;
    return it -= v;
  }
  int operator-(const const_pointer_iterator& other) const { return this->current - other.current; }
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
public:
  pointer_iterator() : const_pointer_iterator< T, Vec, Alloc >(nullptr) {}
  pointer_iterator(T* begin) : const_pointer_iterator< T, Vec, Alloc >(begin) {}
  void operator=(const T& other) { rstl::construct(this->current, other); }
  T& operator*() { return *this->current; }
  T* operator->() { return this->current; }
  void destroy() const { rstl::destroy(this->current); }
  pointer_iterator& operator++() {
    ++this->current;
    return *this;
  }
  pointer_iterator operator++(int) { return pointer_iterator(this->current++); }
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
    pointer_iterator it = *this;
    return it += v;
  }
  pointer_iterator operator-(int v) const {
    pointer_iterator it = *this;
    return it -= v;
  }
};
} // namespace rstl

#endif
