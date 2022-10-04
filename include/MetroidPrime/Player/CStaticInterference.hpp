#ifndef _CSTATICINTERFERENCE_HPP
#define _CSTATICINTERFERENCE_HPP

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"
#include "rstl/vector.hpp"

struct CStaticInterferenceSource {
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

#endif
