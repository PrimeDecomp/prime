#ifndef _CTOKEN
#define _CTOKEN

#include "types.h"

#include "Kyoto/CObjectReference.hpp"
#include "Kyoto/IObj.hpp"

class CObjectReference;

class CToken {
public:
  CToken() : x0_objRef(NULL), x4_lockHeld_init(0) {}
  CToken(CObjectReference* ref);
  CToken(IObj* obj); // : x0_objRef(new CObjectReference(obj)), x4_lockHeld(false) {}
  CToken(const CToken& other);
  ~CToken();

  CObjOwnerDerivedFromIObjUntyped* GetObj();
  void Lock();
  void Unlock();
  bool IsLocked() const { return x4_lockHeld; }
  bool IsLoaded() const { return x0_objRef->IsLoaded(); }
  void RemoveRef();
  CToken& operator=(const CToken&);
  bool HasReference() const { return x0_objRef != nullptr; }
  const SObjectTag& GetTag() const { return x0_objRef->GetTag(); }
  FourCC GetReferenceType() const { return GetTag().GetType(); }

  const CObjectReference* GetRef() const { return x0_objRef; }

private:
  CObjectReference* x0_objRef;
  union {
    bool x4_lockHeld;
    int x4_lockHeld_init;
  };
};

#endif // _CTOKEN
