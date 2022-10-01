#ifndef _IOBJECTSTORE_HPP
#define _IOBJECTSTORE_HPP

#include "types.h"
#include "Kyoto/CToken.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/rc_ptr.hpp"

class IObjectStore {
public:
  virtual CToken GetObj(const SObjectTag& tag, CVParamTransfer xfer) = 0;
  virtual CToken GetObj(const SObjectTag& tag) = 0;
  virtual CToken GetObj(const char* name) = 0;
  virtual CToken GetObj(const char* name, CVParamTransfer xfer) = 0;
  virtual bool HasObject(const SObjectTag& tag) = 0;
  virtual bool ObjectIsLive(const SObjectTag& tag) = 0;
  virtual unkptr GetFactory() = 0;
  virtual void Flush() = 0;
  virtual void ObjectUnreferenced(const SObjectTag& tag) = 0;
};

#endif
