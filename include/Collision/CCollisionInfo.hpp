#ifndef _CCOLLISIONINFO_HPP
#define _CCOLLISIONINFO_HPP

#include "types.h"

#include "Collision/CMaterialList.hpp"

#include "Kyoto/Math/CUnitVector3f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CAABox;

class CCollisionInfo {
public:
  enum EInvalid {
    kI_Invalid,
    kI_Valid,
  };
  enum ESwapMaterials {
    // TODO
  };

  CCollisionInfo(EInvalid valid = kI_Invalid);
  CCollisionInfo(const CVector3f&, const CMaterialList&, const CMaterialList&, const CVector3f&);
  CCollisionInfo(const CVector3f&, const CMaterialList&, const CMaterialList&, const CVector3f&,
                 const CVector3f&);
  CCollisionInfo(const CAABox&, const CMaterialList&, const CMaterialList&, const CVector3f&,
                 const CVector3f&);
  CCollisionInfo(const CCollisionInfo&, ESwapMaterials);

private:
  CVector3f x0_point;
  CVector3f xc_extentX;
  CVector3f x18_extentY;
  CVector3f x24_extentZ;
  bool x30_valid;
  bool x31_hasExtents;
  CMaterialList x38_materialLeft;
  CMaterialList x40_materialRight;
  CUnitVector3f x48_normalLeft;
  CUnitVector3f x54_normalRight;
};
CHECK_SIZEOF(CCollisionInfo, 0x60)

#endif
