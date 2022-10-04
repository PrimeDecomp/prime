#ifndef _CMEMORYCARD_HPP
#define _CMEMORYCARD_HPP

#include "types.h"

#include "Kyoto/CObjectReference.hpp"
#include "MetroidPrime/TGameTypes.hpp"

class CWorldSaveGameInfo {
  // TODO: move to it's own file
public:
  enum EScanCategory { kSC_None, kSC_Data, kSC_Lore, kSC_Creature, kSC_Research, kSC_Artifact };
};

class CMemoryCard {
public:
  ~CMemoryCard();
  // TODO

  rstl::pair< CAssetId, TAreaId > GetAreaAndWorldIdForSaveId(s32 saveId) const;

  typedef rstl::pair< CAssetId, CWorldSaveGameInfo::EScanCategory > ScanState;
  const rstl::vector< ScanState >& GetScanStates() const { return x20_scanStates; }

private:
  u8 x0_pad[0x20];
  rstl::vector< ScanState > x20_scanStates;
};

extern CMemoryCard* gpMemoryCard;

#endif
