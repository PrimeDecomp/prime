#ifndef _IOBJ
#define _IOBJ

#include "types.h"

#include "Kyoto/SObjectTag.hpp"
#include "rstl/auto_ptr.hpp"

extern const SObjectTag gkInvalidObjectTag;

class IObj {
public:
  virtual ~IObj() {}
};

class CObjOwnerDerivedFromIObjUntyped : public IObj {
public:
  ~CObjOwnerDerivedFromIObjUntyped() {}
  template < typename T >
  CObjOwnerDerivedFromIObjUntyped(T* obj) : m_objPtr(obj) {}
  template < typename T >
  CObjOwnerDerivedFromIObjUntyped(const rstl::auto_ptr< T >& obj) : m_objPtr(obj.release()) {}

  void* GetContents() { return m_objPtr; }

protected:
  void* m_objPtr;
};

template < typename T >
class TObjOwnerDerivedFromIObj : public CObjOwnerDerivedFromIObjUntyped {
public:
  ~TObjOwnerDerivedFromIObj() {
    if (Owned()) {
      delete Owned();
    }
  }
  T* Owned() { return static_cast< T* >(m_objPtr); }

  static rstl::auto_ptr< TObjOwnerDerivedFromIObj< T > > GetNewDerivedObject(T* obj) {
    return new TObjOwnerDerivedFromIObj< T >(obj);
  }
  static rstl::auto_ptr< TObjOwnerDerivedFromIObj< T > >
  GetNewDerivedObject(const rstl::auto_ptr< T >& obj) {
    return new TObjOwnerDerivedFromIObj< T >(obj);
  }

private:
  TObjOwnerDerivedFromIObj(T* obj) : CObjOwnerDerivedFromIObjUntyped(obj) {}
  TObjOwnerDerivedFromIObj(const rstl::auto_ptr< T >& obj) : CObjOwnerDerivedFromIObjUntyped(obj) {}
};

#endif // _IOBJ
