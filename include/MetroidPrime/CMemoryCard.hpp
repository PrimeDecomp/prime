#ifndef _CMEMORYCARD
#define _CMEMORYCARD

#include "types.h"

#include "Kyoto/TToken.hpp"
#include "MetroidPrime/TGameTypes.hpp"
#include "MetroidPrime/Player/CWorldLayerState.hpp"
#include "MetroidPrime/Player/CWorldSaveGameInfo.hpp"
#include "rstl/auto_ptr.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"

class CDummyWorld;
class CGameHintInfo;
class CStringTable;

class CSaveWorldMemory {
  friend class CMemoryCard;

public:
  CSaveWorldMemory()
  : x0_worldNameId(kInvalidAssetId)
  , x4_saveWorldId(kInvalidAssetId)
  , x8_areaCount(0) {}
  int GetAreaCount() const { return x8_areaCount; }
  const wchar_t* GetFrontEndName() const;

private:
  CAssetId x0_worldNameId;
  CAssetId x4_saveWorldId;
  int x8_areaCount;
  rstl::vector< uint > xc_areaIds;
  rstl::vector< CWorldLayers::Area > x1c_defaultLayerStates;
  rstl::optional_object< TCachedToken< CStringTable > > x2c_worldName;
  rstl::optional_object< CToken > x3c_saveWorld;
};
CHECK_SIZEOF(CSaveWorldMemory, 0x48)

class CSaveWorldIntermediate {
  friend class CMemoryCard;

public:
  CSaveWorldIntermediate(CAssetId mlvlId, CAssetId savwId);
  bool InitializePump();

private:
  CAssetId x0_mlvlId;
  CAssetId x4_worldNameId;
  CAssetId x8_saveWorldId;
  rstl::vector< uint > xc_areaIds;
  rstl::vector< CWorldLayers::Area > x1c_defaultLayerStates;
  rstl::auto_ptr< CDummyWorld > x2c_dummyWorld;
  rstl::auto_ptr< TCachedToken< CWorldSaveGameInfo > > x34_saveWorld;
};
CHECK_SIZEOF(CSaveWorldIntermediate, 0x3c)

class CMemoryCard {
public:
  CMemoryCard();
  ~CMemoryCard();
  bool InitializePump();
  bool HasSaveWorldMemory(CAssetId worldId) const;
  const CSaveWorldMemory& GetSaveWorldMemory(CAssetId worldId) const;
  rstl::pair< CAssetId, int > GetAreaAndWorldIdForSaveId(int saveId) const;

  typedef rstl::pair< CAssetId, uint > ScanState;
  const rstl::vector< ScanState >& GetScanStates() const { return x20_scanStates; }

private:
  TCachedToken< CGameHintInfo > x0_hints;
  rstl::vector< rstl::pair< CAssetId, CSaveWorldMemory > > xc_memoryWorlds;
  rstl::single_ptr< rstl::vector< CSaveWorldIntermediate > > x1c_worldInter;
  rstl::vector< ScanState > x20_scanStates;
  rstl::reserved_vector< uint, 6 > x30_scanCategoryCounts;
};
CHECK_SIZEOF(CMemoryCard, 0x4c)

extern CMemoryCard* gpMemoryCard;

#endif // _CMEMORYCARD
