#ifndef _CRESFACTORY_HPP
#define _CRESFACTORY_HPP

#include "types.h"

#include "rstl/list.hpp"

#include "Kyoto/CFactoryMgr.hpp"
#include "Kyoto/CResLoader.hpp"

class CResFactory {
public:
  virtual ~CResFactory() {}

  void AsyncIdle(uint time);

  CResLoader& GetResLoader() { return x4_resLoader; }

private:
  CResLoader x4_resLoader;
  CFactoryMgr x5c_factoryMgr;
  uint x94_;
  uint x98_;
  uint x9c_;
  uint xa0_;
  uint xa4_;
  uint xa8_;
  uint xac_;
  rstl::list< void > xb0_;
};

extern CResFactory* gpResourceFactory;

#endif
