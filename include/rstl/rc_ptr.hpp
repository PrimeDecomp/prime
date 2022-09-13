#ifndef _RSTL_RC_PTR_HPP
#define _RSTL_RC_PTR_HPP

#include "types.h"

class CRefData {
public:
  CRefData(void* ptr) : x0_ptr(ptr), x4_refCount(1) {}
  CRefData(void* ptr, int refCount) : x0_ptr(ptr), x4_refCount(refCount) {}

  void* x0_ptr;
  unsigned int x4_refCount;
};

namespace rstl {
template < typename T >
class rc_ptr {
public:
  rc_ptr(T* ptr) : x0_refData(new CRefData(ptr)) {}
  ~rc_ptr();
  T* GetPtr() const { return reinterpret_cast< T* >(x0_refData->x0_ptr); }
  // TODO ReleaseData__Q24rstl20rc_ptr
  T* operator->() const { return GetPtr(); }
  T& operator*() const { return *GetPtr(); }

private:
  CRefData* x0_refData;
};

template < typename T >
class ncrc_ptr : public rc_ptr< T > {
public:
  ncrc_ptr(T* ptr) : rc_ptr(ptr) {}
};
} // namespace rstl

#endif
