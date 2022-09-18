#ifndef _CAXISANGLE_HPP
#define _CAXISANGLE_HPP

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

class CAxisAngle {
public:
  CAxisAngle(f32 x, f32 y, f32 z) : x(x), y(y), z(z) {}
  CAxisAngle(const CAxisAngle& other) : x(other.x), y(other.y), z(other.z) {}

  static const CAxisAngle& Identity();

private:
  // maybe CUnitVector3f?
  f32 x, y, z;
};
CHECK_SIZEOF(CAxisAngle, 0xc)

#endif