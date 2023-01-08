#ifndef _CPARTICLEDATA
#define _CPARTICLEDATA

#include "types.h"

#include "Kyoto/IObjectStore.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/string.hpp"

class CInputStream;
class CParticleData {
public:
  enum EParentedMode {
    kPM_Initial,
    kPM_ContinuousEmitter,
    kPM_ContinuousSystem,
  };

  CParticleData(int duration, const SObjectTag& tag, const rstl::string& boneName, float scale,
                EParentedMode mode)
  : x0_duration(duration)
  , x4_particle(tag)
  , xc_boneName(boneName)
  , x1c_scale(scale)
  , x20_parentMode(mode) {}

  CParticleData(CInputStream& in);

private:
  int x0_duration;
  SObjectTag x4_particle;
  rstl::string xc_boneName;
  float x1c_scale;
  EParentedMode x20_parentMode;
};

class CAuxiliaryParticleData {
private:
  uint x0_duration;
  SObjectTag x4_particle;
  CVector3f xc_translation;
  float x18_scale;
};

#endif // _CPARTICLEDATA
