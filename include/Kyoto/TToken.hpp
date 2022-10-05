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
  TToken(T* obj) : CToken(TObjOwnerDerivedFromIObj< T >::GetNewDerivedObject(obj).release()) {}
  TToken(const rstl::auto_ptr< T >& obj) : CToken(GetIObjObjectFor(obj).release()) {}

  T* GetT() { return reinterpret_cast< T* >(CToken::GetObj()->GetContents()); }
  T* operator*() { return GetT(); }

  static inline rstl::auto_ptr< TObjOwnerDerivedFromIObj< T > >
  GetIObjObjectFor(const rstl::auto_ptr< T >& obj) {
    return TObjOwnerDerivedFromIObj< T >::GetNewDerivedObject(obj);
  }
};

template < typename T >
class TCachedToken : public TToken< T > {
public:
  TCachedToken() {}
  TCachedToken(const CToken& token) : TToken< T >(token), x8_item(nullptr) {}

  T* operator*() { return x8_item; }

private:
  T* x8_item;
};

template < typename T >
class TLockedToken {
public:
  TLockedToken() {}
  TLockedToken(const CToken& token) : x0_token(token), x8_item(*x0_token) {}
  TLockedToken(const TLockedToken< T >& token) : x0_token(token), x8_item(*token) {
    x0_token.Lock();
  }

  TLockedToken& operator=(const TLockedToken< T >& token) {
    x0_token = token;
    x8_item = *token;
    return *this;
  }

  operator const TToken< T >&() const { return x0_token; }
  T* operator*() const { return x8_item; }
  bool IsLoaded() const { return x0_token.IsLoaded(); }

private:
  TToken< T > x0_token;
  T* x8_item;
};

#endif
