#ifndef _CPLANE_HPP
#define _CPLANE_HPP

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

class CPlane {
public:
  CPlane(const CVector3f&, const CUnitVector3f&); // TODO weak
  CPlane(float, const CUnitVector3f&);            // TODO weak
  CPlane(const CVector3f&, const CVector3f&, const CVector3f&);
  // TODO

  const CUnitVector3f& GetNormal() const { return x0_normal; }
  f32 GetConstant() const { return xc_constant; }
  // GetHeight__6CPlaneCFRC9CVector3f
  // IsFacing__6CPlaneCFRC9CVector3f
  // ClipLineSegment__6CPlaneCFRC9CVector3fRC9CVector3f

private:
  CUnitVector3f x0_normal;
  f32 xc_constant;
};
CHECK_SIZEOF(CPlane, 0x10)

#endif
