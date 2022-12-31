#ifndef _CSPHERE
#define _CSPHERE

#include "types.h"

#include "Kyoto/Math/CUnitVector3f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CSphere {
public:
  CSphere(const CVector3f& pos, float radius) : x0_center(pos), xc_radius(radius) {}

  CVector3f GetCenter() const { return x0_center; }
  float GetRadius() const { return xc_radius; }
  CUnitVector3f GetSurfaceNormal(const CVector3f& v) const;

private:
  CVector3f x0_center;
  float xc_radius;
};
CHECK_SIZEOF(CSphere, 0x10)

#endif // _CSPHERE
