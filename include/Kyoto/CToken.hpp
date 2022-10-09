#ifndef _CTOKEN
#define _CTOKEN

#include "types.h"

#include "Kyoto/CObjectReference.hpp"
#include "Kyoto/IObj.hpp"

class CObjectReference;

class CToken {
public:
  CToken() {}
  CToken(IObj* obj); // : x0_objRef(new CObjectReference(obj)), x4_lockHeld(false) {}
  CToken(const CToken& other);
  ~CToken();

  CToken& operator=(const CToken&);

  CObjOwnerDerivedFromIObjUntyped* GetObj();
  void Lock();
  bool IsLoaded() const { return x0_objRef->IsLoaded(); }

private:
  CObjectReference* x0_objRef;
  bool x4_lockHeld;
};

#endif // _CTOKEN
