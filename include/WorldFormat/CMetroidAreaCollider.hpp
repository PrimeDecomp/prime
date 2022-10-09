#ifndef _CMETROIDAREACOLLIDER
#define _CMETROIDAREACOLLIDER

#include "types.h"

#include "WorldFormat/CAreaOctTree.hpp"

#include "Kyoto/Math/CAABox.hpp"

#include "rstl/reserved_vector.hpp"

class CMetroidAreaCollider {
public:
  class COctreeLeafCache {
  public:
    COctreeLeafCache(const CAreaOctTree& octTree);
    void AddLeaf(const CAreaOctTree::Node& node);
    u32 GetNumLeaves() const { return x4_nodeCache.size(); }
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

  // TODO

private:
  // TODO
};

class CAreaCollisionCache {
public:
  CAreaCollisionCache(const CAABox& aabb);

  void ClearCache();
  const CAABox& GetCacheBounds() const { return x0_aabb; }
  void SetCacheBounds(const CAABox& aabb) { x0_aabb = aabb; }
  void AddOctreeLeafCache(const CMetroidAreaCollider::COctreeLeafCache& leafCache);
  u32 GetNumCaches() const { return x18_leafCaches.size(); }
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
