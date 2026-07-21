#ifndef _CCOLLIDABLEOBBTREE
#define _CCOLLIDABLEOBBTREE

#include <Collision/CCollisionPrimitive.hpp>

#include "WorldFormat/COBBTree.hpp"

class COBBTree;
class COBBox;
class CCollidableOBBTree : public CCollisionPrimitive {
public:
  CCollidableOBBTree(COBBTree* tree, const CMaterialList& list);

  uint GetTableIndex() const override;
  CAABox CalculateAABox(const CTransform4f& xf) const override;
  CAABox CalculateLocalAABox() const override;
  FourCC GetPrimType() const override;
  CRayCastResult CastRayInternal(const CInternalRayCastStructure& intRayCast) const override;

  bool AABoxCollision(const COBBTree::CNode& node, const CTransform4f& xf, const CAABox& abb,
                      const COBBox& obb, const CMaterialList& matList,
                      const CMaterialFilter& matFilter, const CPlane plane[6],
                      CCollisionInfoList& outList) const;
  bool AABoxCollideWithLeaf(const COBBTree::CLeafData&, const CTransform4f&, const CAABox&,
                            const CMaterialList&, const CMaterialFilter&, const CPlane*,
                            CCollisionInfoList&) const;

  void ResetTestStats() const {}

  void ResetTestStatsRecurse(const COBBTree::CNode& node) const {}

private:
  COBBTree* x10_tree;
  mutable uint x14_tries;
  mutable uint x18_misses;
  mutable uint x1c_hits;

  static uint sTableIndex;
};

#endif // _CCOLLIDABLEOBBTREE
