#include "Kyoto/CToken.hpp"
#include "Kyoto/Alloc/CMemory.hpp"

CToken::CToken(CObjectReference* ref) : x0_objRef(ref), x4_lockHeld(false) {
  x0_objRef->AddReference();
}

CToken::CToken(IObj* obj)
: x0_objRef(new ("??(??)", nullptr) CObjectReference(obj)), x4_lockHeld(false) {
  x0_objRef->AddReference();
  Lock();
}

CToken::CToken(const CToken& other) : x0_objRef(other.x0_objRef), x4_lockHeld(false) {
  x0_objRef->AddReference();
  if (other.x4_lockHeld) {
    Lock();
  }
}

CToken::~CToken() {
  if (x4_lockHeld) {
    x0_objRef->Unlock();
  }
  RemoveRef();
}

CObjOwnerDerivedFromIObjUntyped* CToken::GetObj() {
  Lock();

  return reinterpret_cast< CObjOwnerDerivedFromIObjUntyped* >(x0_objRef->GetObject());
}

void CToken::RemoveRef() {
  if (x0_objRef->RemoveReference() == 0) {
    delete x0_objRef;
  }
}

void CToken::Lock() {
  if (!x4_lockHeld) {
    x0_objRef->Lock();
    x4_lockHeld = true;
  }
}

void CToken::Unlock() {
  if (x4_lockHeld == 0) {
    return;
  }

  x0_objRef->Unlock();
  x4_lockHeld = false;
}

CToken& CToken::operator=(const CToken& other) {
  if (&other == this) {
    return *this;
  }

  Unlock();
  RemoveRef();
  x0_objRef = other.x0_objRef;
  x0_objRef->AddReference();
  if (other.x4_lockHeld) {
    Lock();
  }

  return *this;
}
