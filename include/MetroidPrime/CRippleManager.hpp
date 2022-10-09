#ifndef _CRIPPLEMANAGER
#define _CRIPPLEMANAGER

#include "types.h"

#include "rstl/vector.hpp"

class CRipple;

class CRippleManager {
private:
  f32 x0_maxTimeFalloff;
  rstl::vector< CRipple > x4_ripples;
  f32 x14_alpha;
};

#endif // _CRIPPLEMANAGER
