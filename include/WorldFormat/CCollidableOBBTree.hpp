#ifndef _CCOLLIDABLEOBBTREE
#define _CCOLLIDABLEOBBTREE

#include <Collision/CCollisionPrimitive.hpp>

class COBBTree;
class CCollidableOBBTree : public CCollisionPrimitive {

public:
  CCollidableOBBTree(const COBBTree& tree, const CMaterialList& list);

  uint GetTableIndex() const override;
  CAABox CalculateAABox(const CTransform4f& xf) const override;
  const CAABox CalculateLocalAABox() const override;
  FourCC GetPrimType() const override;
  CRayCastResult CastRayInternal(const CInternalRayCastStructure& intRayCast) const override;
};

#endif // _CCOLLIDABLEOBBTREE
