#ifndef _CFACTORYMGR_HPP
#define _CFACTORYMGR_HPP

#include "types.h"

#include "CToken.hpp"
#include "IObjectStore.hpp"
#include "Streams/CInputStream.hpp"

class CFactoryMgr {
public:
private:
  u8 pad[0x38];
};

class CFactoryFnReturn {
public:
  template < typename T >
  CFactoryFnReturn(T* ptr);
  // TODO this forces inlining, were they really manually specialized?
  // : obj(TToken< T >::GetIObjObjectFor(ptr).release()) {}

private:
  rstl::auto_ptr< TObjOwnerDerivedFromIObjUntyped > obj;
};

CFactoryFnReturn FStringTableFactory(const SObjectTag& tag, CInputStream& in, const CVParamTransfer& xfer);

#endif
