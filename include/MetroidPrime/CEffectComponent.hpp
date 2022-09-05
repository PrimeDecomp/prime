#ifndef _CEFFECTCOMPONENT_HPP
#define _CEFFECTCOMPONENT_HPP

#include "types.h"

#include "MetroidPrime/CParticleData.hpp"

class CEffectComponent {
private:
  rstl::string x0_name;
  SObjectTag x10_tag;
  rstl::string x18_boneName;
  f32 x28_scale;
  CParticleData::EParentedMode x2c_parentedMode;
  uint x30_flags;
};

#endif