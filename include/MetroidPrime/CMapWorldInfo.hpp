#ifndef _CMAPWORLDINFO
#define _CMAPWORLDINFO

#include "MetroidPrime/TGameTypes.hpp"

class CMapWorldInfo {
public:
  bool IsMapped(TAreaId areaId) const;
  bool IsAreaVisited(TAreaId areaId) const;
  bool IsAreaVisible(const TAreaId areaId) const;
  bool IsWorldVisible(const TAreaId areaId) const;
  bool IsAnythingSet();
  bool IsDoorVisited(const TEditorId eid) const;
  void SetIsMapped(TAreaId areaId) const;
  void SetIsMapped(TAreaId areaId, bool) const { SetIsMapped(areaId); }
  void SetAreaVisited(TAreaId areaId, bool visited);
  void SetDoorVisited(TEditorId eid, const bool visited);
};

#endif // _CMAPWORLDINFO
