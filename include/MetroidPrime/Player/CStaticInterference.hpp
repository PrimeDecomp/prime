#ifndef _CSTATICINTERFERENCE
#define _CSTATICINTERFERENCE

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/vector.hpp"

class CStaticInterferenceSource {
public:
  CStaticInterferenceSource(TUniqueId id, float magnitude, float timeLeft)
  : x0_id(id), x4_magnitude(magnitude), x8_timeLeft(timeLeft) {}

  const TUniqueId GetSourceId() const { return x0_id; }
  const float GetIntensity() const { return x4_magnitude; }
  void SetIntensity(const float v) { x4_magnitude = v; }
  const float GetTime() const { return x8_timeLeft; }
  void SetTime(const float v) { x8_timeLeft = v; }

private:
  TUniqueId x0_id;
  float x4_magnitude;
  float x8_timeLeft;
};

class CStateManager;

class CStaticInterference {
public:
  CStaticInterference(int sourceCount);

  void AddSource(TUniqueId id, float magnitude, float duration);
  void RemoveSource(TUniqueId id);
  void Update(CStateManager&, float dt);
  float GetTotalInterference() const;

private:
  rstl::vector< CStaticInterferenceSource > sources;
};

#endif // _CSTATICINTERFERENCE
