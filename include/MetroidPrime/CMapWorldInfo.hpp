#ifndef _CMAPWORLDINFO
#define _CMAPWORLDINFO

#include "MetroidPrime/TGameTypes.hpp"

class CMapWorldInfo {
public:
  bool IsAreaVisible(const TAreaId areaId) const;
  bool IsDoorVisited(const TEditorId eid) const;
};

#endif // _CMAPWORLDINFO
