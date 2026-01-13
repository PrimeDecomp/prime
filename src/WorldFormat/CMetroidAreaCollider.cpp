#include "WorldFormat/CMetroidAreaCollider.hpp"

#include "Collision/CollisionUtil.hpp"

#include <string.h>

static uint gCalledClip = 0;
static uint gRejectedByClip = 0;
static uint gTrianglesProcessed = 0;
static uint gDupTrianglesProcessed = 0;
ushort CMetroidAreaCollider::sDupPrimitiveCheckCount = 0;
ushort CMetroidAreaCollider::sDupVertexList[0x2800];
ushort CMetroidAreaCollider::sDupEdgeList[0x6000];
ushort CMetroidAreaCollider::sDupTriangleList[0x4000];

static inline CVector3f ClipRayToPlane(const CVector3f& a, const CVector3f& b,
                                       const CPlane& plane) {
  float f = -plane.GetHeight(a) / CVector3f::Dot(b - a, plane.GetNormal());
  return (a - b) * (1.f - f);
}

bool CMetroidAreaCollider::ConvexPolyCollision(const CPlane* planes, const CVector3f* verts,
                                               CAABox& aabb) {
  typedef rstl::reserved_vector< CVector3f, 20 > ClipVec;
  ++gCalledClip;
  ++gRejectedByClip;

  ClipVec vecs[2];
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
        otherVec.push_back(ClipRayToPlane(vec[j], b, planes[i]) + b);
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
  const CUnitVector3f right(CVector3f(1.f, 0.f, 0.f), CUnitVector3f::kN_No);
  const CUnitVector3f forward(CVector3f(0.f, 1.f, 0.f), CUnitVector3f::kN_No);
  const CUnitVector3f up(CVector3f(0.f, 0.f, 1.f), CUnitVector3f::kN_No);
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
      for (int j = 0; j < listRef.GetSize(); ++j) {
        ++gTrianglesProcessed;
        ushort triIdx = listRef.GetAt(j);
        if (sDupPrimitiveCheckCount == sDupTriangleList[triIdx]) {
          ++gDupTrianglesProcessed;
        } else {
          sDupTriangleList[triIdx] = sDupPrimitiveCheckCount;
          const CCollisionSurface& surf = node.GetOwner().GetMasterListTriangle(triIdx);
          CMaterialList material(surf.GetSurfaceFlags());
          if (filter.Passes(material)) {
            if (CollisionUtil::TriBoxOverlap(center, halfExtent, surf.GetVert(0), surf.GetVert(1),
                                             surf.GetVert(2)) == true) {
              CAABox aabb2 = CAABox::MakeMaxInvertedBox();
              if (ConvexPolyCollision(planes, &surf.GetVert(0), aabb2)) {
                CPlane plane = surf.GetPlane();
                CCollisionInfo collision(aabb2, matList, material, plane.GetNormal(),
                                         -plane.GetNormal());
                list.Add(collision, false);
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
