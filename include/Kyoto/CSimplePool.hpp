#ifndef _CSIMPLEPOOL
#define _CSIMPLEPOOL

#include "types.h"

#include "rstl/hash_map.hpp"
#include "rstl/rc_ptr.hpp"

#include "Kyoto/CToken.hpp"
#include "Kyoto/IObjectStore.hpp"

class IFactory;
class CSimplePool : public IObjectStore {
public:
  CSimplePool(IFactory& factory) : x18_factory(factory) {}
  ~CSimplePool();

  virtual CToken GetObj(const SObjectTag& tag, CVParamTransfer xfer);
  virtual CToken GetObj(const SObjectTag& tag);
  virtual CToken GetObj(const char* name);
  virtual CToken GetObj(const char* name, CVParamTransfer xfer);
  virtual bool HasObject(const SObjectTag& tag);
  virtual bool ObjectIsLive(const SObjectTag& tag);
  virtual IFactory& GetFactory() { return x18_factory; }
  virtual void Flush();
  virtual void ObjectUnreferenced(const SObjectTag& tag);

private:
  uchar x4_;
  uchar x5_;
  rstl::hash_map< unkptr, unkptr, void, void > x8_resources;
  IFactory& x18_factory;
  rstl::rc_ptr< CVParamTransfer > x1c_paramXfr;
};
CHECK_SIZEOF(CSimplePool, 0x20)

extern CSimplePool* gpSimplePool;

#endif // _CSIMPLEPOOL
