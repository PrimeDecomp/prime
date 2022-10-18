#ifndef _CPARTICLEDATAFACTORY
#define _CPARTICLEDATAFACTORY

#include "Kyoto/Particles/IElement.hpp"
#include "Kyoto/SObjectTag.hpp"

class CInputStream;

class CParticleDataFactory {
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
};

#endif // _CPARTICLEDATAFACTORY
