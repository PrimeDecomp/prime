#ifndef _RSTL_VECTOR
#define _RSTL_VECTOR

#include "types.h"

#include "rstl/pointer_iterator.hpp"
#include "rstl/rmemory_allocator.hpp"

class CInputStream;

namespace rstl {
// template < typename T, typename Alloc >
// struct allocator_auto_ptr {
//   allocator_auto_ptr(T* ptr, Alloc* alloc) : ptr(ptr) {}
//   ~allocator_auto_ptr() {
//     if (ptr != nullptr) {
//       Alloc::deallocate(ptr);
//       ptr = nullptr;
//     }
//   }

//   T* release() { T* v = ptr; ptr = nullptr; return v; }

// private:
//   T* ptr;
// };

template < typename T, typename Alloc = rmemory_allocator >
class vector {
protected:
  Alloc x0_allocator;
  int x4_count;
  int x8_capacity;
  T* xc_items;

public:
  typedef pointer_iterator< T, vector< T, Alloc >, Alloc > iterator;
  typedef const_pointer_iterator< T, vector< T, Alloc >, Alloc > const_iterator;
  typedef T value_type;

  iterator begin() { return iterator(xc_items); }
  const_iterator begin() const { return const_iterator(xc_items); }
  iterator end() { return iterator(xc_items + x4_count); }
  const_iterator end() const { return const_iterator(xc_items + x4_count); }
  vector() : x4_count(0), x8_capacity(0), xc_items(NULL) {}
  vector(int count) : x4_count(0), x8_capacity(0), xc_items(0) { reserve(count); }
  vector(int count, const T& v) : x4_count(count), x8_capacity(count) {
    x0_allocator.allocate(xc_items, x4_count);
    uninitialized_fill_n(xc_items, count, v);
  }
  vector(int count, const T& v, const Alloc& alloc);

  vector(const vector& other) : x4_count(other.x4_count), x8_capacity(other.x8_capacity) {
    if (other.x4_count == 0 && other.x8_capacity == 0) {
      xc_items = nullptr;
    } else {
      x0_allocator.allocate(xc_items, x8_capacity);
      uninitialized_copy_n(other.xc_items, x4_count, xc_items);
    }
  }
  vector(CInputStream& in, const Alloc& alloc = Alloc());
  ~vector() {
    destroy(begin(), end());
    x0_allocator.deallocate(xc_items);
  }

  void reserve(int size);
  void resize(int size, const T& in);
  iterator insert(iterator it, const T& value);

  template < typename from_iterator >
  iterator insert(iterator it, from_iterator begin, from_iterator end);

  iterator erase(iterator it);
  iterator erase(iterator first, iterator last);

  void push_back(const T& in) {
    if (x4_count >= x8_capacity) {
      reserve(x8_capacity != 0 ? x8_capacity * 2 : 4);
    }
    iterator out = begin() + x4_count;
    out = in;
    ++x4_count;
  }

  vector& operator=(const vector& other);

  void clear() {
    destroy(begin(), end());
    x4_count = 0;
  }

  T* data() { return xc_items; }
  const T* data() const { return xc_items; }
  int size() const { return x4_count; }
  bool empty() const { return x4_count == 0; }
  int capacity() const { return x8_capacity; }
  T& at(int idx) { return xc_items[idx]; }
  const T& at(int idx) const { return xc_items[idx]; }
  T& front() { return at(0); }
  const T& front() const { return at(0); }
  T& back() { return at(x4_count - 1); }
  const T& back() const { return at(x4_count - 1); }
  T& operator[](int idx) { return xc_items[idx]; }
  const T& operator[](int idx) const { return xc_items[idx]; }

protected:
  template < typename In >
  iterator insert_into(iterator at, int n, In in);
};

template < typename T, typename Alloc >
void vector< T, Alloc >::resize(int size, const T& in) {
  if (x4_count != size) {
    if (size > x4_count) {
      reserve(size);
      uninitialized_fill_n(xc_items + x4_count, size - x4_count, in);
    } else {
      destroy(begin() + size, end());
    }
    x4_count = size;
  }
}

template < typename T, typename Alloc >
void vector< T, Alloc >::reserve(int newSize) {
  if (newSize <= x8_capacity) {
    return;
  }
  T* newData = x0_allocator.template allocate2< T >(newSize);
  uninitialized_copy(begin(), end(), newData);
  destroy(xc_items, xc_items + x4_count);
  x0_allocator.deallocate(xc_items);
  xc_items = newData;
  x8_capacity = newSize;
}

template < typename T, typename Alloc >
typename vector< T, Alloc >::iterator vector< T, Alloc >::insert(iterator it, const T& value) {
  typename iterator::difference_type diff = it - begin(); // distance(begin(), it);

  // // TODO: implement
  // const_counting_iterator< T > in(&value, 0);
  // insert_into(it, 1, in);

  return begin() + diff;
}

template < typename T, typename Alloc >
template < typename from_iterator >
typename vector< T, Alloc >::iterator vector< T, Alloc >::insert(iterator it, from_iterator begin,
                                                                 from_iterator end) {
  return insert_into(it, rstl::distance(begin, end), begin);
}

template < typename T, typename Alloc >
template < typename In >
typename vector< T, Alloc >::iterator vector< T, Alloc >::insert_into(iterator at, int n, In in) {
  // TODO: correct
  // An implementation can be found in CAnimationDatabaseGame.o
  int newCount = x4_count + n;
  if (newCount <= x8_capacity) {
    int diffFromAt = at - begin();
    int diff = x4_count - diffFromAt - 1;

    for (int i = diff; 0 <= diff; --i) {
      construct(xc_items + (diffFromAt + i), xc_items[i]);
      destroy(data() + i);
    }

    uninitialized_copy_n(in, n, begin() + diffFromAt);

    x4_count += n;

  } else {
    int newCapacity = x8_capacity != 0 ? x8_capacity * 2 : 4;
    for (; newCapacity < newCount; newCapacity *= 2)
      ;
    T* newData;
    x0_allocator.allocate(newData, newCapacity);

    int diffFromAt = at - begin();
    uninitialized_copy_n(begin(), diffFromAt, newData);
    uninitialized_copy_n(in, n, newData + diffFromAt);
    uninitialized_copy_n(begin() + diffFromAt, x4_count - diffFromAt, newData + diffFromAt + n);
    destroy(xc_items, xc_items + x4_count);
    x0_allocator.deallocate(xc_items);
    xc_items = newData;
    x8_capacity = newCapacity;
    x4_count += n;
  }
}

template < typename T, typename Alloc >
vector< T, Alloc >& vector< T, Alloc >::operator=(const vector< T, Alloc >& other) {
  if (this == &other)
    return *this;
  clear();
  if (other.size() == 0) {
    x0_allocator.deallocate(xc_items);
    x4_count = 0;
    x8_capacity = 0;
    xc_items = nullptr;
  } else {
    reserve(other.size());
    uninitialized_copy(other.data(), other.data() + other.size(), data());
    x4_count = other.x4_count;
  }
  return *this;
}

template < typename T, typename Alloc >
typename vector< T, Alloc >::iterator vector< T, Alloc >::erase(iterator it) {
  return erase(it, it + 1);
}

template < typename T, typename Alloc >
typename vector< T, Alloc >::iterator vector< T, Alloc >::erase(iterator first, iterator last) {
  destroy(first, last);
  iterator start = begin();
  int newCount = rstl::distance(first, start);

  iterator moved = start + newCount;
  for (iterator it = last; it != end(); ++it) {
    construct(&*moved, *it);
    ++moved;
    ++newCount;
  }
  x4_count = newCount;

  return first;
}

typedef vector< void > unk_vector;
CHECK_SIZEOF(unk_vector, 0x10)
} // namespace rstl

#endif // _RSTL_VECTOR
