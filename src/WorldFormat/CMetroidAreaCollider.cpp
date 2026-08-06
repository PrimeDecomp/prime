#pragma inline_max_size(250)

#include "WorldFormat/CMetroidAreaCollider.hpp"

#include "Collision/CMRay.hpp"
#include "Collision/CollisionUtil.hpp"
#include "WorldFormat/CCollisionEdge.hpp"

#include "Kyoto/Math/CMath.hpp"

#include <math.h>
#include <string.h>

static uint gCalledClip = 0;
static uint gRejectedByClip = 0;
static uint gTrianglesProcessed = 0;
static uint gDupTrianglesProcessed = 0;
ushort CMetroidAreaCollider::sDupPrimitiveCheckCount = 0;
ushort CMetroidAreaCollider::sDupVertexList[0x2800];
ushort CMetroidAreaCollider::sDupEdgeList[0x6000];
ushort CMetroidAreaCollider::sDupTriangleList[0x4000];

bool CMetroidAreaCollider::ConvexPolyCollision(const CPlane* planes, const CVector3f* verts,
                                               CAABox& aabb) {
  typedef rstl::reserved_vector< CVector3f, 20 > ClipVec;
  ++gCalledClip;

  ClipVec vecs[2];
  ++gRejectedByClip;
  int vecIdx = 0;
  int otherVecIdx = 1;

  vecs[0].push_back(verts[0]);
  vecs[0].push_back(verts[1]);
  vecs[0].push_back(verts[2]);

  for (int i = 0; i < 6; ++i) {
    ClipVec& vec = vecs[vecIdx];
    ClipVec& otherVec = vecs[otherVecIdx];
    otherVec.clear();

    bool inFrontOf = planes[i].GetHeight(vec.front()) >= 0.f;
    for (int j = 0; j < vec.size(); ++j) {
      const CVector3f& b = vec[j == vec.size() - 1 ? 0 : j + 1];
      if (inFrontOf) {
        otherVec.push_back(vec[j]);
      }
      bool nextInFrontOf = planes[i].GetHeight(b) >= 0.f;
      if (nextInFrontOf ^ inFrontOf) {
        float f = -(CVector3f::Dot(vec[j], planes[i].GetNormal()) - planes[i].GetConstant()) / CVector3f::Dot(b - vec[j], planes[i].GetNormal());
        otherVec.push_back((1.f - f) * (vec[j] - b) + b);
      }
      inFrontOf = nextInFrontOf;
    }

    if (otherVec.empty()) {
      return false;
    }

    otherVecIdx ^= 1;
    vecIdx ^= 1;
  }

  ClipVec& accumVec = vecs[otherVecIdx ^ 1];
  for (ClipVec::const_iterator it = accumVec.begin(); it != accumVec.end(); ++it) {
    aabb.AccumulateBounds(*it);
  }

  --gRejectedByClip;
  return true;
}

void CMetroidAreaCollider::ResetInternalCounters() {
  gCalledClip = 0;
  gRejectedByClip = 0;
  gTrianglesProcessed = 0;
  gDupTrianglesProcessed = 0;
  if (sDupPrimitiveCheckCount == 0xffff) {
    memset(sDupVertexList, 0, sizeof(sDupVertexList));
    memset(sDupEdgeList, 0, sizeof(sDupEdgeList));
    memset(sDupTriangleList, 0, sizeof(sDupTriangleList));
    ++sDupPrimitiveCheckCount;
  }
  ++sDupPrimitiveCheckCount;
}

CAABoxAreaCache::CAABoxAreaCache(const CAABox& aabb, const CPlane* pl,
                                 const CMaterialFilter& filter, const CMaterialList& material,
                                 CCollisionInfoList& collisionList)
: x0_aabb(aabb)
, x4_planes(pl)
, x8_filter(filter)
, xc_material(material)
, x10_collisionList(collisionList)
, x14_center(aabb.GetCenterPoint())
, x20_halfExtent(aabb.GetHalfExtent()) {}

bool CMetroidAreaCollider::AABoxCollisionCheck_Internal(const CAreaOctTree::Node& node,
                                                        CAABoxAreaCache& cache) {
  bool ret = false;

  switch (node.GetTreeType()) {
  case CAreaOctTree::Node::kTT_Invalid:
    return false;
  case CAreaOctTree::Node::kTT_Branch: {
    for (int i = 0; i < 8; ++i) {
      CAreaOctTree::Node ch = node.GetChild(i);
      CAABox box = ch.GetBoundingBox();
      if (box.DoBoundsOverlap(cache.x0_aabb))
        if (AABoxCollisionCheck_Internal(ch, cache))
          ret = true;
    }
    break;
  }
  case CAreaOctTree::Node::kTT_Leaf: {
    CAreaOctTree::TriListReference list = node.GetTriangleArray();
    int size = list.GetSize();
    const CAreaOctTree& owner = node.GetOwner();
    const CMaterialFilter& filter = cache.x8_filter;
    const CPlane* planes = cache.x4_planes;
    for (int j = 0; j < size; ++j) {
      ++gTrianglesProcessed;
      ushort triIdx = list.GetAt(j);
      if (sDupPrimitiveCheckCount == sDupTriangleList[triIdx]) {
        ++gDupTrianglesProcessed;
      } else {
        sDupTriangleList[triIdx] = sDupPrimitiveCheckCount;
        const CCollisionSurface& surf = owner.GetMasterListTriangle(triIdx);
        CMaterialList material(surf.GetSurfaceFlags());
        if (filter.Passes(material)) {
          if (CollisionUtil::TriBoxOverlap(cache.x14_center, cache.x20_halfExtent, surf.GetVert(0),
                                           surf.GetVert(1), surf.GetVert(2)) == true) {
            CAABox aabb = CAABox::MakeMaxInvertedBox();
            if (ConvexPolyCollision(planes, &surf.GetVert(0), aabb)) {
              CPlane plane = surf.GetPlane();
              cache.x10_collisionList.Add(CCollisionInfo(aabb, cache.xc_material, material,
                                                         plane.GetNormal(), -plane.GetNormal()),
                                          false);
              ret = true;
            }
          }
        }
      }
    }
    break;
  }
  default:
    break;
  }

  return ret;
}

bool CMetroidAreaCollider::AABoxCollisionCheck_Cached(const COctreeLeafCache& leafCache,
                                                      const CAABox& aabb,
                                                      const CMaterialFilter& filter,
                                                      const CMaterialList& matList,
                                                      CCollisionInfoList& list) {
  bool ret = false;
  const CUnitVector3f right(1.f, 0.f, 0.f);
  const CUnitVector3f forward(0.f, 1.f, 0.f);
  const CUnitVector3f up(0.f, 0.f, 1.f);
  const CPlane planes[6] = {
      CPlane(aabb.GetMinPoint(), right),   CPlane(aabb.GetMaxPoint(), -right),
      CPlane(aabb.GetMinPoint(), forward), CPlane(aabb.GetMaxPoint(), -forward),
      CPlane(aabb.GetMinPoint(), up),      CPlane(aabb.GetMaxPoint(), -up),
  };

  ResetInternalCounters();
  CVector3f center = aabb.GetCenterPoint();
  CVector3f halfExtent = aabb.GetHalfExtent();

  for (int i = 0; i < leafCache.GetNumLeaves(); ++i) {
    const CAreaOctTree::Node& node = leafCache.GetLeaf(i);
    if (aabb.DoBoundsOverlap(node.GetBoundingBox())) {
      CAreaOctTree::TriListReference listRef = node.GetTriangleArray();
      const CAreaOctTree& owner = node.GetOwner();
      int size = listRef.GetSize();
      for (int j = 0; j < size; ++j) {
        ++gTrianglesProcessed;
        ushort triIdx = listRef.GetAt(j);
        if (sDupPrimitiveCheckCount == sDupTriangleList[triIdx]) {
          ++gDupTrianglesProcessed;
        } else {
          sDupTriangleList[triIdx] = sDupPrimitiveCheckCount;
          const CCollisionSurface& surf = owner.GetMasterListTriangle(triIdx);
          CMaterialList material(surf.GetSurfaceFlags());
          if (filter.Passes(material)) {
            if (CollisionUtil::TriBoxOverlap(center, halfExtent, surf.GetVert(0), surf.GetVert(1),
                                             surf.GetVert(2)) == true) {
              CAABox aabb2 = CAABox::MakeMaxInvertedBox();
              if (ConvexPolyCollision(planes, &surf.GetVert(0), aabb2)) {
                CPlane plane = surf.GetPlane();
                list.Add(CCollisionInfo(aabb2, matList, material, plane.GetNormal(),
                                        -plane.GetNormal()),
                         false);
                ret = true;
              }
            }
          }
        }
      }
    }
  }

  return ret;
}

bool CMetroidAreaCollider::AABoxCollisionCheck(const CAreaOctTree& octTree, const CAABox& aabb,
                                               const CMaterialFilter& filter,
                                               const CMaterialList& matList,
                                               CCollisionInfoList& list) {
  CPlane planes[6] = {
      CPlane(aabb.GetMinPoint(), CUnitVector3f(1.f, 0.f, 0.f)),
      CPlane(aabb.GetMaxPoint(), -CUnitVector3f(1.f, 0.f, 0.f)),
      CPlane(aabb.GetMinPoint(), CUnitVector3f(0.f, 1.f, 0.f)),
      CPlane(aabb.GetMaxPoint(), -CUnitVector3f(0.f, 1.f, 0.f)),
      CPlane(aabb.GetMinPoint(), CUnitVector3f(0.f, 0.f, 1.f)),
      CPlane(aabb.GetMaxPoint(), -CUnitVector3f(0.f, 0.f, 1.f)),
  };
  CAABoxAreaCache cache(aabb, planes, filter, matList, list);

  ResetInternalCounters();

  CAreaOctTree::Node node(octTree.GetTreeMemory(), octTree.GetBoundingBox(), octTree,
                          octTree.GetTreeType());
  return AABoxCollisionCheck_Internal(node, cache);
}

bool CMetroidAreaCollider::AABoxCollisionCheckBoolean_Internal(const CAreaOctTree::Node& node,
                                                               const CBooleanAABoxAreaCache& cache) {
  for (int i = 0; i < 8; ++i) {
    CAreaOctTree::Node::ETreeType type = node.GetChildType(i);
    if (type != CAreaOctTree::Node::kTT_Invalid) {
      CAreaOctTree::Node ch = node.GetChild(i);
      if (cache.x0_aabb.DoBoundsOverlap(ch.GetBoundingBox())) {
        if (type == CAreaOctTree::Node::kTT_Leaf) {
          CAreaOctTree::TriListReference list = ch.GetTriangleArray();
          const CAreaOctTree& owner = ch.GetOwner();
          int size = list.GetSize();
          for (int j = 0; j < size; ++j) {
            ++gTrianglesProcessed;
            const CCollisionSurface& surf = owner.GetMasterListTriangle(list.GetAt(j));
            if (cache.x4_filter.Passes(CMaterialList(surf.GetSurfaceFlags()))) {
              if (CollisionUtil::TriBoxOverlap(cache.x8_center, cache.x14_halfExtent,
                                               surf.GetVert(0), surf.GetVert(1), surf.GetVert(2)) == true)
                return true;
            }
          }
        } else {
          if (AABoxCollisionCheckBoolean_Internal(ch, cache) == true)
            return true;
        }
      }
    }
  }
  return false;
}

bool CMetroidAreaCollider::AABoxCollisionCheckBoolean_Cached(const COctreeLeafCache& leafCache,
                                                             const CAABox& aabb,
                                                             const CMaterialFilter& filter) {
  CVector3f center = aabb.GetCenterPoint();
  CVector3f halfExtent = aabb.GetHalfExtent();

  for (int i = 0; i < leafCache.GetNumLeaves(); ++i) {
    const CAreaOctTree::Node& node = leafCache.GetLeaf(i);
    if (aabb.DoBoundsOverlap(node.GetBoundingBox())) {
      CAreaOctTree::TriListReference list = node.GetTriangleArray();
      const CAreaOctTree& owner = node.GetOwner();
      int size = list.GetSize();
      for (int j = 0; j < size; ++j) {
        ++gTrianglesProcessed;
        const CCollisionSurface& surf = owner.GetMasterListTriangle(list.GetAt(j));
        if (filter.Passes(CMaterialList(surf.GetSurfaceFlags()))) {
          if (CollisionUtil::TriBoxOverlap(center, halfExtent,
                                           surf.GetVert(0), surf.GetVert(1), surf.GetVert(2)) == true)
            return true;
        }
      }
    }
  }

  return false;
}

CBooleanAABoxAreaCache::CBooleanAABoxAreaCache(const CAABox& aabb, const CMaterialFilter& filter)
: x0_aabb(aabb)
, x4_filter(filter)
, x8_center(aabb.GetCenterPoint())
, x14_halfExtent(aabb.GetHalfExtent()) {}

bool CMetroidAreaCollider::AABoxCollisionCheckBoolean(const CAreaOctTree& octTree,
                                                      const CAABox& aabb,
                                                      const CMaterialFilter& filter) {
  CBooleanAABoxAreaCache cache(aabb, filter);
  return AABoxCollisionCheckBoolean_Internal(octTree.GetRootNode(), cache);
}

bool CMetroidAreaCollider::SphereCollisionCheck_Internal(const CAreaOctTree::Node& node,
                                                         CSphereAreaCache& cache) {
  bool ret = false;
  CVector3f point = CVector3f::Zero();
  CVector3f normal = CVector3f::Zero();

  for (int i = 0; i < 8; ++i) {
    CAreaOctTree::Node::ETreeType chTp = node.GetChildType(i);
    if (chTp != CAreaOctTree::Node::kTT_Invalid) {
      CAreaOctTree::Node ch = node.GetChild(i);
      if (cache.x0_aabb.DoBoundsOverlap(ch.GetBoundingBox())) {
        if (chTp == CAreaOctTree::Node::kTT_Leaf) {
          CAreaOctTree::TriListReference list = ch.GetTriangleArray();
          const CAreaOctTree& owner = ch.GetOwner();
          int size = list.GetSize();
          for (int j = 0; j < size; ++j) {
            ++gTrianglesProcessed;
            ushort triIdx = list.GetAt(j);
            if (sDupPrimitiveCheckCount == sDupTriangleList[triIdx]) {
              ++gDupTrianglesProcessed;
            } else {
              sDupTriangleList[triIdx] = sDupPrimitiveCheckCount;
              const CCollisionSurface& surf = owner.GetMasterListTriangle(triIdx);
              CMaterialList material(surf.GetSurfaceFlags());
              if (cache.x8_filter.Passes(material)) {
                if (CollisionUtil::TriSphereIntersection(cache.x4_sphere, surf.GetVert(0),
                                                         surf.GetVert(1), surf.GetVert(2),
                                                         point, normal)) {
                  cache.x10_collisionList.Add(
                      CCollisionInfo(point, cache.xc_material, material, normal), false);
                  ret = true;
                }
              }
            }
          }
        } else {
          if (SphereCollisionCheck_Internal(ch, cache) == true)
            ret = true;
        }
      }
    }
  }

  return ret;
}

bool CMetroidAreaCollider::SphereCollisionCheck_Cached(const COctreeLeafCache& leafCache,
                                                       const CAABox& aabb,
                                                       const CSphere& sphere,
                                                       const CMaterialList& matList,
                                                       const CMaterialFilter& filter,
                                                       CCollisionInfoList& clist) {
  ResetInternalCounters();

  bool ret = false;
  CVector3f point = CVector3f::Zero();
  CVector3f normal = CVector3f::Zero();

  for (int i = 0; i < leafCache.GetNumLeaves(); ++i) {
    const CAreaOctTree::Node& node = leafCache.GetLeaf(i);
    if (aabb.DoBoundsOverlap(node.GetBoundingBox())) {
      CAreaOctTree::TriListReference list = node.GetTriangleArray();
      const CAreaOctTree& owner = node.GetOwner();
      int size = list.GetSize();
      for (int j = 0; j < size; ++j) {
        ++gTrianglesProcessed;
        ushort triIdx = list.GetAt(j);
        if (sDupPrimitiveCheckCount == sDupTriangleList[triIdx]) {
          ++gDupTrianglesProcessed;
        } else {
          sDupTriangleList[triIdx] = sDupPrimitiveCheckCount;
          const CCollisionSurface& surf = owner.GetMasterListTriangle(triIdx);
          CMaterialList material(surf.GetSurfaceFlags());
          if (filter.Passes(material)) {
            if (CollisionUtil::TriSphereIntersection(sphere, surf.GetVert(0), surf.GetVert(1),
                                                     surf.GetVert(2), point, normal)) {
              clist.Add(CCollisionInfo(point, matList, material, normal), false);
              ret = true;
            }
          }
        }
      }
    }
  }

  return ret;
}

bool CMetroidAreaCollider::SphereCollisionCheck(const CAreaOctTree& octTree, const CAABox& aabb,
                                                const CSphere& sphere,
                                                const CMaterialList& matList,
                                                const CMaterialFilter& filter,
                                                CCollisionInfoList& list) {
  CSphereAreaCache cache(aabb, sphere, filter, matList, list);
  ResetInternalCounters();
  return SphereCollisionCheck_Internal(octTree.GetRootNode(), cache);
}

bool CMetroidAreaCollider::SphereCollisionCheckBoolean_Internal(
    const CAreaOctTree::Node& node, const CBooleanSphereAreaCache& cache) {
  for (int i = 0; i < 8; ++i) {
    CAreaOctTree::Node::ETreeType type = node.GetChildType(i);
    if (type != CAreaOctTree::Node::kTT_Invalid) {
      CAreaOctTree::Node ch = node.GetChild(i);
      if (cache.x0_aabb.DoBoundsOverlap(ch.GetBoundingBox())) {
        if (type == CAreaOctTree::Node::kTT_Leaf) {
          CAreaOctTree::TriListReference list = ch.GetTriangleArray();
          const CAreaOctTree& owner = ch.GetOwner();
          int size = list.GetSize();
          for (int j = 0; j < size; ++j) {
            ++gTrianglesProcessed;
            const CCollisionSurface& surf = owner.GetMasterListTriangle(list.GetAt(j));
            if (cache.x8_filter.Passes(CMaterialList(surf.GetSurfaceFlags()))) {
              if (CollisionUtil::TriSphereOverlap(cache.x4_sphere, surf.GetVert(0),
                                                   surf.GetVert(1), surf.GetVert(2)) == true)
                return true;
            }
          }
        } else {
          if (SphereCollisionCheckBoolean_Internal(ch, cache) == true)
            return true;
        }
      }
    }
  }
  return false;
}

bool CMetroidAreaCollider::SphereCollisionCheckBoolean_Cached(const COctreeLeafCache& leafCache,
                                                              const CAABox& aabb,
                                                              const CSphere& sphere,
                                                              const CMaterialFilter& filter) {
  for (int i = 0; i < leafCache.GetNumLeaves(); ++i) {
    const CAreaOctTree::Node& node = leafCache.GetLeaf(i);
    if (aabb.DoBoundsOverlap(node.GetBoundingBox())) {
      CAreaOctTree::TriListReference list = node.GetTriangleArray();
      const CAreaOctTree& owner = node.GetOwner();
      int size = list.GetSize();
      for (int j = 0; j < size; ++j) {
        ++gTrianglesProcessed;
        const CCollisionSurface& surf = owner.GetMasterListTriangle(list.GetAt(j));
        if (filter.Passes(CMaterialList(surf.GetSurfaceFlags()))) {
          if (CollisionUtil::TriSphereOverlap(sphere, surf.GetVert(0), surf.GetVert(1),
                                               surf.GetVert(2)) == true)
            return true;
        }
      }
    }
  }

  return false;
}

bool CMetroidAreaCollider::SphereCollisionCheckBoolean(const CAreaOctTree& octTree,
                                                       const CAABox& aabb,
                                                       const CSphere& sphere,
                                                       const CMaterialFilter& filter) {
  CBooleanSphereAreaCache cache(aabb, sphere, filter);
  return SphereCollisionCheckBoolean_Internal(octTree.GetRootNode(), cache);
}

bool CMetroidAreaCollider::MovingSphereCollisionCheck_Cached(
    const COctreeLeafCache& leafCache, const CAABox& aabb, const CSphere& sphere,
    const CMaterialFilter& filter, const CMaterialList& matList, CVector3f dir, float mag,
    CCollisionInfo& infoOut, double& dOut) {
  dOut = mag;
  ResetInternalCounters();

  CVector3f moveVec = mag * dir;
  CAABox movedAABB = aabb;
  movedAABB.AccumulateBounds(aabb.GetMinPoint() + moveVec);
  movedAABB.AccumulateBounds(aabb.GetMaxPoint() + moveVec);

  CVector3f center = movedAABB.GetCenterPoint();
  CVector3f extent = movedAABB.GetHalfExtent();
  bool ret = false;

  for (int i = 0; i < leafCache.GetNumLeaves(); ++i) {
    const CAreaOctTree::Node& node = leafCache.GetLeaf(i);
    if (movedAABB.DoBoundsOverlap(node.GetBoundingBox())) {
      CAreaOctTree::TriListReference list = node.GetTriangleArray();
      const CAreaOctTree& owner = node.GetOwner();
      int listSize = list.GetSize();
      for (int j = 0; j < listSize; ++j) {
        ushort triIdx = list.GetAt(j);
        if (sDupPrimitiveCheckCount != sDupTriangleList[triIdx]) {
          sDupTriangleList[triIdx] = sDupPrimitiveCheckCount;
          ++gTrianglesProcessed;
          uint matValue = owner.GetTriangleMaterial(triIdx);
          CMaterialList triMat(matValue);
          if (filter.Passes(triMat)) {
            ushort vertIndices[3];
            owner.GetTriangleVertexIndices(triIdx, vertIndices);
            CCollisionSurface surf(owner.GetVert(vertIndices[0]),
                                   owner.GetVert(vertIndices[1]),
                                   owner.GetVert(vertIndices[2]), matValue);

            if (CollisionUtil::TriBoxOverlap(center, extent, surf.GetVert(0), surf.GetVert(1),
                                             surf.GetVert(2)) == true) {
              CVector3f surfNormal = surf.GetNormal();
              if (CVector3f::Dot(sphere.GetCenter() + moveVec - surf.GetVert(0), surfNormal) <=
                  sphere.GetRadius()) {
                bool triRet = false;

                double triMagD =
                    static_cast< double >(sphere.GetRadius() -
                     CVector3f::Dot(sphere.GetCenter() - surf.GetVert(0), surfNormal)) /
                    static_cast< double >(CVector3f::Dot(dir, surfNormal));
                float triMag = static_cast< float >(triMagD);
                CVector3f intersectPoint = sphere.GetCenter() + triMag * dir;

                bool outsideEdges[3];
                outsideEdges[0] =
                    CVector3f::Dot(intersectPoint - surf.GetVert(0),
                        CVector3f::Cross(surfNormal, surf.GetVert(1) - surf.GetVert(0))) <
                    0.f;
                outsideEdges[1] =
                    CVector3f::Dot(intersectPoint - surf.GetVert(1),
                        CVector3f::Cross(surfNormal, surf.GetVert(2) - surf.GetVert(1))) <
                    0.f;
                outsideEdges[2] =
                    CVector3f::Dot(intersectPoint - surf.GetVert(2),
                        CVector3f::Cross(surfNormal, surf.GetVert(0) - surf.GetVert(2))) <
                    0.f;

                if (triMagD >= 0.0 && !outsideEdges[0] && !outsideEdges[1] && !outsideEdges[2] &&
                    triMagD < dOut) {
                  infoOut = CCollisionInfo(intersectPoint - sphere.GetRadius() * surfNormal,
                                           matList, triMat, surfNormal);
                  dOut = triMagD;
                  triRet = true;
                  ret = true;
                }

                bool intersects =
                    CVector3f::Dot(sphere.GetCenter() - surf.GetVert(0), surfNormal) <= sphere.GetRadius();
                bool testVert[3] = {true, true, true};
                const ushort* edgeIndices = owner.GetTriangleEdgeIndices(triIdx);
                for (int k = 0; k < 3; ++k) {
                  if (intersects || outsideEdges[k]) {
                    ushort edgeIdx = edgeIndices[k];
                    if (sDupPrimitiveCheckCount != sDupEdgeList[edgeIdx]) {
                      sDupEdgeList[edgeIdx] = sDupPrimitiveCheckCount;
                      uint edgeMatVal = owner.GetEdgeMaterial(edgeIdx);
                      if (!(edgeMatVal & (1u << kMT_NoEdgeCollision))) {
                        static int mod3[4] = {0, 1, 2, 0};
                        int nextIdx = mod3[k + 1];
                        CVector3f edgeVec = surf.GetVert(nextIdx) - surf.GetVert(k);
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
                            double eMag = 0.5 / edgeRejMagSq * (-tmp - sqrt(tmp2));
                            if (eMag >= 0.0) {
                              double t = eMag * dirDotEdge + vtsDotEdge;
                              if (t >= 0.0 && t <= edgeVecMag && eMag < dOut) {
                                CVector3f ePoint = surf.GetVert(k) + static_cast< float >(t) * edgeVec;
                                CVector3f eNormal = (sphere.GetCenter() + static_cast< float >(eMag) * dir - ePoint).AsNormalized();
                                infoOut = CCollisionInfo(
                                    ePoint, matList, CMaterialList(edgeMatVal), eNormal);
                                dOut = eMag;
                                triRet = true;
                                ret = true;
                                testVert[k] = false;
                                testVert[nextIdx] = false;
                              } else if (t < -sphere.GetRadius() && dirDotEdge <= 0.f) {
                                testVert[k] = false;
                              } else if (t > edgeVecMag + sphere.GetRadius() &&
                                         dirDotEdge >= 0.f) {
                                testVert[nextIdx] = false;
                              }
                            }
                          } else {
                            testVert[k] = false;
                            testVert[nextIdx] = false;
                          }
                        }
                      }
                    }
                  }
                }

                for (int k = 0; k < 3; ++k) {
                  ushort vertIdx = vertIndices[k];
                  if (testVert[k]) {
                    if (sDupPrimitiveCheckCount != sDupVertexList[vertIdx]) {
                      sDupVertexList[vertIdx] = sDupPrimitiveCheckCount;
                      double d = dOut;
                      if (CollisionUtil::RaySphereIntersection_Double(
                              CSphere(surf.GetVert(k), sphere.GetRadius()), sphere.GetCenter(),
                              dir, d) &&
                          d >= 0.0) {
                        CVector3f vNormal =
                            (sphere.GetCenter() + dir * static_cast< float >(d) - surf.GetVert(k))
                                .AsNormalized();
                        CMaterialList vertMat(owner.GetVertMaterial(vertIdx));
                        infoOut = CCollisionInfo(surf.GetVert(k), matList, vertMat, vNormal);
                        dOut = d;
                        triRet = true;
                        ret = true;
                      }
                    }
                  } else {
                    sDupVertexList[vertIdx] = sDupPrimitiveCheckCount;
                  }
                }

                if (triRet) {
                  moveVec = static_cast< float >(dOut) * dir;
                  movedAABB = aabb;
                  movedAABB.AccumulateBounds(aabb.GetMinPoint() + moveVec);
                  movedAABB.AccumulateBounds(aabb.GetMaxPoint() + moveVec);
                  center = movedAABB.GetCenterPoint();
                  extent = movedAABB.GetHalfExtent();
                }
              }
            } else {
              const ushort* edgeIndices = owner.GetTriangleEdgeIndices(triIdx);
              sDupEdgeList[edgeIndices[0]] = sDupPrimitiveCheckCount;
              sDupEdgeList[edgeIndices[1]] = sDupPrimitiveCheckCount;
              sDupEdgeList[edgeIndices[2]] = sDupPrimitiveCheckCount;
              sDupVertexList[vertIndices[0]] = sDupPrimitiveCheckCount;
              sDupVertexList[vertIndices[1]] = sDupPrimitiveCheckCount;
              sDupVertexList[vertIndices[2]] = sDupPrimitiveCheckCount;
            }
          }
        }
      }
    }
  }

  return ret;
}

bool CMetroidAreaCollider::MovingAABoxCollisionCheck_Cached(
    const COctreeLeafCache& leafCache, const CAABox& aabb, const CMaterialFilter& filter,
    const CMaterialList& matList, CVector3f dir, float mag, CCollisionInfo& infoOut,
    double& dOut) {
  dOut = mag;
  ResetInternalCounters();

  CVector3f moveVec = mag * dir;
  CMovingAABoxComponents components(aabb, dir);

  CAABox movedAABB = components.x6e8_aabb;
  movedAABB.AccumulateBounds(aabb.GetMinPoint() + moveVec);
  movedAABB.AccumulateBounds(aabb.GetMaxPoint() + moveVec);

  CVector3f center = movedAABB.GetCenterPoint();
  CVector3f extent = movedAABB.GetHalfExtent();
  bool ret = false;

  CVector3f normal(CVector3f::Zero());
  CVector3f point(CVector3f::Zero());

  for (int i = 0; i < leafCache.GetNumLeaves(); ++i) {
    const CAreaOctTree::Node& node = leafCache.GetLeaf(i);
    if (movedAABB.DoBoundsOverlap(node.GetBoundingBox())) {
      CAreaOctTree::TriListReference list = node.GetTriangleArray();
      const CAreaOctTree& owner = node.GetOwner();
      int listSize = list.GetSize();
      for (int j = 0; j < listSize; ++j) {
        ushort triIdx = list.GetAt(j);
        if (sDupPrimitiveCheckCount != sDupTriangleList[triIdx]) {
          sDupTriangleList[triIdx] = sDupPrimitiveCheckCount;
          ++gTrianglesProcessed;
          uint matValue = owner.GetTriangleMaterial(triIdx);
          CMaterialList triMat(matValue);
          if (filter.Passes(triMat)) {
            ushort vertIndices[3];
            owner.GetTriangleVertexIndices(triIdx, vertIndices);
            CCollisionSurface surf(owner.GetVert(vertIndices[0]),
                                   owner.GetVert(vertIndices[1]),
                                   owner.GetVert(vertIndices[2]), matValue);

            if (CollisionUtil::TriBoxOverlap(center, extent, surf.GetVert(0), surf.GetVert(1),
                                             surf.GetVert(2)) == true) {
              bool triRet = false;
              double d = dOut;
              if (MovingAABoxCollisionCheck_BoxVertexTri(surf, aabb, components.x6c4_vertIdxs, dir,
                                                         d, normal, point) &&
                  d < dOut) {
                triRet = true;
                infoOut = CCollisionInfo(point, matList, triMat, normal);
                ret = true;
                dOut = d;
              }

              for (int k = 0; k < 3; ++k) {
                ushort vertIdx = vertIndices[k];
                if (sDupPrimitiveCheckCount != sDupVertexList[vertIdx]) {
                  sDupVertexList[vertIdx] = sDupPrimitiveCheckCount;
                  const CVector3f& vtx = owner.GetVert(vertIdx);
                  if (movedAABB.PointInside(vtx)) {
                    d = dOut;
                    if (MovingAABoxCollisionCheck_TriVertexBox(vtx, aabb, dir, d, normal, point) &&
                        d < dOut) {
                      CMaterialList vertMat(owner.GetVertMaterial(vertIdx));
                      triRet = true;
                      infoOut = CCollisionInfo(point, matList, vertMat, normal);
                      ret = true;
                      dOut = d;
                    }
                  }
                }
              }

              const ushort* edgeIndices = owner.GetTriangleEdgeIndices(triIdx);
              for (int k = 0; k < 3; ++k) {
                ushort edgeIdx = edgeIndices[k];
                if (sDupPrimitiveCheckCount != sDupEdgeList[edgeIdx]) {
                  sDupEdgeList[edgeIdx] = sDupPrimitiveCheckCount;
                  uint edgeMat = owner.GetEdgeMaterial(edgeIdx);
                  if (!(edgeMat & (1u << kMT_NoEdgeCollision))) {
                    d = dOut;
                    const CCollisionEdge& edge = owner.GetEdge(edgeIdx);
                    if (MovingAABoxCollisionCheck_Edge(owner.GetVert(edge.GetVertIndex1()),
                                                       owner.GetVert(edge.GetVertIndex2()),
                                                       components.x0_edges, dir, d, normal,
                                                       point) &&
                        d < dOut) {
                      triRet = true;
                      infoOut = CCollisionInfo(point, matList, CMaterialList(edgeMat), normal);
                      ret = true;
                      dOut = d;
                    }
                  }
                }
              }

              if (triRet) {
                moveVec = static_cast< float >(dOut) * dir;
                movedAABB = components.x6e8_aabb;
                movedAABB.AccumulateBounds(aabb.GetMinPoint() + moveVec);
                movedAABB.AccumulateBounds(aabb.GetMaxPoint() + moveVec);
                center = movedAABB.GetCenterPoint();
                extent = movedAABB.GetHalfExtent();
              }
            } else {
              const ushort* edgeIndices = owner.GetTriangleEdgeIndices(triIdx);
              sDupEdgeList[edgeIndices[0]] = sDupPrimitiveCheckCount;
              sDupEdgeList[edgeIndices[1]] = sDupPrimitiveCheckCount;
              sDupEdgeList[edgeIndices[2]] = sDupPrimitiveCheckCount;
              sDupVertexList[vertIndices[0]] = sDupPrimitiveCheckCount;
              sDupVertexList[vertIndices[1]] = sDupPrimitiveCheckCount;
              sDupVertexList[vertIndices[2]] = sDupPrimitiveCheckCount;
            }
          }
        }
      }
    }
  }

  return ret;
}

bool CMetroidAreaCollider::MovingAABoxCollisionCheck_TriVertexBox(const CVector3f& vert,
                                                                  const CAABox& aabb,
                                                                  CVector3f dir, double& dOut,
                                                                  CVector3f& normal,
                                                                  CVector3f& point) {
  bool ret = false;
  float rayLen = static_cast< float >(dOut);
  CMRay ray(vert, -dir, rayLen);
  CVector3f norm(CVector3f::Zero());
  double d;
  if (CollisionUtil::RayAABoxIntersection_Double(ray, aabb, norm, d) == 2) {
    double nd = d * dOut;
    if (nd < dOut) {
      ret = true;
      normal = -norm;
      dOut = nd;
      point = vert;
    }
  }
  return ret;
}

bool CMetroidAreaCollider::MovingAABoxCollisionCheck_BoxVertexTri(
    const CCollisionSurface& surf, const CAABox& aabb,
    const rstl::reserved_vector< uint, 8 >& vertIndices, CVector3f dir, double& d,
    CVector3f& normalOut, CVector3f& pointOut) {
  bool ret = false;
  for (int i = 0; i < vertIndices.size(); ++i) {
    CVector3f point = aabb.GetPoint(vertIndices[i]);
    if (CollisionUtil::RayTriangleIntersection_Double(point, dir, &surf.GetVert(0), d)) {
      pointOut = point + dir * static_cast< float >(d);
      normalOut = surf.GetNormal();
      ret = true;
    }
  }
  return ret;
}

bool CMetroidAreaCollider::MovingAABoxCollisionCheck_Edge(
    const CVector3f& ev0, const CVector3f& ev1,
    const rstl::reserved_vector< SBoxEdge, 12 >& edges, CVector3f dir, double& d,
    CVector3f& normal, CVector3f& point) {
  bool ret = false;

  for (int i = 0; i < edges.size(); ++i) {
    const SBoxEdge& edge = edges[i];
    CVector3d ev0d = ev0;
    CVector3d ev1d = ev1;
    if ((CVector3d::Dot(edge.x70_coDir, ev0d) >= edge.x88_dirCoDirDot) ==
        (CVector3d::Dot(edge.x70_coDir, ev1d) >= edge.x88_dirCoDirDot))
      continue;

    CVector3d delta = ev0d - ev1d;
    CVector3d cross0 = CVector3d::Cross(edge.x58_delta, delta);
    if (cross0.MagSquared() < DBL_EPSILON)
      continue;

    CVector3d cross0Norm = cross0.AsNormalized();
    if (CVector3d::Dot(cross0Norm, dir) >= 0.0) {
      ev1d = ev0;
      ev0d = ev1;
      delta = ev0d - ev1d;
      cross0 = CVector3d::Cross(edge.x58_delta, delta);
      cross0Norm = cross0.AsNormalized();
    }

    CVector3d clipped =
        ev0d +
        (-(CVector3d::Dot(ev0d, edge.x70_coDir) - edge.x88_dirCoDirDot) /
         CVector3d::Dot(delta, edge.x70_coDir)) *
            delta;
    int maxCompIdx = (CMath::AbsD(edge.x70_coDir.GetX()) > CMath::AbsD(edge.x70_coDir.GetY()))
                         ? 0
                         : 1;
    if (CMath::AbsD(edge.x70_coDir[maxCompIdx]) < CMath::AbsD(edge.x70_coDir.GetZ()))
      maxCompIdx = 2;

    int ci0, ci1;
    if (maxCompIdx == 0) {
      ci0 = 1;
      ci1 = 2;
    } else if (maxCompIdx == 1) {
      ci0 = 0;
      ci1 = 2;
    } else {
      ci0 = 0;
      ci1 = 1;
    }

    double eMag = (edge.x58_delta[ci0] * (clipped[ci1] - edge.x28_start[ci1]) -
                   edge.x58_delta[ci1] * (clipped[ci0] - edge.x28_start[ci0])) /
                  (edge.x58_delta[ci0] * dir[ci1] - edge.x58_delta[ci1] * dir[ci0]);
    if (!(eMag < 0.0) && !(eMag >= d)) {
      CVector3d clippedMag = clipped - eMag * CVector3d(dir);
      double dotCheck =
          (edge.x28_start.GetX() - clippedMag.GetX()) * (edge.x40_end.GetX() - clippedMag.GetX()) +
          (edge.x28_start.GetY() - clippedMag.GetY()) * (edge.x40_end.GetY() - clippedMag.GetY()) +
          (edge.x28_start.GetZ() - clippedMag.GetZ()) * (edge.x40_end.GetZ() - clippedMag.GetZ());
      if (dotCheck < 0.0 && eMag < d) {
        normal = cross0Norm.AsCVector3f();
        d = eMag;
        point = clipped.AsCVector3f();
        ret = true;
      }
    }
  }

  return ret;
}

CMetroidAreaCollider::COctreeLeafCache::COctreeLeafCache(const CAreaOctTree& octTree)
: x0_octTree(octTree), x908_24_overflow(false) {}

void CMetroidAreaCollider::COctreeLeafCache::AddLeaf(const CAreaOctTree::Node& node) {
  if (x4_nodeCache.size() == x4_nodeCache.capacity()) {
    x908_24_overflow = true;
    return;
  }
  x4_nodeCache.push_back(node);
}

CAreaCollisionCache::CAreaCollisionCache(const CAABox& aabb)
: x0_aabb(aabb), x1b40_24_leafOverflow(false), x1b40_25_cacheOverflow(false) {}

void CAreaCollisionCache::AddOctreeLeafCache(
    const CMetroidAreaCollider::COctreeLeafCache& leafCache) {
  if (!leafCache.GetNumLeaves())
    return;

  if (leafCache.HasCacheOverflowed())
    x1b40_24_leafOverflow = true;

  if (x18_leafCaches.size() < 3) {
    x18_leafCaches.push_back(leafCache);
  } else {
    x1b40_24_leafOverflow = true;
    x1b40_25_cacheOverflow = true;
  }
}

void CAreaCollisionCache::SetCacheBounds(const CAABox& aabb) { x0_aabb = aabb; }

void CAreaCollisionCache::ClearCache() {
  x18_leafCaches.clear();
  x1b40_24_leafOverflow = false;
  x1b40_25_cacheOverflow = false;
}

void CMetroidAreaCollider::BuildOctreeLeafCache(const CAreaOctTree::Node& node, const CAABox& aabb,
                                                COctreeLeafCache& cache) {
  for (int i = 0; i < 8; ++i) {
    CAreaOctTree::Node::ETreeType type = node.GetChildType(i);
    if (type != CAreaOctTree::Node::kTT_Invalid) {
      CAreaOctTree::Node ch = node.GetChild(i);
      if (aabb.DoBoundsOverlap(ch.GetBoundingBox())) {
        if (type == CAreaOctTree::Node::kTT_Leaf)
          cache.AddLeaf(ch);
        else
          BuildOctreeLeafCache(ch, aabb, cache);
      }
    }
  }
}

static void FlagEdgeIndicesForFace(uint face, bool* edgeFlags) {
  switch (face) {
  case 0:
    edgeFlags[10] = true;
    edgeFlags[11] = true;
    edgeFlags[2] = true;
    edgeFlags[4] = true;
    return;
  case 1:
    edgeFlags[8] = true;
    edgeFlags[9] = true;
    edgeFlags[0] = true;
    edgeFlags[6] = true;
    return;
  case 2:
    edgeFlags[4] = true;
    edgeFlags[5] = true;
    edgeFlags[6] = true;
    edgeFlags[7] = true;
    return;
  case 3:
    edgeFlags[0] = true;
    edgeFlags[1] = true;
    edgeFlags[2] = true;
    edgeFlags[3] = true;
    return;
  case 4:
    edgeFlags[7] = true;
    edgeFlags[8] = true;
    edgeFlags[3] = true;
    edgeFlags[11] = true;
    return;
  case 5:
    edgeFlags[1] = true;
    edgeFlags[5] = true;
    edgeFlags[9] = true;
    edgeFlags[10] = true;
    return;
  default:
    break;
  }
}

static void FlagVertexIndicesForFace(uint face, bool* vertFlags) {
  switch (face) {
  case 0:
    vertFlags[1] = true;
    vertFlags[3] = true;
    vertFlags[5] = true;
    vertFlags[7] = true;
    return;
  case 1:
    vertFlags[0] = true;
    vertFlags[2] = true;
    vertFlags[4] = true;
    vertFlags[6] = true;
    return;
  case 2:
    vertFlags[2] = true;
    vertFlags[3] = true;
    vertFlags[6] = true;
    vertFlags[7] = true;
    return;
  case 3:
    vertFlags[0] = true;
    vertFlags[1] = true;
    vertFlags[4] = true;
    vertFlags[5] = true;
    return;
  case 4:
    vertFlags[4] = true;
    vertFlags[5] = true;
    vertFlags[6] = true;
    vertFlags[7] = true;
    return;
  case 5:
    vertFlags[0] = true;
    vertFlags[1] = true;
    vertFlags[2] = true;
    vertFlags[3] = true;
    return;
  default:
    break;
  }
}

CMetroidAreaCollider::SBoxEdge::SBoxEdge(const CAABox& aabb, int idx, const CVector3f& dir)
: x0_seg(aabb.GetEdge(static_cast< CAABox::EBoxEdgeId >(idx)))
, x28_start(x0_seg.GetRefPoint())
, x40_end(x0_seg.GetEndPoint())
, x58_delta(x40_end - x28_start)
, x70_coDir(CVector3d::Cross(x58_delta, CVector3d(dir)).AsNormalized())
, x88_dirCoDirDot(CVector3d::Dot(x28_start, x70_coDir)) {}

CMetroidAreaCollider::CMovingAABoxComponents::CMovingAABoxComponents(const CAABox& aabb,
                                                                      const CVector3f& dir)
: x6e8_aabb(aabb) {
  bool edgeFlags[12] = {};
  bool vertFlags[8] = {};
  uint useFaces = 0;

  for (int i = 0; i < 3; ++i) {
    if (dir[i] != 0.f) {
      uint face = i * 2 + (dir[i] < 0.f);
      FlagEdgeIndicesForFace(face, edgeFlags);
      FlagVertexIndicesForFace(face, vertFlags);
      useFaces += 1;
    }
  }

  for (int i = 0; i < 12; ++i) {
    if (edgeFlags[i]) {
      x0_edges.push_back(SBoxEdge(aabb, i, dir));
    }
  }

  for (int i = 0; i < 8; ++i) {
    if (vertFlags[i]) {
      x6c4_vertIdxs.push_back(i);
    }
  }

  if (useFaces == 1) {
    x6e8_aabb = CAABox::MakeMaxInvertedBox();
    x6e8_aabb.AccumulateBounds(aabb.GetPoint(x6c4_vertIdxs[0]));
    x6e8_aabb.AccumulateBounds(aabb.GetPoint(x6c4_vertIdxs[1]));
    x6e8_aabb.AccumulateBounds(aabb.GetPoint(x6c4_vertIdxs[2]));
    x6e8_aabb.AccumulateBounds(aabb.GetPoint(x6c4_vertIdxs[3]));
  }
}
