#ifndef MP1_CPROJECTILEWEAPONDATAFACTORY_HPP
#define MP1_CPROJECTILEWEAPONDATAFACTORY_HPP
#include <Kyoto/CFactoryFnReturn.hpp>

class CWeaponDescription;
class CProjectileWeaponDataFactory {
public:
  static CWeaponDescription* GetGeneratorDesc(CInputStream& in, CSimplePool* pool);
  static CWeaponDescription* CreateGeneratorDescription(CInputStream& in, CSimplePool* pool);
  static void CreateWPSM(CWeaponDescription* desc, CInputStream& in, CSimplePool* pool);
};

CFactoryFnReturn FProjectileWeaponDataFactory(const SObjectTag& tag, CInputStream& in,
                                              const CVParamTransfer& xfer);

#endif // MP1_CPROJECTILEWEAPONDATAFACTORY_HPP
