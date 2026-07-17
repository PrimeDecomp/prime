#ifndef _CMAPWORLDINFO
#define _CMAPWORLDINFO

#include "Kyoto/SObjectTag.hpp"
#include "MetroidPrime/TGameTypes.hpp"
#include <rstl/bit_vector.hpp>
#include <rstl/pair.hpp>

class CWorldSaveGameInfo;
class CMapWorldInfo {
public:
  CMapWorldInfo();
  CMapWorldInfo(CInputStream& in, const CWorldSaveGameInfo&, CAssetId worldResId);
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

private:
  rstl::bit_vector<> mMappedAreas;
  rstl::bit_vector<> mVisitedAreas;
  rstl::vector< rstl::pair< TEditorId, bool > > mVisitedDoors;
  bool mMapStationUsed;
};

#endif // _CMAPWORLDINFO
