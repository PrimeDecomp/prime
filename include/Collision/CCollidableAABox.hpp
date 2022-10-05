#ifndef _CCOLLIDABLEAABOX_HPP
#define _CCOLLIDABLEAABOX_HPP

#include "types.h"

#include "Collision/CCollisionPrimitive.hpp"

class CCollidableAABox : public CCollisionPrimitive {
public:
  CCollidableAABox();
  CCollidableAABox(const CAABox& box, const CMaterialList& matList)
  : CCollisionPrimitive(matList), x10_aabb(box) {}
  // TODO

  u32 GetTableIndex() const override;
  CAABox CalculateAABox(const CTransform4f&) const override;
  CAABox CalculateLocalAABox() const override;
  FourCC GetPrimType() const override;
  ~CCollidableAABox() override {};
  CRayCastResult CastRayInternal(const CInternalRayCastStructure&) const;

private:
  CAABox x10_aabb;
};
CHECK_SIZEOF(CCollidableAABox, 0x28)

#endif
