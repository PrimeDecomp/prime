#ifndef _CTOKEN_HPP
#define _CTOKEN_HPP

#include "types.h"

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

private:
  CObjectReference* x0_objRef;
  bool x4_lockHeld;
};

#endif
