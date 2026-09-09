#pragma inline_max_size(250)

#include "MetroidPrime/Player/CPlayerEnergyDrain.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "rstl/algorithm.hpp"

CPlayerEnergyDrain::CPlayerEnergyDrain(uint numSources) : x10_energyDrainTime(0.f) {
  x0_sources.reserve(numSources);
}

bool CPlayerEnergyDrain::AddEnergyDrainSource(TUniqueId id, float intensity) {
  const CEnergyDrainSource source(id, intensity);
  AUTO(it, rstl::binary_find(x0_sources.begin(), x0_sources.end(), source));
  if (it != x0_sources.end()) {
    it->SetEnergyDrainIntensity(intensity);
    return true;
  }
  if (x0_sources.size() < x0_sources.capacity()) {
    AUTO(insertAt, rstl::lower_bound(x0_sources.begin(), x0_sources.end(), source));
    x0_sources.insert(insertAt, source);
    return true;
  }
  return false;
}

void CPlayerEnergyDrain::RemoveEnergyDrainSource(TUniqueId id) {
  const CEnergyDrainSource source(id, 0.f);
  AUTO(it, rstl::binary_find(x0_sources.begin(), x0_sources.end(), source));
  if (it != x0_sources.end()) {
    x0_sources.erase(it);
  }
}

float CPlayerEnergyDrain::GetEnergyDrainIntensity() const {
  float intensity = 0.f;
  for (AUTO(it, x0_sources.begin()); it != x0_sources.end(); ++it) {
    intensity += it->GetEnergyDrainIntensity();
  }
  return intensity;
}

void CPlayerEnergyDrain::ProcessEnergyDrain(const CStateManager& mgr, float dt) {
  for (AUTO(it, x0_sources.begin()); it != x0_sources.end(); ++it) {
    if (!mgr.GetObjectById(it->GetEnergyDrainSourceId())) {
      RemoveEnergyDrainSource(it->GetEnergyDrainSourceId());
    }
  }
  x10_energyDrainTime = x0_sources.size() > 0 ? x10_energyDrainTime + dt : 0.f;
}
