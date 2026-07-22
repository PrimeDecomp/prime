#ifndef _CCOLLIDABLEOBBTREE
#define _CCOLLIDABLEOBBTREE

#include "Collision/CCollisionPrimitive.hpp"
#include "Collision/CMaterialFilter.hpp"
#include "Collision/CMaterialList.hpp"

#include "Kyoto/Math/CPlane.hpp"

#include "WorldFormat/CMetroidAreaCollider.hpp"
#include "WorldFormat/COBBTree.hpp"

class CCollisionInfo;
class CCollisionInfoList;
class CMRay;
class COBBox;
class CSphere;

class CRayCastInfo {
  const CMRay& x0_ray;
  const CMaterialFilter& x4_filter;
  float x8_mag;
  CPlane xc_plane;
  CMaterialList x20_material;

public:
  CRayCastInfo(const CMRay& ray, const CMaterialFilter& filter, float mag)
  : x0_ray(ray)
  , x4_filter(filter)
  , x8_mag(mag)
  , xc_plane(CVector3f::Zero(), CUnitVector3f(CVector3f(0.f, 0.f, 1.f), CUnitVector3f::kN_Yes))
  , x20_material() {}

  const CMRay& GetRay() const { return x0_ray; }
  const CMaterialFilter& GetMaterialFilter() const { return x4_filter; }
  float GetMagnitude() const { return x8_mag; }
  float& Magnitude() { return x8_mag; }
  const CPlane& GetPlane() const { return xc_plane; }
  CPlane& Plane() { return xc_plane; }
  const CMaterialList& GetMaterial() const { return x20_material; }
  CMaterialList& Material() { return x20_material; }
};

class CCollidableOBBTree : public CCollisionPrimitive {
public:
  CCollidableOBBTree(COBBTree* tree, const CMaterialList& list);
  ~CCollidableOBBTree() override;

  uint GetTableIndex() const override;
  CAABox CalculateAABox(const CTransform4f& xf) const override;
  CAABox CalculateLocalAABox() const override;
  FourCC GetPrimType() const override;
  CRayCastResult CastRayInternal(const CInternalRayCastStructure& rayCast) const override;

  const COBBTree& GetOBBTree() const { return *x10_tree; }

  bool AABoxCollision(const COBBTree::CNode& node, const CTransform4f& xf, const CAABox& aabb,
                      const COBBox& obb, const CMaterialList& material,
                      const CMaterialFilter& filter, const CPlane* planes,
                      CCollisionInfoList& infoList) const;
  bool AABoxCollideWithLeaf(const COBBTree::CLeafData& leaf, const CTransform4f& xf,
                            const CAABox& aabb, const CMaterialList& material,
                            const CMaterialFilter& filter, const CPlane* planes,
                            CCollisionInfoList& infoList) const;
  bool SphereCollision(const COBBTree::CNode& node, const CTransform4f& xf,
                       const CSphere& sphere, const COBBox& obb, const CMaterialList& material,
                       const CMaterialFilter& filter, CCollisionInfoList& infoList) const;
  bool SphereCollideWithLeaf(const COBBTree::CLeafData& leaf, const CTransform4f& xf,
                             const CSphere& sphere, const CMaterialList& material,
                             const CMaterialFilter& filter, CCollisionInfoList& infoList) const;
  bool AABoxCollisionBoolean(const COBBTree::CNode& node, const CTransform4f& xf,
                             const CAABox& aabb, const COBBox& obb,
                             const CMaterialFilter& filter) const;
  bool SphereCollisionBoolean(const COBBTree::CNode& node, const CTransform4f& xf,
                              const CSphere& sphere, const COBBox& obb,
                              const CMaterialFilter& filter) const;
  bool AABoxCollisionMoving(const COBBTree::CNode& node, const CTransform4f& xf,
                            const CAABox& aabb, const COBBox& obb,
                            const CMaterialList& material, const CMaterialFilter& filter,
                            const CMetroidAreaCollider::CMovingAABoxComponents& components,
                            const CVector3f& dir, double& dOut, CCollisionInfo& info) const;
  bool AABoxCollideWithLeafMoving(
      const COBBTree::CLeafData& leaf, const CTransform4f& xf, const CAABox& aabb,
      const CMaterialList& material, const CMaterialFilter& filter,
      const CMetroidAreaCollider::CMovingAABoxComponents& components, const CVector3f& dir,
      double& dOut, CCollisionInfo& info) const;
  bool SphereCollisionMoving(const COBBTree::CNode& node, const CTransform4f& xf,
                             const CSphere& sphere, const COBBox& obb,
                             const CMaterialList& material, const CMaterialFilter& filter,
                             const CVector3f& dir, double& dOut, CCollisionInfo& info) const;
  bool SphereCollideWithLeafMoving(const COBBTree::CLeafData& leaf, const CTransform4f& xf,
                                   const CSphere& sphere, const CMaterialList& material,
                                   const CMaterialFilter& filter, const CVector3f& dir,
                                   double& dOut, CCollisionInfo& info) const;

  CRayCastResult LineIntersectsTree(const CMRay& ray, const CMaterialFilter& filter, float maxTime,
                                    const CTransform4f& xf) const;
  bool LineIntersectsOBBTree(const COBBTree::CNode* node, CRayCastInfo& info) const;
  bool LineIntersectsOBBTree(const COBBTree::CNode* n0, const COBBTree::CNode* n1,
                             CRayCastInfo& info) const;
  bool LineIntersectsLeaf(const COBBTree::CLeafData& leaf, CRayCastInfo& info) const;

  static void SetStaticTableIndex(uint idx) { sTableIndex = idx; }

private:
  COBBTree* x10_tree;
  uint x14_tries;
  uint x18_misses;
  uint x1c_hits;

  static uint sTableIndex;
};
CHECK_SIZEOF(CCollidableOBBTree, 0x20)

#endif // _CCOLLIDABLEOBBTREE
