#ifndef _CMETROIDAREACOLLIDER
#define _CMETROIDAREACOLLIDER

#include "types.h"

#include "WorldFormat/CAreaOctTree.hpp"

#include "Collision/CCollisionInfoList.hpp"
#include "Collision/CMaterialFilter.hpp"
#include "Collision/CMaterialList.hpp"

#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CPlane.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "rstl/reserved_vector.hpp"

class CAABoxAreaCache {
public:
  friend class CMetroidAreaCollider;

  CAABoxAreaCache(const CAABox& aabb, const CPlane* pl, const CMaterialFilter& filter,
                  const CMaterialList& material, CCollisionInfoList& collisionList)
  : x0_aabb(aabb)
  , x4_planes(pl)
  , x8_filter(filter)
  , xc_material(material)
  , x10_collisionList(collisionList)
  , x14_center(aabb.GetCenterPoint())
  , x20_halfExtent(aabb.GetHalfExtent()) {}

private:
  const CAABox& x0_aabb;
  const CPlane* x4_planes;
  const CMaterialFilter& x8_filter;
  const CMaterialList& xc_material;
  CCollisionInfoList& x10_collisionList;
  CVector3f x14_center;
  CVector3f x20_halfExtent;
};

class CMetroidAreaCollider {
public:
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
    const CAreaOctTree& x0_octTree;
    rstl::reserved_vector< CAreaOctTree::Node, 64 > x4_nodeCache;
    bool x908_24_overflow : 1;
  };

  static bool ConvexPolyCollision(const CPlane* planes, const CVector3f* verts, CAABox& aabb);
  static bool AABoxCollisionCheck_Cached(const COctreeLeafCache& leafCache, const CAABox& aabb,
                                         const CMaterialFilter& filter,
                                         const CMaterialList& matList, CCollisionInfoList& list);

private:
  static ushort sDupPrimitiveCheckCount;
  static ushort sDupVertexList[0x2800];
  static ushort sDupEdgeList[0x6000];
  static ushort sDupTriangleList[0x4000];
  static void ResetInternalCounters();
  static bool AABoxCollisionCheck_Internal(const CAreaOctTree::Node&, CAABoxAreaCache&);
};

class CAreaCollisionCache {
public:
  CAreaCollisionCache(const CAABox& aabb);

  void ClearCache();
  const CAABox& GetCacheBounds() const { return x0_aabb; }
  void SetCacheBounds(const CAABox& aabb) { x0_aabb = aabb; }
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
