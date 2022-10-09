#ifndef _CCOLLISIONSURFACE
#define _CCOLLISIONSURFACE

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Math/CPlane.hpp"

class CCollisionSurface {
public:

  CCollisionSurface(const CVector3f&, const CVector3f&, const CVector3f&, uint flags);

  CUnitVector3f GetNormal() const;
  CPlane GetPlane() const;

private:
  CVector3f x0_a;
  CVector3f xc_b;
  CVector3f x18_c;
  uint x24_flags;
};
//CHECK_SIZEOF(CCollisionSurface, 0x28)

#endif // _CCOLLISIONSURFACE
