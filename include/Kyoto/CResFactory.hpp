#ifndef _CRESFACTORY_HPP
#define _CRESFACTORY_HPP

#include "types.h"

#include "rstl/list.hpp"

#include "Kyoto/CFactoryMgr.hpp"
#include "Kyoto/CResLoader.hpp"

class IFactory {
public:
  virtual ~IFactory() {}
  virtual CFactoryFnReturn Build(const SObjectTag&, const CVParamTransfer&, CObjectReference*) = 0;
  virtual void BuildAsync(const SObjectTag&, const CVParamTransfer&, rstl::auto_ptr< IObj >*,
                          CObjectReference*) = 0;
  virtual void CancelBuild(const SObjectTag&) = 0;
  virtual bool CanBuild(const SObjectTag&) = 0;
  virtual const SObjectTag* GetResourceIdByName(const char* name) const = 0;
  // TODO
};

class CResFactory : public IFactory {
public:
  CResFactory();
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
CHECK_SIZEOF(CResFactory, 0xc8);

extern CResFactory* gpResourceFactory;

#endif
