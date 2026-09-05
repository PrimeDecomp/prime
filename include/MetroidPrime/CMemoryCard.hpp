#ifndef _CMEMORYCARD
#define _CMEMORYCARD

#include "types.h"

#include "Kyoto/CObjectReference.hpp"
#include "MetroidPrime/TGameTypes.hpp"
#include "MetroidPrime/Player/CWorldSaveGameInfo.hpp"

class CSaveWorldMemory {
public:
  int GetAreaCount() const { return x8_areaCount; }

private:
  CAssetId x0_worldNameId;
  CAssetId x4_saveWorldId;
  int x8_areaCount;
  // TODO: remaining save-world metadata
};

class CMemoryCard {
public:
  ~CMemoryCard();
  // TODO

  const CSaveWorldMemory& GetSaveWorldMemory(int worldId) const;

  rstl::pair< CAssetId, TAreaId > GetAreaAndWorldIdForSaveId(int saveId) const;

  typedef rstl::pair< CAssetId, CWorldSaveGameInfo::EScanCategory > ScanState;
  const rstl::vector< ScanState >& GetScanStates() const { return x20_scanStates; }

private:
  uchar x0_pad[0x20];
  rstl::vector< ScanState > x20_scanStates;
};

extern CMemoryCard* gpMemoryCard;

#endif // _CMEMORYCARD
