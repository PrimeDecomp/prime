#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/IFactory.hpp"

CSimplePool::CSimplePool(IFactory& factory)
: x18_factory(factory), x1c_paramXfr(CVParamTransfer::Null()) {}

CSimplePool::~CSimplePool() {
  Flush();
  if (x8_resources.size() > 0) {
    DebugDumpPool();
  }
}

void CSimplePool::ObjectUnreferenced(const SObjectTag& tag) {}

CToken CSimplePool::GetObj(const SObjectTag& tag, const CVParamTransfer& xfer) { return CToken(); }

CToken CSimplePool::GetObj(const SObjectTag& tag) { return CSimplePool::GetObj(tag, x1c_paramXfr); }

CToken CSimplePool::GetObj(const char* name) { return CSimplePool::GetObj(name, x1c_paramXfr); }

CToken CSimplePool::GetObj(const char* name, const CVParamTransfer& xfer) {
  const SObjectTag* tag = CSimplePool::GetFactory().GetResourceIdByName(name);
  return CSimplePool::GetObj(*tag, xfer);
}

bool CSimplePool::HasObject(const SObjectTag& tag) const { return false; }

bool CSimplePool::ObjectIsLive(const SObjectTag& tag) const { return false; }

void CSimplePool::Flush() {}

void CSimplePool::DebugDumpPool() const {}

rstl::vector< SObjectTag > CSimplePool::GetReferencedTags() { return rstl::vector< SObjectTag >(); }
