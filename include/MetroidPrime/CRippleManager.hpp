#ifndef _CRIPPLEMANAGER
#define _CRIPPLEMANAGER

#include "types.h"

#include "rstl/vector.hpp"

class CRipple;

class CRippleManager {
private:
  float x0_maxTimeFalloff;
  rstl::vector< CRipple > x4_ripples;
  float x14_alpha;
};

#endif // _CRIPPLEMANAGER
