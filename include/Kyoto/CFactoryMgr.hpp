#ifndef _CFACTORYMGR
#define _CFACTORYMGR

#include "types.h"

#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include "Kyoto/TToken.hpp"

class CFactoryMgr {
public:
private:
  uchar pad[0x38];
};

class CFactoryFnReturn {
public:
  template < typename T >
  CFactoryFnReturn(T* ptr);
  // TODO this forces inlining, were they really manually specialized?
  // : obj(TToken< T >::GetIObjObjectFor(ptr).release()) {}

private:
  rstl::auto_ptr< CObjOwnerDerivedFromIObjUntyped > obj;
};

CFactoryFnReturn FStringTableFactory(const SObjectTag& tag, CInputStream& in,
                                     const CVParamTransfer& xfer);

#endif // _CFACTORYMGR
