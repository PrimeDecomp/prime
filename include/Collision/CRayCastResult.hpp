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

  float GetTime() const { return x0_t; }
  bool IsValid() const { return x20_valid != kI_Invalid; }
  // TODO: figure out what's going on here
  bool IsInvalid() const { return x20_valid == kI_Invalid; }
  // GetPlane__14CRayCastResultCFv
  const CVector3f& GetPoint() const { return x4_point; }
  // GetMaterial__14CRayCastResultCFv
  // Transform__14CRayCastResultFRC12CTransform4f

  // MakeInvalid__14CRayCastResultFv

private:
  float x0_t;
  CVector3f x4_point;
  CPlane x10_plane;
  bool x20_valid;
  CMaterialList x28_material;
};
CHECK_SIZEOF(CRayCastResult, 0x30)

#endif // _CRAYCASTRESULT
