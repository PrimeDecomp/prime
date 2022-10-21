#ifndef _CCOLLISIONSURFACE
#define _CCOLLISIONSURFACE

#include "types.h"

#include "Kyoto/Math/CPlane.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CCollisionSurface {
public:
  CCollisionSurface(const CVector3f&, const CVector3f&, const CVector3f&, uint flags);

  CUnitVector3f GetNormal() const;
  CPlane GetPlane() const;
  uint GetSurfaceFlags() const { return x24_flags; }
  const CVector3f& GetVert(int i) const { return (&x0_a)[i]; }
  // GetPoint__17CCollisionSurfaceCFi ??

private:
  CVector3f x0_a;
  CVector3f xc_b;
  CVector3f x18_c;
  uint x24_flags;
};
CHECK_SIZEOF(CCollisionSurface, 0x28)

#endif // _CCOLLISIONSURFACE
