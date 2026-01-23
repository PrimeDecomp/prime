#ifndef _CPARTICLEDATAFACTORY
#define _CPARTICLEDATAFACTORY

#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Particles/CElectricDescription.hpp"
#include "Kyoto/Particles/CGenDescription.hpp"
#include "Kyoto/Particles/IElement.hpp"
#include "Kyoto/SObjectTag.hpp"

class CInputStream;

class CParticleDataFactory {
public:
  static CGenDescription* GetGeneratorDesc(CInputStream& in, CSimplePool* pool, uint offset);
  static CGenDescription* CreateGeneratorDescription(CInputStream&, rstl::vector< uint >& assets,
                                                     uint offset, CSimplePool* pool);
  static bool CreateGPSM(CGenDescription* desc, CInputStream& in,
                         rstl::vector< CAssetId >& resources, CSimplePool* pool);
  static CUVElement* GetTextureElement(CInputStream& in, CSimplePool* resPool);
  static CColorElement* GetColorElement(CInputStream& in);
  static CModVectorElement* GetModVectorElement(CInputStream& in);
  static CEmitterElement* GetEmitterElement(CInputStream& in);
  static CVectorElement* GetVectorElement(CInputStream& in);
  static CRealElement* GetRealElement(CInputStream& in);
  static CIntElement* GetIntElement(CInputStream& in);

  static float GetReal(CInputStream& in);
  static int GetInt(CInputStream& in);
  static bool GetBool(CInputStream& in);
  static FourCC GetClassID(CInputStream& in);
  static rstl::optional_object< TToken< CModel > > GetModel(CInputStream& in, CSimplePool* pool);
  static rstl::optional_object< TToken< CGenDescription > >
  GetChildGeneratorDesc(CInputStream& in, CSimplePool* pool, rstl::vector< CAssetId >& resources);
  static rstl::optional_object< TToken< CSwooshDescription > >
  GetSwooshGeneratorDesc(CInputStream& in, CSimplePool* pool);
  static rstl::optional_object< CToken >
  GetElectricGeneratorDesc(CInputStream& in, CSimplePool* pool);
};

#endif // _CPARTICLEDATAFACTORY
