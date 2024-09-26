#ifndef _CRAYCASTRESULT
#define _CRAYCASTRESULT

#include "types.h"

#include "Kyoto/Math/CPlane.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "Collision/CMaterialList.hpp"

class CRayCastResult {
public:
  enum EInvalid {
    kI_Invalid,
    kI_Valid,
  };
  CRayCastResult(float time, const CVector3f& point, const CPlane& plane, const CMaterialList& list)
  : x0_time(time), x4_point(point), x10_plane(plane), x20_valid(kI_Valid), x28_material(list) {}
  CRayCastResult(EInvalid invalid = kI_Invalid)
  : x0_time(0)
  , x4_point(CVector3f(0.f, 0.f, 0.f))
  , x10_plane(CPlane(0.f, CUnitVector3f(1.f, 0.f, 0.f, CUnitVector3f::kN_Yes)))
  , x20_valid(invalid) {}

  float GetTime() const { return x0_time; }
  const CVector3f& GetPoint() const { return x4_point; }
  const CPlane& GetPlane() const { return x10_plane; }
  bool IsValid() const { return x20_valid != kI_Invalid; }
  // TODO: figure out what's going on here
  bool IsInvalid() const { return x20_valid == kI_Invalid; }
  const CMaterialList& GetMaterial() const { return x28_material; }
  void Transform(const CTransform4f& xf);

  static CRayCastResult MakeInvalid() {
    return CRayCastResult(kI_Invalid);
  }

private:
  float x0_time;
  CVector3f x4_point;
  CPlane x10_plane;
  bool x20_valid;
  CMaterialList x28_material;
};

CHECK_SIZEOF(CRayCastResult, 0x30)

#endif // _CRAYCASTRESULT
