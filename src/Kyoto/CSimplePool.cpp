#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/CVParamTransfer.hpp"
#include "Kyoto/SObjectTag.hpp"

CSimplePool::CSimplePool(IFactory& factory)
: x18_factory(factory), x1c_paramXfr(CVParamTransfer::Null()) {}

CSimplePool::~CSimplePool() {
  DebugDumpPool();
}

void CSimplePool::ObjectUnreferenced(const SObjectTag& tag) {}

CToken CSimplePool::GetObj(const SObjectTag& tag, const CVParamTransfer& xfer) { return CToken(); }

CToken CSimplePool::GetObj(const SObjectTag& tag) { return CSimplePool::GetObj(tag, x1c_paramXfr); }

CToken CSimplePool::GetObj(const char* name) { return CToken(); }

CToken CSimplePool::GetObj(const char* name, const CVParamTransfer& xfer) { return CToken(); }

bool CSimplePool::HasObject(const SObjectTag& tag) const {
  return false;
}

bool CSimplePool::ObjectIsLive(const SObjectTag& tag) const {
  return false;
}

void CSimplePool::Flush() {
  
}

void CSimplePool::DebugDumpPool() const {
  
}

rstl::vector<SObjectTag> CSimplePool::GetReferencedTags() {
  return rstl::vector<SObjectTag>();
}
