#ifndef _RSTL_RC_PTR
#define _RSTL_RC_PTR

#include "types.h"
#include "rstl/allocator.hpp"
namespace rstl {
class CRefData {
public:
  CRefData(const void* ptr) : mPtr(ptr), mRefCount(1) {}
  CRefData(const void* ptr, int refCount) : mPtr(ptr), mRefCount(refCount) {}
  ~CRefData() {}

  void* GetPtr() const { return const_cast< void* >(mPtr); }
  int GetRefCount() const { return mRefCount; }
  int AddRef() { return ++mRefCount; }
  int DelRef() { return --mRefCount; }

  const void* mPtr;
  int mRefCount;

  static CRefData sNull;
};

template < typename T >
class rc_ptr {
public:
  rc_ptr() : mRefData(&CRefData::sNull) { mRefData->AddRef(); }
  rc_ptr(const T* ptr) : mRefData(rs_new CRefData(ptr)) {}
  rc_ptr(const rc_ptr& other) : mRefData(other.mRefData) { mRefData->AddRef(); }
  ~rc_ptr() { ReleaseData(); }
  rc_ptr& operator=(const rc_ptr& other) {
    if (mRefData != other.mRefData) {
      ReleaseData();
      mRefData = other.mRefData;
      mRefData->AddRef();
    }
    return *this;
  }
  T* GetPtr() const { return static_cast< T* >(mRefData->GetPtr()); }
  bool IsNull() const { return GetPtr() == nullptr; }
  template < typename U >
  void Assign(const U* ptr) {
    const T* base = ptr;
    ReleaseData();
    mRefData = rs_new CRefData(base);
  }
  void ReleaseData();
  void reset() {
    ReleaseData();
    mRefData = &CRefData::sNull;
    mRefData->AddRef();
  }
  T* operator->() const {
    RS_ASSERT(!IsNull(), "rstl precondition");
    return GetPtr();
  }
  T& operator*() const { return *GetPtr(); }
  operator bool() const { return GetPtr() != nullptr; }

private:
  CRefData* mRefData;
};

template < typename T >
void rc_ptr< T >::ReleaseData() {
  if (mRefData->DelRef() <= 0) {
    T* const ptr = GetPtr();
    delete ptr;
    delete mRefData;
  }
}

template < typename T >
class ncrc_ptr : public rc_ptr< T > {
public:
  ncrc_ptr() {}
  ncrc_ptr(T* ptr) : rc_ptr< T >(ptr) {}
  ncrc_ptr(const rc_ptr< T >& other) : rc_ptr< T >(other) {}
  ncrc_ptr& operator=(const rc_ptr< T >& other) {
    rc_ptr< T >::operator=(other);
    return *this;
  }
  template < typename U >
  ncrc_ptr& operator=(const U* ptr) {
    rc_ptr< T >::Assign(ptr);
    return *this;
  }
};

template < typename T >
bool operator==(const rc_ptr< T >& left, const rc_ptr< T >& right) {
  return left.GetPtr() == right.GetPtr();
}

} // namespace rstl

#endif // _RSTL_RC_PTR
