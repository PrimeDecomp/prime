#ifndef _RSTL_RC_PTR
#define _RSTL_RC_PTR

#include "types.h"

namespace rstl {
class CRefData {
public:
  CRefData(const void* ptr) : x0_ptr(ptr), x4_refCount(1) {}
  CRefData(const void* ptr, int refCount) : x0_ptr(ptr), x4_refCount(refCount) {}
  ~CRefData() {}

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
  rc_ptr() : x0_refData(&CRefData::sNull) { x0_refData->AddRef(); }
  rc_ptr(const T* ptr) : x0_refData(new CRefData(ptr)) {}
  rc_ptr(const rc_ptr& other) : x0_refData(other.x0_refData) { x0_refData->AddRef(); }
  ~rc_ptr() { ReleaseData(); }
  T* GetPtr() const { return static_cast< T* >(x0_refData->GetPtr()); }
  void ReleaseData();
  T* operator->() const { return GetPtr(); }
  T& operator*() const { return *GetPtr(); }
  operator bool() const { return GetPtr() != nullptr; }

private:
  CRefData* x0_refData;
};

template < typename T >
void rc_ptr< T >::ReleaseData() {
  if (x0_refData->DelRef() <= 0) {
    delete GetPtr();
    delete x0_refData;
  }
}

template < typename T >
class ncrc_ptr : public rc_ptr< T > {
public:
  ncrc_ptr() {}
  ncrc_ptr(T* ptr) : rc_ptr< T >(ptr) {}
  ncrc_ptr(const rc_ptr< T >& other) : rc_ptr< T >(other) {}
};

template < typename T >
bool operator==(const rc_ptr< T >& left, const rc_ptr< T >& right) {
  return left.GetPtr() == right.GetPtr();
}

} // namespace rstl

#endif // _RSTL_RC_PTR
