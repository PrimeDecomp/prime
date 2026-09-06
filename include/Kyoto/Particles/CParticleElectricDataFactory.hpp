#ifndef _CPARTICLEELECTRICDATAFACTORY
#define _CPARTICLEELECTRICDATAFACTORY

#include "Kyoto/CFactoryFnReturn.hpp"

class CElectricDescription;
class CInputStream;
class CSimplePool;

class CParticleElectricDataFactory {
public:
  static CElectricDescription* GetGeneratorDesc(CInputStream& in, CSimplePool* pool);

private:
  static CElectricDescription* CreateGeneratorDescription(CInputStream& in, CSimplePool* pool);
  static void LoadELSMTokens(CElectricDescription* desc);
  static bool CreateELSM(CElectricDescription* desc, CInputStream& in, CSimplePool* pool);
};

CFactoryFnReturn FParticleElectricDataFactory(const SObjectTag& tag, CInputStream& in,
                                              const CVParamTransfer& transfer);

#endif // _CPARTICLEELECTRICDATAFACTORY
