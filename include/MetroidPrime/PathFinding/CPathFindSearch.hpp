#ifndef _CPATHFINDSEARCH
#define _CPATHFINDSEARCH

#include <Kyoto/Math/CVector3f.hpp>
#include <rstl/reserved_vector.hpp>
#include <types.h>
class CPFArea;
class CPFOpenList {};
class CBeetle;

class CPathFindSearch {
  friend class CBeetle;

public:
  enum EResult {
    kR_Success,
    kR_InvalidArea,
    kR_NoSourcePoint,
    kR_NoDestPoint,
    kR_NoPath,
  };

  CPathFindSearch(CPFArea* area, uint flags, uint index, float chRadius, float chHeight);
  // : x0_area(nullptr)
  // , xc8_curWaypoint(0)
  // , xcc_result(kR_Success)
  // , xd0_chHeight(chHeight)
  // , xd4_chRadius(chRadius)
  // , xdc_flags(flags)
  // , xe0_indexMask((1 << index)) {}

  void SetCharacterRadius(float radius) { xd4_chRadius = radius; }
  float GetCharacterHeight() const { return xd0_chHeight; }
  const rstl::reserved_vector< CVector3f, 16 >& GetWaypoints() const { return x4_waypoints; }
  float RemainingPathDistance(const CVector3f& pos) const;
  void SetCharacterHeight(float height) { xd0_chHeight = height; }

  void SetArea(CPFArea* area) { x0_area = area; }
  void SetPadding(const float pad) { xd8_padding = pad; }

  const CVector3f& GetPoint() const {
    return xc8_curWaypoint + 1 < x4_waypoints.size() ? x4_waypoints[xc8_curWaypoint + 1]
                                                  : x4_waypoints[xc8_curWaypoint];
  }
  EResult PathExists(const CVector3f& source, const CVector3f& destination) const;
  EResult OnPath(const CVector3f& pos) const;
  EResult Search(const CVector3f& source, const CVector3f& destination);
  EResult FindClosestReachablePoint(const CVector3f& source, CVector3f& destination) const;
  EResult GetResult() const { return xcc_result; }

  bool IsShagged() const { return xcc_result != kR_Success; }

private:
  CPFArea* x0_area;

  rstl::reserved_vector< CVector3f, 16 > x4_waypoints;
  int xc8_curWaypoint;
  EResult xcc_result;
  float xd0_chHeight;
  float xd4_chRadius;
  float xd8_padding;
  u32 xdc_flags; // 0x2: flyer, 0x4: path-always-exists (swimmers)
  u32 xe0_indexMask;
};
#endif // _CPATHFINDSEARCH
