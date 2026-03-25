#include "WorldFormat/CCollidableOBBTree.hpp"

#include "Kyoto/Basics/CCast.hpp"

#include "Collision/CCollisionInfo.hpp"
#include "Collision/CCollisionInfoList.hpp"
#include "Collision/CInternalRayCastStructure.hpp"
#include "Collision/CMRay.hpp"
#include "Collision/COBBox.hpp"
#include "Collision/CRayCastResult.hpp"
#include "Collision/CollisionUtil.hpp"

#include "Kyoto/Math/CSphere.hpp"

#include "math.h"

#include "WorldFormat/CCollisionSurface.hpp"

static int mod3[4] = {0, 1, 2, 0};

static CPlane TransformPlane(const CPlane& pl, const CTransform4f& xf);

uint CCollidableOBBTree::sTableIndex = -1;

// === Constructor ===

CCollidableOBBTree::CCollidableOBBTree(COBBTree* tree, const CMaterialList& list)
: CCollisionPrimitive(list)
, x10_tree(tree)
, x14_tries(0)
, x18_misses(0)
, x1c_hits(0) {}

// === CalculateAABox ===

CAABox CCollidableOBBTree::CalculateAABox(const CTransform4f& xf) const {
  COBBox obb = COBBox::FromAABox(x10_tree->CalculateLocalAABox(), xf);
  return obb.CalculateAABox(CTransform4f::Identity());
}

// === CalculateLocalAABox ===

CAABox CCollidableOBBTree::CalculateLocalAABox() const {
  return x10_tree->CalculateLocalAABox();
}

// === GetPrimType ===

FourCC CCollidableOBBTree::GetPrimType() const {
  return 'OBBT';
}

// === AABoxCollision ===

bool CCollidableOBBTree::AABoxCollision(const COBBTree::CNode& node, const CTransform4f& xf,
                                        const CAABox& aabb, const COBBox& obb,
                                        const CMaterialList& material,
                                        const CMaterialFilter& filter, const CPlane* planes,
                                        CCollisionInfoList& infoList) const {
  bool ret = false;

  const_cast< CCollidableOBBTree* >(this)->x14_tries += 1;
  if (obb.OBBIntersectsBox(node.GetOBB())) {
    node.SetHit(true);
    if (node.IsLeaf()) {
      if (AABoxCollideWithLeaf(node.GetLeafData(), xf, aabb, material, filter, planes, infoList))
        ret = true;
    } else {
      if (AABoxCollision(node.GetLeftNode(), xf, aabb, obb, material, filter, planes, infoList))
        ret = true;
      if (AABoxCollision(node.GetRightNode(), xf, aabb, obb, material, filter, planes, infoList))
        ret = true;
    }
  } else {
    const_cast< CCollidableOBBTree* >(this)->x18_misses += 1;
  }

  return ret;
}

// === AABoxCollideWithLeaf ===

bool CCollidableOBBTree::AABoxCollideWithLeaf(const COBBTree::CLeafData& leaf,
                                              const CTransform4f& xf, const CAABox& aabb,
                                              const CMaterialList& material,
                                              const CMaterialFilter& filter,
                                              const CPlane* planes,
                                              CCollisionInfoList& infoList) const {
  CVector3f center = aabb.GetCenterPoint();
  CVector3f extent = aabb.GetHalfExtent();

  int surfCount = leaf.GetSurfaceVector().size();
  bool ret = false;
  for (int i = 0; i < surfCount; ++i) {
    CCollisionSurface surf = x10_tree->GetTransformedSurface(leaf.GetSurfaceVector()[i], xf);
    const CMaterialList& baseMat = GetMaterial();
    CMaterialList triMat(static_cast< u64 >(surf.GetSurfaceFlags()) | baseMat.GetValue());
    if (filter.Passes(triMat) &&
        CollisionUtil::TriBoxOverlap(center, extent, surf.GetVert(0), surf.GetVert(1),
                                     surf.GetVert(2))) {
      const_cast< CCollidableOBBTree* >(this)->x1c_hits += 1;
      CAABox newAABB = CAABox::MakeMaxInvertedBox();
      if (CMetroidAreaCollider::ConvexPolyCollision(planes, &surf.GetVert(0), newAABB)) {
        CPlane plane = surf.GetPlane();
        infoList.Add(CCollisionInfo(newAABB, triMat, material, plane.GetNormal(),
                                    -plane.GetNormal()),
                     false);
        ret = true;
      }
    }
  }

  return ret;
}

// === SphereCollision ===

bool CCollidableOBBTree::SphereCollision(const COBBTree::CNode& node, const CTransform4f& xf,
                                         const CSphere& sphere, const COBBox& obb,
                                         const CMaterialList& material,
                                         const CMaterialFilter& filter,
                                         CCollisionInfoList& infoList) const {
  bool ret = false;
  const_cast< CCollidableOBBTree* >(this)->x14_tries += 1;
  if (obb.OBBIntersectsBox(node.GetOBB())) {
    const_cast< COBBTree::CNode& >(node).SetHit(true);
    if (node.IsLeaf()) {
      if (SphereCollideWithLeaf(node.GetLeafData(), xf, sphere, material, filter, infoList))
        ret = true;
    } else {
      if (SphereCollision(node.GetLeftNode(), xf, sphere, obb, material, filter, infoList))
        ret = true;
      if (SphereCollision(node.GetRightNode(), xf, sphere, obb, material, filter, infoList))
        ret = true;
    }
  } else {
    const_cast< CCollidableOBBTree* >(this)->x18_misses += 1;
  }
  return ret;
}

// === SphereCollideWithLeaf ===

bool CCollidableOBBTree::SphereCollideWithLeaf(const COBBTree::CLeafData& leaf,
                                               const CTransform4f& xf, const CSphere& sphere,
                                               const CMaterialList& material,
                                               const CMaterialFilter& filter,
                                               CCollisionInfoList& infoList) const {
  bool ret = false;
  CVector3f point = CVector3f::Zero();
  CVector3f normal = CVector3f::Zero();

  int surfCount = leaf.GetSurfaceVector().size();
  for (int i = 0; i < surfCount; ++i) {
    CCollisionSurface surf = x10_tree->GetTransformedSurface(leaf.GetSurfaceVector()[i], xf);
    const CMaterialList& baseMat = GetMaterial();
    CMaterialList triMat(static_cast< u64 >(surf.GetSurfaceFlags()) | baseMat.GetValue());
    if (filter.Passes(triMat)) {
      const_cast< CCollidableOBBTree* >(this)->x1c_hits += 1;
      if (CollisionUtil::TriSphereIntersection(sphere, surf.GetVert(0), surf.GetVert(1),
                                               surf.GetVert(2), point, normal)) {
        infoList.Add(CCollisionInfo(point, material, triMat, normal), false);
        ret = true;
      }
    }
  }

  return ret;
}

// === AABoxCollisionBoolean ===

bool CCollidableOBBTree::AABoxCollisionBoolean(const COBBTree::CNode& node,
                                               const CTransform4f& xf, const CAABox& aabb,
                                               const COBBox& obb,
                                               const CMaterialFilter& filter) const {
  CVector3f center = aabb.GetCenterPoint();
  CVector3f extent = aabb.GetHalfExtent();

  const_cast< CCollidableOBBTree* >(this)->x14_tries += 1;
  if (obb.OBBIntersectsBox(node.GetOBB())) {
    node.SetHit(true);
    if (node.IsLeaf()) {
      const COBBTree::CLeafData& leaf = node.GetLeafData();
      int surfCount = leaf.GetSurfaceVector().size();
      for (int i = 0; i < surfCount; ++i) {
        CCollisionSurface surf = x10_tree->GetTransformedSurface(leaf.GetSurfaceVector()[i], xf);
        const CMaterialList& baseMat = GetMaterial();
        CMaterialList triMat(static_cast< u64 >(surf.GetSurfaceFlags()) | baseMat.GetValue());
        if (filter.Passes(triMat) &&
            CollisionUtil::TriBoxOverlap(center, extent, surf.GetVert(0), surf.GetVert(1),
                                         surf.GetVert(2))) {
          return true;
        }
      }
    } else {
      if (AABoxCollisionBoolean(node.GetLeftNode(), xf, aabb, obb, filter))
        return true;
      if (AABoxCollisionBoolean(node.GetRightNode(), xf, aabb, obb, filter))
        return true;
    }
  } else {
    const_cast< CCollidableOBBTree* >(this)->x18_misses += 1;
  }

  return false;
}

// === SphereCollisionBoolean ===

bool CCollidableOBBTree::SphereCollisionBoolean(const COBBTree::CNode& node,
                                                const CTransform4f& xf, const CSphere& sphere,
                                                const COBBox& obb,
                                                const CMaterialFilter& filter) const {
  const_cast< CCollidableOBBTree* >(this)->x14_tries += 1;
  if (obb.OBBIntersectsBox(node.GetOBB())) {
    const_cast< COBBTree::CNode& >(node).SetHit(true);
    if (node.IsLeaf()) {
      const COBBTree::CLeafData& leaf = node.GetLeafData();
      int surfCount = leaf.GetSurfaceVector().size();
      for (int i = 0; i < surfCount; ++i) {
        CCollisionSurface surf = x10_tree->GetTransformedSurface(leaf.GetSurfaceVector()[i], xf);
        const CMaterialList& baseMat = GetMaterial();
        CMaterialList triMat(static_cast< u64 >(surf.GetSurfaceFlags()) | baseMat.GetValue());
        if (filter.Passes(triMat) &&
            CollisionUtil::TriSphereOverlap(sphere, surf.GetVert(0), surf.GetVert(1),
                                            surf.GetVert(2))) {
          return true;
        }
      }
    } else {
      if (SphereCollisionBoolean(node.GetLeftNode(), xf, sphere, obb, filter))
        return true;
      if (SphereCollisionBoolean(node.GetRightNode(), xf, sphere, obb, filter))
        return true;
    }
  } else {
    const_cast< CCollidableOBBTree* >(this)->x18_misses += 1;
  }

  return false;
}

// === AABoxCollisionMoving ===

bool CCollidableOBBTree::AABoxCollisionMoving(
    const COBBTree::CNode& node, const CTransform4f& xf, const CAABox& aabb, const COBBox& obb,
    const CMaterialList& material, const CMaterialFilter& filter,
    const CMetroidAreaCollider::CMovingAABoxComponents& components, const CVector3f& dir,
    double& dOut, CCollisionInfo& info) const {
  bool ret = false;
  const_cast< CCollidableOBBTree* >(this)->x14_tries += 1;
  if (obb.OBBIntersectsBox(node.GetOBB())) {
    node.SetHit(true);
    if (node.IsLeaf()) {
      if (AABoxCollideWithLeafMoving(node.GetLeafData(), xf, aabb, material, filter, components,
                                     dir, dOut, info))
        ret = true;
    } else {
      if (AABoxCollisionMoving(node.GetLeftNode(), xf, aabb, obb, material, filter, components,
                               dir, dOut, info))
        ret = true;
      if (AABoxCollisionMoving(node.GetRightNode(), xf, aabb, obb, material, filter, components,
                               dir, dOut, info))
        ret = true;
    }
  } else {
    const_cast< CCollidableOBBTree* >(this)->x18_misses += 1;
  }
  return ret;
}

// === AABoxCollideWithLeafMoving ===

bool CCollidableOBBTree::AABoxCollideWithLeafMoving(
    const COBBTree::CLeafData& leaf, const CTransform4f& xf, const CAABox& aabb,
    const CMaterialList& material, const CMaterialFilter& filter,
    const CMetroidAreaCollider::CMovingAABoxComponents& components, const CVector3f& dir,
    double& dOut, CCollisionInfo& info) const {
  CVector3f normal(CVector3f::Zero());
  CVector3f point(CVector3f::Zero());

  CAABox movedAABB = components.x6e8_aabb;
  CVector3f moveVec = static_cast< float >(dOut) * dir;
  movedAABB.AccumulateBounds(aabb.GetMaxPoint() + moveVec);
  movedAABB.AccumulateBounds(aabb.GetMinPoint() + moveVec);

  CVector3f center = movedAABB.GetCenterPoint();
  bool ret = false;
  CVector3f extent = movedAABB.GetHalfExtent();

  int surfCount = leaf.GetSurfaceVector().size();
  for (int i = 0; i < surfCount; ++i) {
    ushort triIdx = leaf.GetSurfaceVector()[i];
    CCollisionSurface surf = x10_tree->GetTransformedSurface(triIdx, xf);
    const CMaterialList& baseMat = GetMaterial();
    CMaterialList triMat(static_cast< u64 >(surf.GetSurfaceFlags()) | baseMat.GetValue());
    if (filter.Passes(triMat)) {
      if (CollisionUtil::TriBoxOverlap(center, extent, surf.GetVert(0), surf.GetVert(1),
                                       surf.GetVert(2))) {
        const_cast< CCollidableOBBTree* >(this)->x1c_hits += 1;

        ushort vertIndices[3];
        x10_tree->GetTriangleVertexIndices(triIdx, vertIndices);

        double d = dOut;
        if (CMetroidAreaCollider::MovingAABoxCollisionCheck_BoxVertexTri(
                surf, aabb, components.x6c4_vertIdxs, dir, d, normal, point) &&
            d < dOut) {
          info = CCollisionInfo(point, material, triMat, normal);
          ret = true;
          dOut = d;
        }

        for (int k = 0; k < 3; ++k) {
          uint vertIdx = vertIndices[k];
          if (CMetroidAreaCollider::sDupVertexList[vertIdx] !=
              CMetroidAreaCollider::sDupPrimitiveCheckCount) {
            CMetroidAreaCollider::sDupVertexList[vertIdx] =
                CMetroidAreaCollider::sDupPrimitiveCheckCount;
            if (movedAABB.PointInside(surf.GetVert(k))) {
              d = dOut;
              if (CMetroidAreaCollider::MovingAABoxCollisionCheck_TriVertexBox(
                      surf.GetVert(k), aabb, dir, d, normal, point) &&
                  d < dOut) {
                info = CCollisionInfo(point, material,
                                      CMaterialList(x10_tree->GetVertMaterial(vertIdx)), normal);
                ret = true;
                dOut = d;
              }
            }
          }
        }

        const ushort* edgeIndices = x10_tree->GetTriangleEdgeIndices(triIdx);
        for (int k = 0; k < 3; ++k) {
          uint edgeIdx = edgeIndices[k];
          if (CMetroidAreaCollider::sDupEdgeList[edgeIdx] !=
              CMetroidAreaCollider::sDupPrimitiveCheckCount) {
            CMetroidAreaCollider::sDupEdgeList[edgeIdx] =
                CMetroidAreaCollider::sDupPrimitiveCheckCount;
            uint edgeMatVal = x10_tree->GetEdgeMaterial(edgeIdx);
            if (!(edgeMatVal & (1u << kMT_NoEdgeCollision))) {
              d = dOut;
              if (CMetroidAreaCollider::MovingAABoxCollisionCheck_Edge(
                      surf.GetVert(k), surf.GetVert(k == 2 ? 0 : k + 1),
                      components.x0_edges, dir, d, normal, point) &&
                  d < dOut) {
                info = CCollisionInfo(point, material, CMaterialList(edgeMatVal), normal);
                ret = true;
                dOut = d;
              }
            }
          }
        }
      } else {
        const ushort* edgeIndices = x10_tree->GetTriangleEdgeIndices(triIdx);
        CMetroidAreaCollider::sDupEdgeList[edgeIndices[0]] =
            CMetroidAreaCollider::sDupPrimitiveCheckCount;
        CMetroidAreaCollider::sDupEdgeList[edgeIndices[1]] =
            CMetroidAreaCollider::sDupPrimitiveCheckCount;
        CMetroidAreaCollider::sDupEdgeList[edgeIndices[2]] =
            CMetroidAreaCollider::sDupPrimitiveCheckCount;

        ushort vertIndices[3];
        x10_tree->GetTriangleVertexIndices(triIdx, vertIndices);
        CMetroidAreaCollider::sDupVertexList[vertIndices[0]] =
            CMetroidAreaCollider::sDupPrimitiveCheckCount;
        CMetroidAreaCollider::sDupVertexList[vertIndices[1]] =
            CMetroidAreaCollider::sDupPrimitiveCheckCount;
        CMetroidAreaCollider::sDupVertexList[vertIndices[2]] =
            CMetroidAreaCollider::sDupPrimitiveCheckCount;
      }
    }
  }

  return ret;
}

// === SphereCollisionMoving ===

bool CCollidableOBBTree::SphereCollisionMoving(
    const COBBTree::CNode& node, const CTransform4f& xf, const CSphere& sphere,
    const COBBox& obb, const CMaterialList& material, const CMaterialFilter& filter,
    const CVector3f& dir, double& dOut, CCollisionInfo& info) const {
  bool ret = false;
  const_cast< CCollidableOBBTree* >(this)->x14_tries += 1;
  if (obb.OBBIntersectsBox(node.GetOBB())) {
    const_cast< COBBTree::CNode& >(node).SetHit(true);
    if (node.IsLeaf()) {
      if (SphereCollideWithLeafMoving(node.GetLeafData(), xf, sphere, material, filter, dir, dOut,
                                      info))
        ret = true;
    } else {
      if (SphereCollisionMoving(node.GetLeftNode(), xf, sphere, obb, material, filter, dir, dOut,
                                info))
        ret = true;
      if (SphereCollisionMoving(node.GetRightNode(), xf, sphere, obb, material, filter, dir, dOut,
                                info))
        ret = true;
    }
  } else {
    const_cast< CCollidableOBBTree* >(this)->x18_misses += 1;
  }
  return ret;
}

// === SphereCollideWithLeafMoving ===

bool CCollidableOBBTree::SphereCollideWithLeafMoving(
    const COBBTree::CLeafData& leaf, const CTransform4f& xf, const CSphere& sphere,
    const CMaterialList& material, const CMaterialFilter& filter, const CVector3f& dir,
    double& dOut, CCollisionInfo& info) const {
  float radius = sphere.GetRadius();
  CVector3f radiusVec(radius, radius, radius);
  CAABox aabb(sphere.GetCenter() - radiusVec, sphere.GetCenter() + radiusVec);

  CVector3f moveVec = CCast::ToReal32(dOut) * dir;
  CAABox moveAABB = aabb;
  moveAABB.AccumulateBounds(aabb.GetMaxPoint() + moveVec);
  moveAABB.AccumulateBounds(aabb.GetMinPoint() + moveVec);

  CVector3f boxCenter = moveAABB.GetCenterPoint();
  bool ret = false;
  CVector3f extent = moveAABB.GetHalfExtent();

  int surfCount = leaf.GetSurfaceVector().size();
  for (int i = 0; i < surfCount; ++i) {
    ushort triIdx = leaf.GetSurfaceVector()[i];
    CCollisionSurface surf = x10_tree->GetTransformedSurface(triIdx, xf);
    const CMaterialList& baseMat = GetMaterial();
    CMaterialList triMat(static_cast< u64 >(surf.GetSurfaceFlags()) | baseMat.GetValue());
    if (filter.Passes(triMat)) {
      if (CollisionUtil::TriBoxOverlap(boxCenter, extent, surf.GetVert(0), surf.GetVert(1),
                                       surf.GetVert(2))) {
        const_cast< CCollidableOBBTree* >(this)->x1c_hits += 1;

        CVector3f surfNormal = surf.GetNormal();

        if (!(CVector3f::Dot(sphere.GetCenter() + moveVec - surf.GetVert(0), surfNormal) >
              sphere.GetRadius())) {
          const CVector3f& vertToSphere0 = sphere.GetCenter() - surf.GetVert(0);
          float dirDotNorm = CVector3f::Dot(dir, surfNormal);
          const CVector3f& edge0 = surf.GetVert(1) - surf.GetVert(0);
          double mag = (double)(sphere.GetRadius() - CVector3f::Dot(vertToSphere0, surfNormal)) / dirDotNorm;
          float magF = CCast::ToReal32(mag);

          CVector3f intersectPoint = sphere.GetCenter() + magF * dir;
          const CVector3f& cross0 = CVector3f::Cross(surfNormal, edge0);
          const CVector3f& d0 = intersectPoint - surf.GetVert(0);
          bool outsideEdge0 = CVector3f::Dot(d0, cross0) < 0.f;

          const CVector3f& edge1 = surf.GetVert(2) - surf.GetVert(1);
          const CVector3f& cross1 = CVector3f::Cross(surfNormal, edge1);
          const CVector3f& d1 = intersectPoint - surf.GetVert(1);
          bool outsideEdge1 = CVector3f::Dot(d1, cross1) < 0.f;

          const CVector3f& edge2 = surf.GetVert(0) - surf.GetVert(2);
          const CVector3f& cross2 = CVector3f::Cross(surfNormal, edge2);
          const CVector3f& d2 = intersectPoint - surf.GetVert(2);
          bool outsideEdge2 = CVector3f::Dot(d2, cross2) < 0.f;

          if (mag >= 0.0 && !outsideEdge0 && !outsideEdge1 && !outsideEdge2 && mag < dOut) {
            const CVector3f& collisionPoint =
                intersectPoint - sphere.GetRadius() * surfNormal;
            info = CCollisionInfo(collisionPoint, material, triMat, surfNormal);
            ret = true;
            dOut = mag;
          }

          const CVector3f& vts2 = sphere.GetCenter() - surf.GetVert(0);
          bool intersects = CVector3f::Dot(vts2, surfNormal) <= sphere.GetRadius();
          bool testVert[3] = {true, true, true};
          const ushort* edgeIndices = x10_tree->GetTriangleEdgeIndices(triIdx);
          for (int k = 0; k < 3; ++k) {
            if (intersects || (&outsideEdge0)[k]) {
              uint edgeIdx = edgeIndices[k];
              if (CMetroidAreaCollider::sDupEdgeList[edgeIdx] !=
                  CMetroidAreaCollider::sDupPrimitiveCheckCount) {
                CMetroidAreaCollider::sDupEdgeList[edgeIdx] =
                    CMetroidAreaCollider::sDupPrimitiveCheckCount;
                uint edgeMatVal = x10_tree->GetEdgeMaterial(edgeIdx);
                if (!(edgeMatVal & (1u << kMT_NoEdgeCollision))) {
                  CVector3f edgeVec = surf.GetVert(mod3[k + 1]) - surf.GetVert(k);
                  float edgeVecMag = edgeVec.Magnitude();
                  edgeVec *= 1.f / edgeVecMag;
                  float dirDotEdge = CVector3f::Dot(dir, edgeVec);
                  CVector3f edgeRej = dir - dirDotEdge * edgeVec;
                  float edgeRejMagSq = edgeRej.MagSquared();
                  CVector3f vertToSphere = sphere.GetCenter() - surf.GetVert(k);
                  float vtsDotEdge = CVector3f::Dot(vertToSphere, edgeVec);
                  CVector3f vtsRej = vertToSphere - vtsDotEdge * edgeVec;
                  if (edgeRejMagSq > 0.f) {
                    float tmp = 2.f * CVector3f::Dot(vtsRej, edgeRej);
                    float tmp2 = 4.f * edgeRejMagSq *
                                     (vtsRej.MagSquared() -
                                      sphere.GetRadius() * sphere.GetRadius()) -
                                 tmp * tmp;
                    if (tmp2 >= 0.f) {
                      double mag2 = 0.5 / edgeRejMagSq * (-tmp - sqrt(tmp2));
                      if (mag2 >= 0.0) {
                        double t = mag2 * dirDotEdge + vtsDotEdge;
                        if (t >= 0.0 && t <= edgeVecMag && mag2 < dOut) {
                          CVector3f point =
                              surf.GetVert(k) + CCast::ToReal32(t) * edgeVec;
                          const CVector3f& movedSphere =
                              sphere.GetCenter() + CCast::ToReal32(mag2) * dir;
                          const CVector3f& normVec = movedSphere - point;
                          info = CCollisionInfo(
                              point, material, CMaterialList(edgeMatVal),
                              normVec.AsNormalized());
                          dOut = mag2;
                          ret = true;
                          testVert[k] = false;
                          testVert[mod3[k + 1]] = false;
                        } else if (t < -sphere.GetRadius() && dirDotEdge <= 0.f) {
                          testVert[k] = false;
                        } else if (t > edgeVecMag + sphere.GetRadius() &&
                                   dirDotEdge >= 0.f) {
                          testVert[mod3[k + 1]] = false;
                        }
                      }
                    } else {
                      testVert[k] = false;
                      testVert[mod3[k + 1]] = false;
                    }
                  }
                }
              }
            }
          }

          ushort vertIndices[3];
          x10_tree->GetTriangleVertexIndices(triIdx, vertIndices);
          for (int k = 0; k < 3; ++k) {
            uint vertIdx = vertIndices[k];
            if (testVert[k]) {
              if (CMetroidAreaCollider::sDupVertexList[vertIdx] !=
                  CMetroidAreaCollider::sDupPrimitiveCheckCount) {
                CMetroidAreaCollider::sDupVertexList[vertIdx] =
                    CMetroidAreaCollider::sDupPrimitiveCheckCount;
                double d = dOut;
                if (CollisionUtil::RaySphereIntersection_Double(
                        CSphere(surf.GetVert(k), sphere.GetRadius()),
                        sphere.GetCenter(), dir, d) &&
                    d >= 0.0) {
                  float dF = CCast::ToReal32(d);
                  const CVector3f& movedSph =
                      sphere.GetCenter() + dF * dir;
                  const CVector3f& normVec2 = movedSph - surf.GetVert(k);
                  info = CCollisionInfo(
                      surf.GetVert(k), material,
                      CMaterialList(x10_tree->GetVertMaterial(vertIdx)),
                      normVec2.AsNormalized());
                  dOut = d;
                  ret = true;
                }
              }
            } else {
              CMetroidAreaCollider::sDupVertexList[vertIdx] =
                  CMetroidAreaCollider::sDupPrimitiveCheckCount;
            }
          }
        }
      } else {
        const ushort* edgeIndices = x10_tree->GetTriangleEdgeIndices(triIdx);
        CMetroidAreaCollider::sDupEdgeList[edgeIndices[0]] =
            CMetroidAreaCollider::sDupPrimitiveCheckCount;
        CMetroidAreaCollider::sDupEdgeList[edgeIndices[1]] =
            CMetroidAreaCollider::sDupPrimitiveCheckCount;
        CMetroidAreaCollider::sDupEdgeList[edgeIndices[2]] =
            CMetroidAreaCollider::sDupPrimitiveCheckCount;

        ushort vertIndices[3];
        x10_tree->GetTriangleVertexIndices(triIdx, vertIndices);
        CMetroidAreaCollider::sDupVertexList[vertIndices[0]] =
            CMetroidAreaCollider::sDupPrimitiveCheckCount;
        CMetroidAreaCollider::sDupVertexList[vertIndices[1]] =
            CMetroidAreaCollider::sDupPrimitiveCheckCount;
        CMetroidAreaCollider::sDupVertexList[vertIndices[2]] =
            CMetroidAreaCollider::sDupPrimitiveCheckCount;
      }
    }
  }

  return ret;
}

// === CastRayInternal ===

CRayCastResult
CCollidableOBBTree::CastRayInternal(const CInternalRayCastStructure& rayCast) const {
  return LineIntersectsTree(rayCast.GetRay(), rayCast.GetFilter(), rayCast.GetMaxTime(),
                            rayCast.GetTransform());
}

// === TransformPlane (local free function) ===

static CPlane TransformPlane(const CPlane& pl, const CTransform4f& xf) {
  CVector3f transformed = xf * (pl.GetNormal() * pl.GetConstant());
  CVector3f normal = xf.Rotate(pl.GetNormal());
  float d = CVector3f::Dot(transformed, normal);
  return CPlane(d, CUnitVector3f(normal.GetX(), normal.GetY(), normal.GetZ()));
}

// === LineIntersectsTree ===

CRayCastResult CCollidableOBBTree::LineIntersectsTree(const CMRay& ray,
                                                      const CMaterialFilter& filter,
                                                      float maxTime,
                                                      const CTransform4f& xf) const {
  CMRay useRay = ray.GetInvUnscaledTransformRay(xf);
  CRayCastInfo info(useRay, filter, maxTime);
  if (LineIntersectsOBBTree(&x10_tree->GetRoot(), info)) {
    CPlane xfPlane = TransformPlane(info.GetPlane(), xf);
    return CRayCastResult(info.GetMagnitude(),
                          ray.GetStart() + info.GetMagnitude() * ray.GetDirection(), xfPlane,
                          info.GetMaterial());
  }
  return CRayCastResult();
}

// === LineIntersectsOBBTree (single node) ===

bool CCollidableOBBTree::LineIntersectsOBBTree(const COBBTree::CNode* node,
                                               CRayCastInfo& info) const {
  float t;
  bool ret = false;

  const_cast< CCollidableOBBTree* >(this)->x14_tries += 1;
  if (node->GetOBB().LineIntersectsBox(info.GetRay(), t) && t < info.GetMagnitude()) {
    if (node->IsLeaf() == true) {
      if (LineIntersectsLeaf(node->GetLeafData(), info) == true)
        ret = true;
    } else {
      if (LineIntersectsOBBTree(&node->GetLeftNode(), &node->GetRightNode(), info) == true)
        ret = true;
    }
    node->SetHit(true);
  } else {
    const_cast< CCollidableOBBTree* >(this)->x18_misses += 1;
  }

  return ret;
}

// === LineIntersectsOBBTree (two nodes) ===

bool CCollidableOBBTree::LineIntersectsOBBTree(const COBBTree::CNode* n0,
                                               const COBBTree::CNode* n1,
                                               CRayCastInfo& info) const {
  bool ret = false;
  float t0, t1;
  bool intersects0 = false;

  const_cast< CCollidableOBBTree* >(this)->x14_tries += 2;

  if (n0->GetOBB().LineIntersectsBox(info.GetRay(), t0) == true && t0 < info.GetMagnitude())
    intersects0 = true;

  bool intersects1 = false;
  if (n1->GetOBB().LineIntersectsBox(info.GetRay(), t1) == true && t1 < info.GetMagnitude())
    intersects1 = true;

  if (intersects0 && intersects1) {
    if (t0 < t1) {
      if ((n0->IsLeaf() == true ? LineIntersectsLeaf(n0->GetLeafData(), info)
                                : LineIntersectsOBBTree(&n0->GetLeftNode(), &n0->GetRightNode(),
                                                        info)) == true) {
        if (info.GetMagnitude() < t1)
          return true;
        ret = true;
      }
      if (n1->IsLeaf()) {
        if (LineIntersectsLeaf(n1->GetLeafData(), info))
          ret = true;
      } else {
        if (LineIntersectsOBBTree(&n1->GetLeftNode(), &n1->GetRightNode(), info) == true)
          ret = true;
      }
    } else {
      if ((n1->IsLeaf() == true ? LineIntersectsLeaf(n1->GetLeafData(), info)
                                : LineIntersectsOBBTree(&n1->GetLeftNode(), &n1->GetRightNode(),
                                                        info)) == true) {
        if (info.GetMagnitude() < t0)
          return true;
        ret = true;
      }
      if (n0->IsLeaf()) {
        if (LineIntersectsLeaf(n0->GetLeafData(), info))
          ret = true;
      } else {
        if (LineIntersectsOBBTree(&n0->GetLeftNode(), &n0->GetRightNode(), info) == true)
          ret = true;
      }
    }
  } else {
    if (intersects0) {
      if (n0->IsLeaf() == true) {
        if (LineIntersectsLeaf(n0->GetLeafData(), info))
          return true;
      } else {
        if (LineIntersectsOBBTree(&n0->GetLeftNode(), &n0->GetRightNode(), info) == true)
          return true;
      }
    }
    if (intersects1) {
      if (n1->IsLeaf() == true) {
        if (LineIntersectsLeaf(n1->GetLeafData(), info))
          return true;
      } else {
        if (LineIntersectsOBBTree(&n1->GetLeftNode(), &n1->GetRightNode(), info) == true)
          return true;
      }
    }
  }

  return ret;
}

// === LineIntersectsLeaf ===

bool CCollidableOBBTree::LineIntersectsLeaf(const COBBTree::CLeafData& leaf,
                                            CRayCastInfo& info) const {
  bool ret = false;
  ushort intersectIdx = 0;
  int surfCount = leaf.GetSurfaceVector().size();
  const CMaterialFilter& filter = info.GetMaterialFilter();
  for (ushort i = 0; i < surfCount; ++i) {
    const CCollisionSurface& surface = x10_tree->GetSurface(leaf.GetSurfaceVector()[i]);
    const CMaterialList& baseMat = GetMaterial();
    CMaterialList matList(static_cast< u64 >(surface.GetSurfaceFlags()) | baseMat.GetValue());
    if (filter.Passes(matList)) {
      if (CollisionUtil::RayTriangleIntersection(info.GetRay().GetStart(),
                                                 info.GetRay().GetDirection(),
                                                 &surface.GetVert(0), info.Magnitude())) {
        intersectIdx = i;
        ret = true;
      }
    }
  }

  if (ret) {
    const CCollisionSurface& surf = x10_tree->GetSurface(leaf.GetSurfaceVector()[intersectIdx]);
    info.Plane() = surf.GetPlane();
    info.Material() = CMaterialList(surf.GetSurfaceFlags());
  }

  return ret;
}

// === GetTableIndex ===

uint CCollidableOBBTree::GetTableIndex() const {
  return sTableIndex;
}

// === Destructor ===

CCollidableOBBTree::~CCollidableOBBTree() {}
