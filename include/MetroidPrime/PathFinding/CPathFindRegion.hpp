#ifndef _CPATHFINDREGION
#define _CPATHFINDREGION

#include <Kyoto/Math/CVector3f.hpp>
#include <Kyoto/Math/CAABox.hpp>

class CPFRegion;
class CPFRegionData {
  CPFRegionData();

  void SetOpenLess(CPFRegion* region);
  CPFRegion* GetOpenLess();

  void SetOpenMore(CPFRegion* region);
  CPFRegion* GetOpenMore();

  float GetCost();

  void* GetParent();
  void Setup(CPFRegion* region, float cost);
  void Setup(CPFRegion* region, float, float);
  void GetG();

  void SetBestPoint(const CVector3f& point);
  const CVector3f& GetBestPoint() const;

  void SetCookie(int cookie);
  int GetCookie() const;

private:
  float x0_bestPointDistSq;
  CVector3f x4_bestPoint;
  int x10_cookie;
  float x14_cost;
  float x18_g;
  float x1c_h;
  CPFRegion* x20_parent;
  CPFRegion* x24_openLess;
  CPFRegion* x28_openMore;
  int x2c_parentLink;
};

class CPFArea;
class CPFNode;
class CPFLink;
class CPFRegion {
  CPFRegion();
  void Fixup(CPFArea& area, int& numNodes);

private:
  uint x0_numNodes;
  CPFNode* x4_startNode;
  uint x8_numLinks;
  CPFLink* xc_startLink;
  uint x10_flags;
  float x14_height;
  CVector3f x18_normal;
  uint x24_regionIdx;
  CVector3f x28_centroid;
  CAABox x34_bounds;
  CPFRegionData* x4c_data;
};

#endif // _CPATHFINDREGION
