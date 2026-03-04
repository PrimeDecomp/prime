#ifndef _CDECALDATAFACTORY
#define _CDECALDATAFACTORY
#include "Weapons/CDecalDescription.hpp"

#include "Kyoto/CFactoryFnReturn.hpp"

class CDecalDescription;
class CSimplePool;
class CInputStream;
class CDecalDataFactory {
public:
  static CDecalDescription* GetGeneratorDesc(CInputStream& in, CSimplePool* pool);
  static CDecalDescription* CreateGeneratorDescription(CInputStream& in, CSimplePool* pool);
  static void GetQuadDecalInfo(CInputStream& in, CSimplePool* pool, uint classId,
                               CDecalDescription::SQuadDescr& quad);
  static bool CreateDPSM(CDecalDescription* desc, CInputStream& in, CSimplePool* pool);
};

CFactoryFnReturn FDecalDataFactory(const SObjectTag& tag, CInputStream& in,
                                   const CVParamTransfer& transfer);
#endif
