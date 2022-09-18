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
protected:
  const T* current;

public:
  typedef random_access_iterator_tag iterator_category;

  const_pointer_iterator() : current(nullptr) {}
  const_pointer_iterator(const T* begin) : current(begin) {}
  const_pointer_iterator& operator++() { ++current; return *this; }
  const_pointer_iterator& operator--() { --current; return *this; }
  T* get_pointer() const { return const_cast< T* >(current); }
  const T& operator*() const { return *get_pointer(); }
  const T* operator->() const { return get_pointer(); }
  bool CheckValid() const { return current != nullptr; }
  bool operator==(const const_pointer_iterator& other) { return current == other.current; }
  bool operator!=(const const_pointer_iterator& other) { return current != other.current; }

  friend const_pointer_iterator operator+(const const_pointer_iterator& x, int v) { return const_pointer_iterator(x.current + v); }
  friend const_pointer_iterator operator-(const const_pointer_iterator& x, int v) { return const_pointer_iterator(x.current - v); }
};

template < typename T, typename Vec, typename Alloc >
class pointer_iterator : public const_pointer_iterator< T, Vec, Alloc > {
public:
  pointer_iterator() : const_pointer_iterator< T, Vec, Alloc >(nullptr) {}
  pointer_iterator(T* begin) : const_pointer_iterator< T, Vec, Alloc >(begin) {}
  void operator=(const T& other) {
    if (this->CheckValid()) {
      *get_pointer() = other;
    }
  }
  T* get_pointer() const { return const_cast< T* >(this->current); }
  // T* operator*() const { if (CheckValid()) return get_pointer(); else return
  // nullptr; }
  T* operator->() const { return get_pointer(); }
  void destroy() const {
    if (this->CheckValid()) {
      rstl::destroy(get_pointer());
    }
  }
  pointer_iterator& operator++() { ++current; return *this; }
  pointer_iterator& operator--() { --current; return *this; }

  friend pointer_iterator operator+(const pointer_iterator& x, int v) { return pointer_iterator(x.get_pointer() + v); }
  friend pointer_iterator operator-(const pointer_iterator& x, int v) { return pointer_iterator(x.get_pointer() - v); }
};
} // namespace rstl

#endif
