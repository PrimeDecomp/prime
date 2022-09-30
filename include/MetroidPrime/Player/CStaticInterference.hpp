#ifndef _CSTATICINTERFERENCE_HPP
#define _CSTATICINTERFERENCE_HPP

#include "types.h"

#include "rstl/vector.hpp"
#include "MetroidPrime/TGameTypes.hpp"

struct CStaticInterferenceSource {
  TUniqueId x0_id;
  float x4_magnitude;
  float x8_timeLeft;
};

class CStaticInterference {
public:
  CStaticInterference(int);

private:
  rstl::vector< CStaticInterferenceSource > sources;
};

#endif
