#ifndef _CCOLLISIONSURFACE_HPP
#define _CCOLLISIONSURFACE_HPP

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

class CCollisionSurface {
public:
  typedef CVector3f TVerts[3];

  // TODO

private:
  TVerts x0_data;
  uint x24_flags;
};
CHECK_SIZEOF(CCollisionSurface, 0x28)

#endif
