#include "WorldFormat/CCollidableOBBTree.hpp"

#include "WorldFormat/COBBTree.hpp"

uint CCollidableOBBTree::sTableIndex = -1;

CCollidableOBBTree::CCollidableOBBTree(COBBTree* tree, const CMaterialList& material)
: CCollisionPrimitive(material), x10_tree(tree), x14_tries(0), x18_misses(0), x1c_hits(0) {}

CAABox CCollidableOBBTree::CalculateAABox(const CTransform4f& xf) const {
  const COBBox obbox = COBBox::FromAABox(x10_tree->CalculateLocalAABox(), xf);
  return obbox.CalculateAABox(CTransform4f::Identity());
}

CAABox CCollidableOBBTree::CalculateLocalAABox() const { return x10_tree->CalculateLocalAABox(); }

FourCC CCollidableOBBTree::GetPrimType() const { return 'OBBT'; }

bool CCollidableOBBTree::AABoxCollision(const COBBTree::CNode& node, const CTransform4f& xf,
                                        const CAABox& abb, const COBBox& obb,
                                        const CMaterialList& matList,
                                        const CMaterialFilter& matFilter, const CPlane planes[6],
                                        CCollisionInfoList& outList) const {

  bool ret = false;

  x14_tries++;

  if (obb.OBBIntersectsBox(node.GetOBB())) {
    node.SetHit(true);
    if (node.IsLeaf()) {
      if (AABoxCollideWithLeaf(*node.GetLeafData(), xf, abb, matList, matFilter, planes, outList)) {
        ret = true;
      }
    } else {
      if (AABoxCollision(*node.GetLeftNode(), xf, abb, obb, matList, matFilter, planes, outList)) {
        ret = true;
      }
      if (AABoxCollision(*node.GetRightNode(), xf, abb, obb, matList, matFilter, planes, outList)) {
        ret = true;
      }
    }
  } else {
    x18_misses++;
  }
  return ret;
}

CPlane TransformPlane(const CPlane& plane, const CTransform4f& xf) {
  const CVector3f dVec = xf * (plane.GetNormal() * plane.GetConstant());
  const CVector3f normal = xf.Rotate(plane.GetNormal());
  return CPlane(dVec, CUnitVector3f(normal.GetX(), normal.GetY(), normal.GetZ()));
}

uint CCollidableOBBTree::GetTableIndex() const { return sTableIndex; }