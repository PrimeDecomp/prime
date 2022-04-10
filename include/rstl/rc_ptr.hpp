#ifndef _RSTL_RC_PTR_HPP
#define _RSTL_RC_PTR_HPP

#include "types.h"

template < typename T >
class CRefData {
public:
  T* x0_ptr;
  unsigned int x4_refCount;
};

namespace rstl {
template < typename T >
class rc_ptr {
  CRefData< T >* x0_refData;

public:
  ~rc_ptr();
  T* get() { return x0_refData->x0_ptr; }
  T* operator->() { return get(); }
};
} // namespace rstl

#endif
