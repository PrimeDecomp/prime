#ifndef _CMAPWORLDINFO
#define _CMAPWORLDINFO

#include "MetroidPrime/TGameTypes.hpp"

class CMapWorldInfo {
public:
  bool IsAreaVisible(const TAreaId areaId) const;
  bool IsDoorVisited(const TEditorId eid) const;
  void SetDoorVisited(TEditorId eid, const bool visited);
};

#endif // _CMAPWORLDINFO
