#ifndef _CPARTICLESWOOSHDATAFACTORY
#define _CPARTICLESWOOSHDATAFACTORY
#include "Kyoto/CFactoryFnReturn.hpp"
#include "Kyoto/Particles/CSwooshDescription.hpp"

class CInputStream;
class CSimplePool;
class CParticleSwooshDataFactory {
public:
  static CSwooshDescription* GetGeneratorDesc(CInputStream& in, CSimplePool* pool);
  static CSwooshDescription* CreateGeneratorDescription(CInputStream& in, CSimplePool* pool);
  static bool CreateWPSM(CSwooshDescription* swoosh, CInputStream& in, CSimplePool* pool);
};

CFactoryFnReturn FParticleSwooshDataFactory(const SObjectTag& tag, CInputStream& in,
                                                   const CVParamTransfer& transfer);
#endif
