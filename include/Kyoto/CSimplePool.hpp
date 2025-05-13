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
  virtual CToken GetObj(const SObjectTag& tag, const CVParamTransfer& xfer);
  virtual CToken GetObj(const SObjectTag& tag);
  virtual CToken GetObj(const char* name);
  virtual CToken GetObj(const char* name, const CVParamTransfer& xfer);
  virtual bool HasObject(const SObjectTag& tag) const;
  virtual bool ObjectIsLive(const SObjectTag& tag) const;
  virtual IFactory& GetFactory() const { return x18_factory; }
  virtual void Flush();
  virtual void ObjectUnreferenced(const SObjectTag& tag);
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
