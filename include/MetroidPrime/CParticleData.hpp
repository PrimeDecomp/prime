#ifndef _CPARTICLEDATA
#define _CPARTICLEDATA

#include "types.h"

#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/string.hpp"

class CParticleData {
public:
  enum EParentedMode {
    kPM_Initial,
    kPM_ContinuousEmitter,
    kPM_ContinuousSystem,
  };

private:
  uint x0_duration;
  SObjectTag x4_particle;
  rstl::string xc_boneName;
  f32 x1c_scale;
  EParentedMode x20_parentMode;
};

class CAuxiliaryParticleData {
private:
  uint x0_duration;
  SObjectTag x4_particle;
  CVector3f xc_translation;
  f32 x18_scale;
};

#endif // _CPARTICLEDATA
