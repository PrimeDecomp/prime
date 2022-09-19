#ifndef _CPLAYERENERGYDRAIN_HPP
#define _CPLAYERENERGYDRAIN_HPP

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/vector.hpp"

class CEnergyDrainSource {
public:
  CEnergyDrainSource(TUniqueId src, f32 intensity);
  TUniqueId GetEnergyDrainSourceId() const { return x0_source; }
  void SetEnergyDrainIntensity(f32 in) { x4_intensity = in; }
  f32 GetEnergyDrainIntensity() const { return x4_intensity; }

private:
  TUniqueId x0_source;
  f32 x4_intensity;
};

class CPlayerEnergyDrain {
private:
  rstl::vector< CEnergyDrainSource > x0_sources;
  f32 x10_energyDrainTime;
};
CHECK_SIZEOF(CPlayerEnergyDrain, 0x14)

#endif