#ifndef _CCAMERASPLINE_HPP
#define _CCAMERASPLINE_HPP

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/vector.hpp"

class CCameraSpline {
public:
  CCameraSpline(bool closedLoop);
  virtual ~CCameraSpline();

  // tODO

private:
  rstl::vector< CVector3f > x4_positions;
  rstl::vector< TUniqueId > x14_wpTracker;
  rstl::vector< f32 > x24_t;
  rstl::vector< CVector3f > x34_directions;
  f32 x44_length;
  bool x48_closedLoop;
};
CHECK_SIZEOF(CCameraSpline, 0x4c)

#endif
