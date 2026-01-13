#ifndef _CCOLLISIONINFO
#define _CCOLLISIONINFO

#include "types.h"

#include "Collision/CMaterialList.hpp"

#include "Kyoto/Math/CVector3f.hpp"

class CAABox;

class CCollisionInfo {
public:
  enum EInvalid {
    kI_Invalid,
    kI_Valid,
  };
  enum ESwapMaterials { kSM_Swap };

  CCollisionInfo(EInvalid valid = kI_Invalid);
  CCollisionInfo(const CVector3f& point, const CMaterialList& leftMat,
                 const CMaterialList& rightMat, const CVector3f& normal);
  CCollisionInfo(const CVector3f& point, const CMaterialList& leftMat,
                 const CMaterialList& rightMat, const CVector3f& leftNormal,
                 const CVector3f& rightNormal);
  CCollisionInfo(const CAABox& aabox, const CMaterialList& leftMat, const CMaterialList& rightMat,
                 const CVector3f& leftNormal, const CVector3f& rightNormal);
  CCollisionInfo(const CCollisionInfo& other, ESwapMaterials)
  : x0_point(other.x0_point)
  , xc_extentX(other.xc_extentX)
  , x18_extentY(other.x18_extentY)
  , x24_extentZ(other.x24_extentZ)
  , x30_valid(other.x30_valid)
  , x31_hasExtents(other.x31_hasExtents)
  , x38_materialLeft(other.x40_materialRight)
  , x40_materialRight(other.x38_materialLeft)
  , x48_normalLeft(other.x54_normalRight)
  , x54_normalRight(other.x48_normalLeft) {}

  CCollisionInfo GetSwapped() const;
  bool IsValid() const { return x30_valid; }
  const CMaterialList& GetMaterialLeft() const { return x38_materialLeft; }
  const CMaterialList& GetMaterialRight() const { return x40_materialRight; }
  CVector3f GetExtreme() const;
  void Swap();
  const CVector3f& GetNormalLeft() const { return x48_normalLeft; }
  const CVector3f& GetNormalRight() const { return x54_normalRight; }
  const CVector3f& GetPoint() const { return x0_point; }

private:
  CVector3f x0_point;
  CVector3f xc_extentX;
  CVector3f x18_extentY;
  CVector3f x24_extentZ;
  bool x30_valid;
  bool x31_hasExtents;
  CMaterialList x38_materialLeft;
  CMaterialList x40_materialRight;
  CVector3f x48_normalLeft;
  CVector3f x54_normalRight;
};
CHECK_SIZEOF(CCollisionInfo, 0x60)

#endif // _CCOLLISIONINFO
