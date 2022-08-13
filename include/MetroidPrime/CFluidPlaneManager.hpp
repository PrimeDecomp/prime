#ifndef _CFLUIDPLANEMANAGER_HPP
#define _CFLUIDPLANEMANAGER_HPP

#include "types.h"

#include "MetroidPrime/CRippleManager.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/reserved_vector.hpp"

class CFluidPlaneManager {
private:
  class CSplashRecord {
    f32 x0_time;
    TUniqueId x4_id;
  };

  CRippleManager x0_rippleManager;
  rstl::reserved_vector< CSplashRecord, 32 > x18_splashes;
  float x11c_uvT;
  bool x120_;
  bool x121_;
};

#endif