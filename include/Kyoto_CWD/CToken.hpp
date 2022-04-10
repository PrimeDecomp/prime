#ifndef _CTOKEN_HPP
#define _CTOKEN_HPP

#include "types.h"

#include "IObjectStore.hpp"

class CToken {
public:
  ~CToken();

private:
  CObjectReference* x0_objRef;
  bool x4_lockHeld;
};

template < typename T >
class TToken : public CToken {};
template < typename T >
class TCachedToken : public TToken< T > {
private:
  T* x8_item;
};
template < typename T >
class TLockedToken : public TCachedToken< T > {};

#endif
