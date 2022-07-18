#ifndef _CRESFACTORY_HPP
#define _CRESFACTORY_HPP

#include "types.h"

#include "rstl/list.hpp"

#include "CFactoryMgr.hpp"
#include "CResLoader.hpp"

class CResFactory {
public:
  virtual ~CResFactory() {}

  void AsyncIdle(u32 time);

  CResLoader& GetResLoader() { return x4_resLoader; }

private:
  CResLoader x4_resLoader;
  CFactoryMgr x5c_factoryMgr;
  u32 x94_;
  u32 x98_;
  u32 x9c_;
  u32 xa0_;
  u32 xa4_;
  u32 xa8_;
  u32 xac_;
  rstl::list< void > xb0_;
};

extern CResFactory* gpResourceFactory;

#endif
