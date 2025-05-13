#ifndef _CSIMPLEPOOL
#define _CSIMPLEPOOL

#include "Kyoto/CVParamTransfer.hpp"
#include "types.h"

#include "rstl/hash_map.hpp"
#include "rstl/rc_ptr.hpp"

#include "Kyoto/CToken.hpp"
#include "Kyoto/IObjectStore.hpp"

class IFactory;
class CSimplePool : public IObjectStore {
public:
  CSimplePool(IFactory& factory);
  ~CSimplePool();
  void DebugDumpPool() const;
  CToken GetObj(const SObjectTag& tag, const CVParamTransfer& xfer) override;
  CToken GetObj(const SObjectTag& tag) override;
  CToken GetObj(const char* name) override;
  CToken GetObj(const char* name, const CVParamTransfer& xfer) override;
  bool HasObject(const SObjectTag& tag) const override;
  bool ObjectIsLive(const SObjectTag& tag) const override;
  IFactory& GetFactory() const override { return x18_factory; }
  void Flush() override;
  void ObjectUnreferenced(const SObjectTag& tag) override;
  rstl::vector< SObjectTag > GetReferencedTags();

private:
  uchar x4_;
  uchar x5_;
  rstl::hash_map< unkptr, unkptr, void, void > x8_resources;
  IFactory& x18_factory;
  CVParamTransfer x1c_paramXfr;
};
CHECK_SIZEOF(CSimplePool, 0x20)

extern CSimplePool* gpSimplePool;

#endif // _CSIMPLEPOOL
