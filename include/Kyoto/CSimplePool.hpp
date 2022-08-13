#ifndef _CSIMPLEPOOL_HPP
#define _CSIMPLEPOOL_HPP

#include "types.h"

#include "rstl/map.hpp"

#include "Kyoto/CToken.hpp"
#include "Kyoto/IObjectStore.hpp"

class CSimplePool {
public:
  virtual CToken GetObj(const SObjectTag& tag, CVParamTransfer xfer);
  virtual CToken GetObj(const SObjectTag& tag);
  virtual CToken GetObj(const char* name);
  virtual CToken GetObj(const char* name, CVParamTransfer xfer);
  virtual bool HasObject(const SObjectTag& tag);
  virtual bool ObjectIsLive(const SObjectTag& tag);
  virtual unkptr GetFactory();
  virtual void Flush();
  virtual void ObjectUnreferenced(const SObjectTag& tag);

private:
  u8 x4_;
  u8 x5_;
  rstl::map< unkptr, unkptr > x8_resources;
  unkptr x18_factory;
  CVParamTransfer x1c_paramXfr;
};

extern CSimplePool* gpSimplePool;

#endif
