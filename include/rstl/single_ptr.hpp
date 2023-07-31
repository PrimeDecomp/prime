#ifndef _RSTL_SINGLE_PTR
#define _RSTL_SINGLE_PTR

#include "types.h"

namespace rstl {
template < typename T >
class single_ptr {
  mutable T* x0_ptr;

public:
  single_ptr() : x0_ptr(nullptr) {}
  single_ptr(T* ptr) : x0_ptr(ptr) {}
  ~single_ptr() { delete x0_ptr; }
  T* get() const { return x0_ptr; }
  // const T* get() const { return x0_ptr; }
  T* operator->() { return x0_ptr; }
  const T* operator->() const { return x0_ptr; }
  single_ptr(const single_ptr& other) : x0_ptr(other.x0_ptr) { other.x0_ptr = nullptr; }
  single_ptr& operator=(T* ptr) {
    delete x0_ptr;
    x0_ptr = ptr;
    return *this;
  }
  bool null() const { return x0_ptr == nullptr; }
  T& operator*() { return *x0_ptr; }
  const T& operator*() const { return *x0_ptr; }
  T* release() {
    T* ptr = x0_ptr;
    x0_ptr = nullptr;
    return ptr;
  }

  // This is certainly not real, but handy to force not-inline
  single_ptr& Set(T* ptr);
};


template < typename T >
single_ptr< T >& single_ptr< T >::Set(T* ptr) {
  return *this = ptr;
}

typedef single_ptr< void > unk_singleptr;
CHECK_SIZEOF(unk_singleptr, 0x4);
} // namespace rstl

#endif // _RSTL_SINGLE_PTR
