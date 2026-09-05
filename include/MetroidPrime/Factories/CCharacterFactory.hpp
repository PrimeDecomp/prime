#ifndef _CCHARACTERFACTORY
#define _CCHARACTERFACTORY

#include "types.h"

#include "Kyoto/Animation/CAdditiveAnimationInfo.hpp"
#include "Kyoto/Animation/CAnimationManager.hpp"
#include "Kyoto/Animation/CAnimSysContext.hpp"
#include "Kyoto/Animation/CCharacterInfo.hpp"
#include "Kyoto/Animation/CTransitionManager.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/IFactory.hpp"
#include "Kyoto/IObjFactory.hpp"
#include "Kyoto/TToken.hpp"
#include "rstl/pair.hpp"
#include "rstl/rc_ptr.hpp"
#include "rstl/vector.hpp"

class CAllFormatsAnimSource;
class CAnimCharacterSet;
class CAnimationManager;
class CAnimSysContext;
class CCharLayoutInfo;
class CTransitionManager;

class CCharacterFactory : public IObjFactory {
public:
  ~CCharacterFactory() override {}

  class CDummyFactory : public IFactory {
  public:
    CFactoryFnReturn Build(const SObjectTag& tag, const CVParamTransfer& params) override;
    void BuildAsync(const SObjectTag& tag, const CVParamTransfer& params, IObj** out) override;
    void CancelBuild(const SObjectTag& tag) override;
    bool CanBuild(const SObjectTag&) override { return true; }
    const SObjectTag* GetResourceIdByName(const char*) const override { return nullptr; }
  };

  CCharacterFactory(CSimplePool& store, const CAnimCharacterSet& ancs, CAssetId selfId);
  int GetEventResourceIdForAnimResourceId(int id) const;

private:
  rstl::vector< CCharacterInfo > x4_charInfoDB;
  rstl::vector< TToken< CCharLayoutInfo > > x14_charLayoutInfoDB;
  rstl::ncrc_ptr< CAnimSysContext > x24_sysContext;
  rstl::rc_ptr< CAnimationManager > x28_animMgr;
  rstl::rc_ptr< CTransitionManager > x2c_transMgr;
  rstl::vector< TCachedToken< CAllFormatsAnimSource > > x30_animSourceDB;
  rstl::vector< rstl::pair< uint, CAdditiveAnimationInfo > > x40_additiveInfo;
  CAdditiveAnimationInfo x50_defaultAdditiveInfo;
  rstl::vector< rstl::pair< int, int > > x58_animResources;
  CAssetId x68_selfId;
  CDummyFactory x6c_dummyFactory;
  CSimplePool x70_cacheResPool;
};

NESTED_CHECK_SIZEOF(CCharacterFactory, CDummyFactory, 0x4)
CHECK_SIZEOF(CCharacterFactory, 0x90)

#endif // _CCHARACTERFACTORY
