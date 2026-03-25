#ifndef _CMETROIDAREACOLLIDER
#define _CMETROIDAREACOLLIDER

#include "types.h"

#include "WorldFormat/CAreaOctTree.hpp"

#include "Collision/CCollisionInfoList.hpp"
#include "Collision/CMaterialFilter.hpp"
#include "Collision/CMaterialList.hpp"

#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CLineSeg.hpp"
#include "Kyoto/Math/CPlane.hpp"
#include "Kyoto/Math/CSphere.hpp"
#include "Kyoto/Math/CVector3d.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/reserved_vector.hpp"

class CAABoxAreaCache {
public:
  friend class CMetroidAreaCollider;

  CAABoxAreaCache(const CAABox& aabb, const CPlane* pl, const CMaterialFilter& filter,
                  const CMaterialList& material, CCollisionInfoList& collisionList);

private:
  const CAABox& x0_aabb;
  const CPlane* x4_planes;
  const CMaterialFilter& x8_filter;
  const CMaterialList& xc_material;
  CCollisionInfoList& x10_collisionList;
  CVector3f x14_center;
  CVector3f x20_halfExtent;
};

class CBooleanAABoxAreaCache {
public:
  friend class CMetroidAreaCollider;

  CBooleanAABoxAreaCache(const CAABox& aabb, const CMaterialFilter& filter);

private:
  const CAABox& x0_aabb;
  const CMaterialFilter& x4_filter;
  CVector3f x8_center;
  CVector3f x14_halfExtent;
};

class CSphereAreaCache {
public:
  friend class CMetroidAreaCollider;

  CSphereAreaCache(const CAABox& aabb, const CSphere& sphere, const CMaterialFilter& filter,
                   const CMaterialList& material, CCollisionInfoList& collisionList)
  : x0_aabb(aabb)
  , x4_sphere(sphere)
  , x8_filter(filter)
  , xc_material(material)
  , x10_collisionList(collisionList) {}

private:
  const CAABox& x0_aabb;
  const CSphere& x4_sphere;
  const CMaterialFilter& x8_filter;
  const CMaterialList& xc_material;
  CCollisionInfoList& x10_collisionList;
};

class CBooleanSphereAreaCache {
public:
  friend class CMetroidAreaCollider;

  CBooleanSphereAreaCache(const CAABox& aabb, const CSphere& sphere, const CMaterialFilter& filter)
  : x0_aabb(aabb), x4_sphere(sphere), x8_filter(filter) {}

private:
  const CAABox& x0_aabb;
  const CSphere& x4_sphere;
  const CMaterialFilter& x8_filter;
};

class CMetroidAreaCollider {
public:
  struct SBoxEdge {
    CLineSeg x0_seg;
    CVector3d x28_start;
    CVector3d x40_end;
    CVector3d x58_delta;
    CVector3d x70_coDir;
    double x88_dirCoDirDot;
    SBoxEdge(const CAABox& aabb, int idx, const CVector3f& dir);
  };

  class CMovingAABoxComponents {
  public:
    CMovingAABoxComponents(const CAABox& aabb, const CVector3f& dir);

  private:
    friend class CMetroidAreaCollider;
    friend class CCollidableOBBTree;
    rstl::reserved_vector< SBoxEdge, 12 > x0_edges;
    rstl::reserved_vector< uint, 8 > x6c4_vertIdxs;
    CAABox x6e8_aabb;
  };

  class COctreeLeafCache {
  public:
    COctreeLeafCache(const CAreaOctTree& octTree);
    void AddLeaf(const CAreaOctTree::Node& node);
    const CAreaOctTree::Node& GetLeaf(int i) const { return x4_nodeCache[i]; }
    int GetNumLeaves() const { return x4_nodeCache.size(); }
    bool HasCacheOverflowed() const { return x908_24_overflow; }
    const CAreaOctTree& GetOctTree() const { return x0_octTree; }
    rstl::reserved_vector< CAreaOctTree::Node, 64 >::const_iterator begin() const {
      return x4_nodeCache.begin();
    }
    rstl::reserved_vector< CAreaOctTree::Node, 64 >::const_iterator end() const {
      return x4_nodeCache.end();
    }

  private:
    friend class CMetroidAreaCollider;
    const CAreaOctTree& x0_octTree;
    rstl::reserved_vector< CAreaOctTree::Node, 64 > x4_nodeCache;
    bool x908_24_overflow : 1;
  };

  static bool ConvexPolyCollision(const CPlane* planes, const CVector3f* verts, CAABox& aabb);
  static void BuildOctreeLeafCache(const CAreaOctTree::Node& node, const CAABox& aabb,
                                   COctreeLeafCache& leafCache);
  static bool AABoxCollisionCheckBoolean(const CAreaOctTree& octTree, const CAABox& aabb,
                                         const CMaterialFilter& filter);
  static bool SphereCollisionCheckBoolean(const CAreaOctTree& octTree, const CAABox& aabb,
                                          const CSphere& sphere,
                                          const CMaterialFilter& filter);
  static bool AABoxCollisionCheckBoolean_Cached(const COctreeLeafCache& leafCache,
                                                const CAABox& aabb,
                                                const CMaterialFilter& filter);
  static bool SphereCollisionCheckBoolean_Cached(const COctreeLeafCache& leafCache,
                                                 const CAABox& aabb,
                                                 const CSphere& sphere,
                                                 const CMaterialFilter& filter);
  static bool AABoxCollisionCheck(const CAreaOctTree& octTree, const CAABox& aabb,
                                  const CMaterialFilter& filter,
                                  const CMaterialList& matList, CCollisionInfoList& list);
  static bool SphereCollisionCheck(const CAreaOctTree& octTree, const CAABox& aabb,
                                   const CSphere& sphere, const CMaterialList& matList,
                                   const CMaterialFilter& filter, CCollisionInfoList& list);
  static bool AABoxCollisionCheck_Cached(const COctreeLeafCache& leafCache, const CAABox& aabb,
                                         const CMaterialFilter& filter,
                                         const CMaterialList& matList, CCollisionInfoList& list);
  static bool SphereCollisionCheck_Cached(const COctreeLeafCache& leafCache, const CAABox& aabb,
                                          const CSphere& sphere,
                                          const CMaterialList& matList,
                                          const CMaterialFilter& filter,
                                          CCollisionInfoList& list);
  static bool MovingAABoxCollisionCheck_Cached(const COctreeLeafCache& leafCache,
                                               const CAABox& aabb,
                                               const CMaterialFilter& filter,
                                               const CMaterialList& matList, CVector3f dir,
                                               float d, CCollisionInfo& infoOut,
                                               double& dOut);
  static bool MovingSphereCollisionCheck_Cached(const COctreeLeafCache& leafCache,
                                                const CAABox& aabb,
                                                const CSphere& sphere,
                                                const CMaterialFilter& filter,
                                                const CMaterialList& matList, CVector3f dir,
                                                float d, CCollisionInfo& infoOut,
                                                double& dOut);

  static ushort GetPrimitiveCheckCount() { return sDupPrimitiveCheckCount; }
  static ushort* GetTriangleList() { return sDupTriangleList; }

private:
  static ushort sDupPrimitiveCheckCount;
  static ushort sDupVertexList[0x2800];
  static ushort sDupEdgeList[0x6000];
  static ushort sDupTriangleList[0x4000];
  static void ResetInternalCounters();
  static bool AABoxCollisionCheck_Internal(const CAreaOctTree::Node&, CAABoxAreaCache&);
  static bool AABoxCollisionCheckBoolean_Internal(const CAreaOctTree::Node&,
                                                  const CBooleanAABoxAreaCache&);
  static bool SphereCollisionCheck_Internal(const CAreaOctTree::Node&, CSphereAreaCache&);
  static bool SphereCollisionCheckBoolean_Internal(const CAreaOctTree::Node&,
                                                   const CBooleanSphereAreaCache&);
  static bool MovingAABoxCollisionCheck_BoxVertexTri(const CCollisionSurface&, const CAABox&,
                                                     const rstl::reserved_vector< uint, 8 >&,
                                                     CVector3f, double&, CVector3f&, CVector3f&);
  static bool MovingAABoxCollisionCheck_TriVertexBox(const CVector3f&, const CAABox&,
                                                     CVector3f, double&, CVector3f&, CVector3f&);
  static bool MovingAABoxCollisionCheck_Edge(const CVector3f&, const CVector3f&,
                                             const rstl::reserved_vector< SBoxEdge, 12 >&,
                                             CVector3f, double&, CVector3f&, CVector3f&);
};

class CAreaCollisionCache {
public:
  CAreaCollisionCache(const CAABox& aabb);

  void ClearCache();
  const CAABox& GetCacheBounds() const { return x0_aabb; }
  void SetCacheBounds(const CAABox& aabb);
  void AddOctreeLeafCache(const CMetroidAreaCollider::COctreeLeafCache& leafCache);
  uint GetNumCaches() const { return x18_leafCaches.size(); }
  const CMetroidAreaCollider::COctreeLeafCache& GetOctreeLeafCache(int idx) {
    return x18_leafCaches[idx];
  }
  bool HasCacheOverflowed() const { return x1b40_24_leafOverflow; }
  rstl::reserved_vector< CMetroidAreaCollider::COctreeLeafCache, 3 >::const_iterator begin() const {
    return x18_leafCaches.begin();
  }
  rstl::reserved_vector< CMetroidAreaCollider::COctreeLeafCache, 3 >::const_iterator end() const {
    return x18_leafCaches.end();
  }

private:
  CAABox x0_aabb;
  rstl::reserved_vector< CMetroidAreaCollider::COctreeLeafCache, 3 > x18_leafCaches;
  bool x1b40_24_leafOverflow : 1;
  bool x1b40_25_cacheOverflow : 1;
};
CHECK_SIZEOF(CAreaCollisionCache, 0x1b44)

#endif // _CMETROIDAREACOLLIDER
