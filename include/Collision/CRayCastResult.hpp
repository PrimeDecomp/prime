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

  f32 GetTime() const { return x0_t; }
  bool IsValid() const { return x20_valid; }
  // GetPlane__14CRayCastResultCFv
  // GetPoint__14CRayCastResultCFv
  // GetMaterial__14CRayCastResultCFv
  // Transform__14CRayCastResultFRC12CTransform4f

  // MakeInvalid__14CRayCastResultFv

private:
  f32 x0_t;
  CVector3f x4_point;
  CPlane x10_plane;
  bool x20_valid;
  CMaterialList x28_material;
};
CHECK_SIZEOF(CRayCastResult, 0x30)

#endif // _CRAYCASTRESULT
