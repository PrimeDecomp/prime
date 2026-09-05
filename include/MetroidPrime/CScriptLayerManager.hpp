#ifndef _CSCRIPTLAYERMANAGER
#define _CSCRIPTLAYERMANAGER

#include "Kyoto/SObjectTag.hpp"
#include "MetroidPrime/TGameTypes.hpp"

#include "rstl/vector.hpp"
#include "rstl/bit_vector.hpp"

class CInputStream;
class CWorldSaveGameInfo;
class COutputStream;

class CWorldLayers {
public:
  class Area {
  public:
    Area(int layerCount, u64 layerBits) : m_layerCount(layerCount), m_layerBits(layerBits) {}

    int m_layerCount;
    u64 m_layerBits;
  };
  static CWorldLayers ReadWorldLayers(CInputStream& in, int version, CAssetId mlvlId);
};
NESTED_CHECK_SIZEOF(CWorldLayers, Area, 0x10)

struct TLayerId {
  int value;
  TLayerId(int value) : value(value) {}
  int Value() const { return value; }
};
CHECK_SIZEOF(TLayerId, 4)

class CScriptLayerManager {
public:
  CScriptLayerManager();
  CScriptLayerManager(CInputStream&, const CWorldSaveGameInfo&);

  void PutTo(COutputStream&) const;

  void SetLayerActive(TAreaId areaIdx, TLayerId layerIdx, bool active);
  bool IsLayerActive(TAreaId areaIdx, TLayerId layerIdx) const;

  const rstl::vector< CWorldLayers::Area >& GetAreaLayers() const;

  void InitializeWorldLayers(const rstl::vector< CWorldLayers::Area >&);
  int GetAreaLayerCount(TAreaId) const;

private:
  rstl::vector< CWorldLayers::Area > x0_areaLayers;
  rstl::bit_vector< rstl::rmemory_allocator > x10_saveLayers;
};

CHECK_SIZEOF(CScriptLayerManager, 0x24)

#endif // _CSCRIPTLAYERMANAGER
