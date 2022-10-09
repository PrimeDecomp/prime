#ifndef _CTRI
#define _CTRI

#include "types.h"

#include "Kyoto/Math/CPlane.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CTri {
public:
  CTri(const CVector3f& a, const CVector3f& b, const CVector3f& c)
  : x0_plane(a, b, c), x10_a(a), x1c_b(b), x28_c(c) {}

  const CPlane& GetPlane() const { return x0_plane; }
  const CVector3f& GetPointA() const { return x10_a; }
  const CVector3f& GetPointB() const { return x1c_b; }
  const CVector3f& GetPointC() const { return x28_c; }

private:
  CPlane x0_plane;
  CVector3f x10_a;
  CVector3f x1c_b;
  CVector3f x28_c;
};
CHECK_SIZEOF(CTri, 0x34)

#endif // _CTRI
