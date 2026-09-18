#ifndef _RSTL_RC_PTR
#define _RSTL_RC_PTR

#include "types.h"
#include "rstl/allocator.hpp"
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

#if VERSION >= VERSION_R3IJ_00
  static int sNull;
#else
  static CRefData sNull;
#endif
};

template < typename T >
class rc_ptr {
public:
#if VERSION >= VERSION_R3IJ_00
  rc_ptr() : x0_ptr(nullptr), x4_count(&CRefData::sNull) { ++*x4_count; }
  rc_ptr(const T* ptr) : x0_ptr(ptr), x4_count(rs_new int(1)) {}
  rc_ptr(const rc_ptr& other) : x0_ptr(other.x0_ptr), x4_count(other.x4_count) { ++*x4_count; }
#else
  rc_ptr() : x0_refData(&CRefData::sNull) { x0_refData->AddRef(); }
  rc_ptr(const T* ptr) : x0_refData(rs_new CRefData(ptr)) {}
  rc_ptr(const rc_ptr& other) : x0_refData(other.x0_refData) { x0_refData->AddRef(); }
#endif
  ~rc_ptr() { ReleaseData(); }
  rc_ptr& operator=(const rc_ptr& other) {
#if VERSION >= VERSION_R3IJ_00
    if (x4_count != other.x4_count) {
      ReleaseData();
      x0_ptr = other.x0_ptr;
      x4_count = other.x4_count;
      ++*x4_count;
    }
#else
    if (x0_refData != other.x0_refData) {
      ReleaseData();
      x0_refData = other.x0_refData;
      x0_refData->AddRef();
    }
#endif
    return *this;
  }
#if VERSION >= VERSION_R3IJ_00
  T* GetPtr() const { return const_cast< T* >(x0_ptr); }
#else
  T* GetPtr() const { return static_cast< T* >(x0_refData->GetPtr()); }
#endif
  bool IsNull() const { return GetPtr() == nullptr; }
  template < typename U >
  void Assign(const U* ptr) {
    const T* base = ptr;
    ReleaseData();
#if VERSION >= VERSION_R3IJ_00
    x0_ptr = base;
    x4_count = rs_new int(1);
#else
    x0_refData = rs_new CRefData(base);
#endif
  }
  void ReleaseData();
  void reset() {
    ReleaseData();
#if VERSION >= VERSION_R3IJ_00
    x0_ptr = nullptr;
    x4_count = &CRefData::sNull;
    ++*x4_count;
#else
    x0_refData = &CRefData::sNull;
    x0_refData->AddRef();
#endif
  }
  T* operator->() const { return GetPtr(); }
  T& operator*() const { return *GetPtr(); }
  operator bool() const { return GetPtr() != nullptr; }

private:
#if VERSION >= VERSION_R3IJ_00
  const T* x0_ptr;
  int* x4_count;
#else
  CRefData* x0_refData;
#endif
};

template < typename T >
void rc_ptr< T >::ReleaseData() {
#if VERSION >= VERSION_R3IJ_00
  if (--*x4_count <= 0) {
    delete x0_ptr;
    delete x4_count;
  }
#else
  if (x0_refData->DelRef() <= 0) {
    T* const ptr = GetPtr();
    delete ptr;
    delete x0_refData;
  }
#endif
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
