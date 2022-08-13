#ifndef _IOBJ_HPP
#define _IOBJ_HPP

#include "types.h"

#include "rstl/auto_ptr.hpp"

class IObj {
public:
  virtual ~IObj() {}
};

class CObjOwnerDerivedFromIObjUntyped : public IObj {
public:
  template < typename T >
  CObjOwnerDerivedFromIObjUntyped(T* obj) : m_objPtr(obj) {}
  template < typename T >
  CObjOwnerDerivedFromIObjUntyped(const rstl::auto_ptr< T >& obj) : m_objPtr(obj.release()) {}

protected:
  void* m_objPtr;
};

template < typename T >
class TObjOwnerDerivedFromIObj : public CObjOwnerDerivedFromIObjUntyped {
  TObjOwnerDerivedFromIObj(T* obj) : CObjOwnerDerivedFromIObjUntyped(obj) {}
  TObjOwnerDerivedFromIObj(const rstl::auto_ptr< T >& obj) : CObjOwnerDerivedFromIObjUntyped(obj) {}

public:
  static rstl::auto_ptr< TObjOwnerDerivedFromIObj< T > > GetNewDerivedObject(T* obj) { return new TObjOwnerDerivedFromIObj< T >(obj); }
  static rstl::auto_ptr< TObjOwnerDerivedFromIObj< T > > GetNewDerivedObject(const rstl::auto_ptr< T >& obj) {
    return new TObjOwnerDerivedFromIObj< T >(obj);
  }
  ~TObjOwnerDerivedFromIObj() override { delete Owned(); }
  T* Owned() { return static_cast< T* >(m_objPtr); }
};

#endif