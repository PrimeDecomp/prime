#ifndef _CRESFACTORY
#define _CRESFACTORY

#include "Kyoto/Streams/CInputStream.hpp"
#include "types.h"

#include "rstl/list.hpp"

#include <Kyoto/IFactory.hpp>
#include "Kyoto/CFactoryMgr.hpp"
#include "Kyoto/CResLoader.hpp"

class CResFactory : public IFactory {
public:
  CResFactory();

  ~CResFactory() override;
  CFactoryFnReturn Build(const SObjectTag&, const CVParamTransfer&) override;
  void BuildAsync(const SObjectTag&, const CVParamTransfer&, IObj**) override;
  void CancelBuild(const SObjectTag&) override;
  bool CanBuild(const SObjectTag&) override;
  const SObjectTag* GetResourceIdByName(const char* name) const override;

  FourCC GetResourceTypeById(CAssetId id) { return GetResLoader().GetResourceTypeById(id); }

  uint ResourceSize(const SObjectTag& tag) const { return x4_resLoader.ResourceSize(tag); }

  void AsyncIdle(uint time);

  CResLoader& GetResLoader() { return x4_resLoader; }

  CInputStream* LoadResourceFromMemorySync(const SObjectTag& tag, const void* extBuf) {
    return x4_resLoader.LoadResourceFromMemorySync(tag, extBuf);
  }
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
  rstl::list< unkptr > xb0_;
};
CHECK_SIZEOF(CResFactory, 0xc8);

extern CResFactory* gpResourceFactory;

#endif // _CRESFACTORY
