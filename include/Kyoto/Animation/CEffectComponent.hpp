#ifndef _CEFFECTCOMPONENT
#define _CEFFECTCOMPONENT

#include "types.h"

#include "Kyoto/Particles/CParticleData.hpp"

class CEffectComponent {
private:
  rstl::string x0_name;
  SObjectTag x10_tag;
  rstl::string x18_boneName;
  float x28_scale;
  CParticleData::EParentedMode x2c_parentedMode;
  uint x30_flags;
};

#endif // _CEFFECTCOMPONENT
