#ifndef _CCOLLIDABLEAABOX
#define _CCOLLIDABLEAABOX

#include "types.h"

#include "Collision/CCollisionPrimitive.hpp"

class CCollidableAABox : public CCollisionPrimitive {
public:
  CCollidableAABox();
  CCollidableAABox(const CAABox& box, const CMaterialList& matList)
  : CCollisionPrimitive(matList), x10_aabb(box) {}
  // TODO

  uint GetTableIndex() const override;
  CAABox CalculateAABox(const CTransform4f&) const override;
  CAABox CalculateLocalAABox() const override;
  FourCC GetPrimType() const override;
  ~CCollidableAABox() override{};
  CRayCastResult CastRayInternal(const CInternalRayCastStructure&) const override;

private:
  CAABox x10_aabb;
};
CHECK_SIZEOF(CCollidableAABox, 0x28)

#endif // _CCOLLIDABLEAABOX
