#ifndef _TTOKEN_HPP
#define _TTOKEN_HPP

#include "types.h"

#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/CToken.hpp"
#include "Kyoto/IObj.hpp"

#include "rstl/auto_ptr.hpp"

template < typename T >
class TToken : public CToken {
public:
  TToken() {}
  TToken(const CToken& token) : CToken(token) {}
  TToken(T* obj) : CToken(GetIObjObjectFor(obj).release()) {}
  TToken(const rstl::auto_ptr< T >& obj) : CToken(GetIObjObjectFor(obj).release()) {}

  static rstl::auto_ptr< TObjOwnerDerivedFromIObj< T > > GetIObjObjectFor(T* obj) {
    return TObjOwnerDerivedFromIObj< T >::GetNewDerivedObject(obj);
  }
  static rstl::auto_ptr< TObjOwnerDerivedFromIObj< T > > GetIObjObjectFor(const rstl::auto_ptr< T >& obj) {
    return TObjOwnerDerivedFromIObj< T >::GetNewDerivedObject(obj);
  }
};

template < typename T >
class TCachedToken : public TToken< T > {
public:
  TCachedToken() {}
  TCachedToken(const CToken& token) : TToken(token), x8_item(nullptr) {}

  // TODO
  operator const TToken< T >&() const;

private:
  T* x8_item;
};

template < typename T >
class TLockedToken : public TCachedToken< T > {
public:
  TLockedToken() {}
  TLockedToken(const CToken& token) : TCachedToken(token) { Lock(); }

  // TODO
  operator const TToken< T >&() const;
};

#endif