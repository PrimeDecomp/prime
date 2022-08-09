#ifndef _CTOKEN_HPP
#define _CTOKEN_HPP

#include "types.h"

#include "Kyoto/IObjectStore.hpp"

#include "rstl/auto_ptr.hpp"

class CToken {
public:
  ~CToken();

private:
  CObjectReference* x0_objRef;
  bool x4_lockHeld;
};

class IObj {
public:
  virtual ~IObj() {}
};

class TObjOwnerDerivedFromIObjUntyped : public IObj {
public:
  template < typename T >
  TObjOwnerDerivedFromIObjUntyped(const rstl::auto_ptr< T >& obj) : m_objPtr(obj.release()) {}

protected:
  void* m_objPtr;
};

template < typename T >
class TObjOwnerDerivedFromIObj : public TObjOwnerDerivedFromIObjUntyped {
  TObjOwnerDerivedFromIObj(const rstl::auto_ptr< T >& obj) : TObjOwnerDerivedFromIObjUntyped(obj) {}

public:
  static rstl::auto_ptr< TObjOwnerDerivedFromIObj< T > > GetNewDerivedObject(const rstl::auto_ptr< T >& obj) {
    return new TObjOwnerDerivedFromIObj< T >(obj);
  }
  ~TObjOwnerDerivedFromIObj() override { delete Owned(); }
  T* Owned() { return static_cast< T* >(m_objPtr); }
};

template < typename T >
class TToken : public CToken {
public:
  static rstl::auto_ptr< TObjOwnerDerivedFromIObj< T > > GetIObjObjectFor(const rstl::auto_ptr< T >& obj) {
    return TObjOwnerDerivedFromIObj< T >::GetNewDerivedObject(obj);
  }
};

template < typename T >
class TCachedToken : public TToken< T > {
private:
  T* x8_item;
};

template < typename T >
class TLockedToken : public TCachedToken< T > {};

#endif
