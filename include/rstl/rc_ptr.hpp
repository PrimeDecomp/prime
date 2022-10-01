#ifndef _RSTL_RC_PTR_HPP
#define _RSTL_RC_PTR_HPP

#include "types.h"

namespace rstl {
class CRefData {
public:
  CRefData(const void* ptr) : x0_ptr(ptr), x4_refCount(1) {}
  CRefData(const void* ptr, int refCount) : x0_ptr(ptr), x4_refCount(refCount) {}

  void* GetPtr() const { return const_cast< void* >(x0_ptr); }
  int GetRefCount() const { return x4_refCount; }
  int AddRef() { return ++x4_refCount; }
  int DelRef() { return --x4_refCount; }

  const void* x0_ptr;
  int x4_refCount;

  static CRefData sNull;
};

template < typename T >
class rc_ptr {
public:
  rc_ptr(const T* ptr) : x0_refData(new CRefData(ptr)) {}
  rc_ptr(const rc_ptr& other) : x0_refData(other.x0_refData) { x0_refData->AddRef(); }
  ~rc_ptr() { ReleaseData(); }
  T* GetPtr() const { return static_cast< T* >(x0_refData->GetPtr()); }
  void ReleaseData() {
    if (x0_refData->DelRef() <= 0) {
      delete GetPtr();
      delete x0_refData;
    }
  }
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
