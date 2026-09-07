#ifndef _CPATHFINDAREA
#define _CPATHFINDAREA

#include "MetroidPrime/PathFinding/CPFBitSet.hpp"
#include "MetroidPrime/PathFinding/CPathFindRegion.hpp"

#include "Kyoto/Math/CTransform4f.hpp"

#include "rstl/auto_ptr.hpp"
#include "rstl/prereserved_vector.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"

class CPFOpenList {
public:
  CPFOpenList();
  void Clear() {
    x40_region.Data()->SetOpenMore(&x40_region);
    x40_region.Data()->SetOpenLess(&x40_region);
    x0_bitSet.Clear();
  }
  void Push(CPFRegion* region) {
    x0_bitSet.Add(region->GetIndex());
    CPFRegion* more = x40_region.Data()->GetOpenMore();
    while (more != &x40_region && region->Data()->GetCost() > more->Data()->GetCost()) {
      more = more->Data()->GetOpenMore();
    }
    more->Data()->GetOpenLess()->Data()->SetOpenMore(region);
    region->Data()->SetOpenLess(more->Data()->GetOpenLess());
    more->Data()->SetOpenLess(region);
    region->Data()->SetOpenMore(more);
  }
  CPFRegion* Pop() {
    CPFRegion* region = x40_region.Data()->GetOpenMore();
    CPFRegion* result = nullptr;
    if (region != &x40_region) {
      result = region;
      Pop(region);
    }
    return result;
  }
  void Pop(CPFRegion* region) {
    x0_bitSet.Rmv(region->GetIndex());
    region->Data()->GetOpenMore()->Data()->SetOpenLess(region->Data()->GetOpenLess());
    region->Data()->GetOpenLess()->Data()->SetOpenMore(region->Data()->GetOpenMore());
    region->Data()->SetOpenMore(nullptr);
    region->Data()->SetOpenLess(nullptr);
  }
  bool Test(CPFRegion* region) {
    if (x0_bitSet.Test(region->GetIndex())) {
      return true;
    }
    return false;
  }

private:
  CPFBitSet x0_bitSet;
  CPFRegion x40_region;
  CPFRegionData x90_regionData;
};
CHECK_SIZEOF(CPFOpenList, 0xc0)

class CPFAreaOctree;
class CPFArea {
public:
  CPFArea(const rstl::auto_ptr< uchar >& data, int size);
  ~CPFArea();
  const CTransform4f& GetTransform() const { return x188_transform; }
  void SetTransform(const CTransform4f& transform) { x188_transform = transform; }
  CVector3f GetClosestPoint() const { return x4_closestPoint; }
  int GetNumRegions() const { return x150_regions.size(); }
  CPFRegion& GetRegion(int index) { return x150_regions[index]; }
  CPFOpenList& OpenList() { return x78_openList; }
  CPFBitSet& ClosedSet() { return x38_closedSet; }
  int FindRegions(rstl::reserved_vector< CPFRegion*, 4 >& regions, const CVector3f& point,
                  uint flags, uint indexMask);
  CPFRegion* FindClosestRegion(const CVector3f& point, uint flags, uint indexMask, float padding);
  CVector3f FindClosestReachablePoint(rstl::reserved_vector< CPFRegion*, 4 >& regions,
                                      const CVector3f& point, uint flags, uint indexMask);
  bool PathExists(const CPFRegion* source, const CPFRegion* destination, uint flags) const;

private:
  float x0_bestPointDistSq;
  CVector3f x4_closestPoint;
  rstl::vector< CVector3f > x10_polyPoints;
  prereserved_vector< CPFRegion* >* x20_cachedRegionList;
  CVector3f x24_cachedRegionListPoint;
  bool x30_hasCachedRegionList;
  int x34_regionFindCookie;
  CPFBitSet x38_closedSet;
  CPFOpenList x78_openList;
  uint x138_;
  uchar* x13c_data;
  prereserved_vector< CPFNode > x140_nodes;
  prereserved_vector< CPFLink > x148_links;
  prereserved_vector< CPFRegion > x150_regions;
  prereserved_vector< CPFAreaOctree > x158_octree;
  prereserved_vector< CPFRegion* > x160_octreeRegions;
  prereserved_vector< uint > x168_connectionsGround;
  prereserved_vector< uint > x170_connectionsFlyers;
  rstl::vector< CPFRegionData > x178_regionData;
  CTransform4f x188_transform;
};
CHECK_SIZEOF(CPFArea, 0x1b8)

#endif // _CPATHFINDAREA
