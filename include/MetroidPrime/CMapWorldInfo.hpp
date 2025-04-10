#ifndef _CMAPWORLDINFO
#define _CMAPWORLDINFO

#include "MetroidPrime/TGameTypes.hpp"

class CMapWorldInfo {
public:
  bool IsAreaVisible(TAreaId areaId) const;
  bool IsDoorVisited(TEditorId eid) const;
};

#endif // _CMAPWORLDINFO
