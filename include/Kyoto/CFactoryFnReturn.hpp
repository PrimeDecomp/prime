#ifndef _CFACTORYFNRETURN
#define _CFACTORYFNRETURN
#include <Kyoto/TToken.hpp>

class CFactoryFnReturn {
public:
  template < typename T >
  CFactoryFnReturn(T* ptr) : obj(TToken< T >::GetIObjObjectFor(ptr).release()) {}

  const rstl::auto_ptr< CObjOwnerDerivedFromIObjUntyped >& GetObjForTransfer() const { return obj; }

private:
  rstl::auto_ptr< CObjOwnerDerivedFromIObjUntyped > obj;
};

#endif // _CFACTORYFNRETURN
