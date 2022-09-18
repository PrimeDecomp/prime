#ifndef _CRAYCASTRESULT_HPP
#define _CRAYCASTRESULT_HPP

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

private:
  f32 x0_t;
  CVector3f x4_point;
  CPlane x10_plane;
  EInvalid x20_invalid;
  CMaterialList x28_material;
};
CHECK_SIZEOF(CRayCastResult, 0x30)

#endif
