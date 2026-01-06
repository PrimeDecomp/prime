#ifndef _CPATHFINDSEARCH
#define _CPATHFINDSEARCH

#include <Kyoto/Math/CVector3f.hpp>
#include <rstl/reserved_vector.hpp>
#include <types.h>
class CPFArea;
class CPFOpenList {};

class CPathFindSearch {
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

  void SetArea(CPFArea* area) { x0_area = area; }
  void SetPadding(const float pad) { xd8_padding = pad; }

private:
  CPFArea* x0_area;

  rstl::reserved_vector< CVector3f, 16 > x4_waypoints;
  u32 xc8_curWaypoint;
  EResult xcc_result;
  float xd0_chHeight;
  float xd4_chRadius;
  float xd8_padding;
  u32 xdc_flags; // 0x2: flyer, 0x4: path-always-exists (swimmers)
  u32 xe0_indexMask;
};
#endif // _CPATHFINDSEARCH
