#ifndef _TTOKEN
#define _TTOKEN

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
  T* operator->() { return GetT(); }

  static rstl::auto_ptr< TObjOwnerDerivedFromIObj< T > >
  GetIObjObjectFor(const rstl::auto_ptr< T >& obj) {
    return TObjOwnerDerivedFromIObj< T >::GetNewDerivedObject(obj);
  }

  TToken< T > NonConstCopy() const { return *const_cast< TToken< T >* >(this); }
};

template < typename T >
class TCachedToken : public TToken< T > {
public:
  TCachedToken() {}
  TCachedToken(const CToken& token) : TToken< T >(token), x8_item(nullptr) {}
  // __ct__23TCachedToken<8CTexture>FRC23TCachedToken<8CTexture>
  // __as__21TCachedToken<6CModel>FRC21TCachedToken<6CModel>

  // T* operator*() { return x8_item; }
  T* GetObject() const { return x8_item; }

  bool TryCache() {
    if (x8_item != nullptr) {
      return true;
    }
    if (CToken::HasLock() && CToken::IsLoaded()) {
      x8_item = TToken< T >::GetT();
      return true;
    } else {
      return false;
    }
  }

  // Lock__23TCachedToken<8CTexture>Fv
  // GetObject__23TCachedToken<8CTexture>CFv
  // TryCache__23TCachedToken<8CTexture>Fv
  // GetToken__21TCachedToken<6CModel>CFv

  void Unlock() {
    x8_item = nullptr;
    TToken< T >::Unlock();
  }

  bool IsLoaded() const { return x8_item != nullptr || CToken::IsLoaded(); }

private:
  T* x8_item;
};

template < typename T >
class TLockedToken : public TToken< T > {
public:
  TLockedToken() {}
  TLockedToken(T* item) : TToken< T >(item), x8_item(item) { CToken::Lock(); }
  TLockedToken(const CToken& token) : TToken< T >(token), x8_item(TToken< T >::GetT()) {}
  TLockedToken(const TLockedToken< T >& token) : TToken< T >(token), x8_item(*token) {
    CToken::Lock();
  }

  TLockedToken& operator=(const TLockedToken< T >& token) {
    TToken< T >::operator=(token);
    x8_item = *token;
    return *this;
  }

  T* operator*() const { return x8_item; }
  T* operator->() const { return x8_item; }

private:
  T* x8_item;
};

#endif // _TTOKEN
