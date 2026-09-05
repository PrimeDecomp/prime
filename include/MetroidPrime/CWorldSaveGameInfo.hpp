#ifndef _CWORLDSAVEGAMEINFO
#define _CWORLDSAVEGAMEINFO

#include "Kyoto/SObjectTag.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/pair.hpp"
#include "rstl/vector.hpp"

class CWorldSaveGameInfo {
public:
  enum EScanCategory { kSC_None, kSC_Data, kSC_Lore, kSC_Creature, kSC_Research, kSC_Artifact };

  struct SLayerState {
    SLayerState(CInputStream& in);

    TAreaId x0_area;
    uint x4_layer;
  };

  explicit CWorldSaveGameInfo(CInputStream& in);

  const rstl::vector< TEditorId >& GetDoors() const { return x34_doors; }

  typedef rstl::pair< CAssetId, uint > ScanState;
  uint GetAreaCount() const { return x0_areaCount; }
  const rstl::vector< ScanState >& GetScans() const { return x44_scans; }

  int GetRelayIndex(const TEditorId&) const;

  const rstl::vector< TEditorId >& GetRelays() const { return x14_relays; }

private:
  uint x0_areaCount;
  rstl::vector< TEditorId > x4_cinematics;
  rstl::vector< TEditorId > x14_relays;
  rstl::vector< SLayerState > x24_layers;
  rstl::vector< TEditorId > x34_doors;
  rstl::vector< ScanState > x44_scans;
};

CHECK_SIZEOF(CWorldSaveGameInfo, 0x54)

#endif // _CWORLDSAVEGAMEINFO
