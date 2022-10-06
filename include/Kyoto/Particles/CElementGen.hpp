#ifndef _CELEMENTGEN_HPP
#define _CELEMENTGEN_HPP

#include "types.h"

class CElementGen {
public:
  enum EModelOrientationType { kMOT_Normal, kMOT_One };
  enum EOptionalSystemFlags { kOSF_None, kOSF_One, kOSF_Two };
  enum LightType { kLT_None = 0, kLT_Custom = 1, kLT_Directional = 2, kLT_Spot = 3 };

  CElementGen(TToken<CGenDescription>, EModelOrientationType = kMOT_Normal, EOptionalSystemFlags = kOSF_One);

  static void Initialize();
  static void ShutDown();

private:
  u8 x0_pad[0x340];
};
CHECK_SIZEOF(CElementGen, 0x340)

#endif
