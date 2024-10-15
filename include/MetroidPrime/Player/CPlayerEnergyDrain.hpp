#ifndef _CPLAYERENERGYDRAIN
#define _CPLAYERENERGYDRAIN

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/vector.hpp"

class CStateManager;

class CEnergyDrainSource {
public:
  CEnergyDrainSource(TUniqueId src, float intensity);
  TUniqueId GetEnergyDrainSourceId() const { return x0_source; }
  void SetEnergyDrainIntensity(float in) { x4_intensity = in; }
  float GetEnergyDrainIntensity() const { return x4_intensity; }

private:
  TUniqueId x0_source;
  float x4_intensity;
};

class CPlayerEnergyDrain {
public:
  CPlayerEnergyDrain(uint numSources);

  void AddEnergyDrainSource(TUniqueId id, float intensity);
  void RemoveEnergyDrainSource(TUniqueId id);
  float GetEnergyDrainIntensity() const;
  const rstl::vector< CEnergyDrainSource >& GetEnergyDrainSources() const { return x0_sources; }
  float GetEnergyDrainTime() const { return x10_energyDrainTime; }
  void ProcessEnergyDrain(const CStateManager& mgr, float dt);

private:
  rstl::vector< CEnergyDrainSource > x0_sources;
  float x10_energyDrainTime;
};
CHECK_SIZEOF(CPlayerEnergyDrain, 0x14)

#endif // _CPLAYERENERGYDRAIN
