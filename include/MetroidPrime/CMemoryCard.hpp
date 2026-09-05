#ifndef _CMEMORYCARD
#define _CMEMORYCARD

#include "types.h"

#include "Kyoto/TToken.hpp"
#include "MetroidPrime/TGameTypes.hpp"
#include "MetroidPrime/CGameHintInfo.hpp"
#include "MetroidPrime/CSaveWorldMemory.hpp"
#include "MetroidPrime/CScriptLayerManager.hpp"
#include "MetroidPrime/CWorldSaveGameInfo.hpp"
#include "rstl/auto_ptr.hpp"
#include "rstl/optional_object.hpp"
#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"

class CDummyWorld;
class CStringTable;

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

  const rstl::vector< CGameHintInfo::CGameHint >& GetHints() const {
    return x0_hints.GetObject()->GetHints();
  }

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
