#ifndef _CSPHERE
#define _CSPHERE

#include "types.h"

#include "Kyoto/Math/CUnitVector3f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CSphere {
public:
  CSphere(const CVector3f& pos, f32 radius) : x0_pos(pos), xc_radius(radius) {}

  CUnitVector3f GetSurfaceNormal(const CVector3f& v) const;

private:
  CVector3f x0_pos;
  f32 xc_radius;
};
CHECK_SIZEOF(CSphere, 0x10)

#endif // _CSPHERE
