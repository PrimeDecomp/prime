#include "WorldFormat/CCollisionSurface.hpp"

CCollisionSurface::CCollisionSurface(const CVector3f& a, const CVector3f& b, const CVector3f& c,
                                     uint flags)
: x0_a(a), xc_b(b), x18_c(c), x24_flags(flags) {}

CUnitVector3f CCollisionSurface::GetNormal() const {
  CVector3f baDiff = xc_b - x0_a;
  CVector3f caDiff = x18_c - x0_a;
  CVector3f tmp = CVector3f::Cross(baDiff, caDiff);
  return tmp;
}
CPlane CCollisionSurface::GetPlane() const {
  const CUnitVector3f norm = GetNormal();
  return CPlane(CVector3f::Dot(norm, x0_a), norm);
}
