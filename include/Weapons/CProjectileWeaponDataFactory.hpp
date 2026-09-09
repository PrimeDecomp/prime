#ifndef _CPROJECTILEWEAPONDATAFACTORY
#define _CPROJECTILEWEAPONDATAFACTORY
#include "Kyoto/CFactoryFnReturn.hpp"

class CWeaponDescription;
class CProjectileWeaponDataFactory {
public:
  static CWeaponDescription* GetGeneratorDesc(CInputStream& in, CSimplePool* pool);
  static CWeaponDescription* CreateGeneratorDescription(CInputStream& in, CSimplePool* pool);
  static bool CreateWPSM(CWeaponDescription* desc, CInputStream& in, CSimplePool* pool);
};

const CFactoryFnReturn FProjectileWeaponDataFactory(const SObjectTag& tag, CInputStream& in,
                                                    const CVParamTransfer& xfer);

#endif // _CPROJECTILEWEAPONDATAFACTORY
