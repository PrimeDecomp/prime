#ifndef _CPLANE
#define _CPLANE

#include "types.h"

#include "Kyoto/Math/CUnitVector3f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CPlane {
public:
  CPlane(const CVector3f& vec, const CUnitVector3f& normal)
  : x0_normal(normal), xc_constant(CVector3f::Dot(vec, normal)) {}
  CPlane(const float constant, const CUnitVector3f& normal)
  : x0_normal(normal), xc_constant(constant) {}
  CPlane(const CVector3f&, const CVector3f&, const CVector3f&);
  // TODO

  const CUnitVector3f& GetNormal() const { return x0_normal; }
  float GetConstant() const { return xc_constant; }
  float GetHeight(const CVector3f& pos) const {
    return CVector3f::Dot(GetNormal(), pos) - GetConstant();
  }
  bool IsFacing(const CVector3f& vec) const {
    return CVector3f::Dot(x0_normal, vec) >= GetConstant();
  }

  float ClipLineSegment(const CVector3f& start, const CVector3f& end) const;

  // TODO: Fake?
  void SetFrom(const float d, const CVector3f& vec) {
    x0_normal.SetX(vec.GetX());
    x0_normal.SetY(vec.GetY());
    x0_normal.SetZ(vec.GetZ());
    xc_constant = d;
  }

private:
  CUnitVector3f x0_normal;
  float xc_constant;
};
CHECK_SIZEOF(CPlane, 0x10)

#endif // _CPLANE
