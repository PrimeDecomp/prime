#ifndef _CSIMPLEPOOL_HPP
#define _CSIMPLEPOOL_HPP

#include "types.h"

#include "rstl/map.hpp"

#include "IObjectStore.hpp"

class CSimplePool {
public:
  virtual ~CSimplePool() {}

private:
  u8 x4_;
  u8 x5_;
  rstl::map< unkptr, unkptr > x8_resources;
  unkptr x18_factory;
  CVParamTransfer x1c_paramXfr;
};

extern CSimplePool* gpSimplePool;

#endif
