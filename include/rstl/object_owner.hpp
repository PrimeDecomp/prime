#ifndef _RSTL_OBJECT_OWNER
#define _RSTL_OBJECT_OWNER

#include "rstl/auto_ptr.hpp"

namespace rstl {
template < typename T >
class deep_clone_disabled {};

template < typename T, typename Clone = deep_clone_disabled< T > >
class object_owner {
  T* x0_ptr;
  Clone x4_clone;

  object_owner(const object_owner&);
  object_owner& operator=(const object_owner&);

public:
  explicit object_owner(const auto_ptr< T >& ptr) : x0_ptr(ptr.release()) {}
  ~object_owner() { delete x0_ptr; }

  T& operator*() { return *x0_ptr; }
  const T& operator*() const { return *x0_ptr; }
  T* operator->() { return x0_ptr; }
  const T* operator->() const { return x0_ptr; }
};
} // namespace rstl

#endif // _RSTL_OBJECT_OWNER
