#ifndef _CMEMORYCARD_HPP
#define _CMEMORYCARD_HPP

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"
#include "Kyoto/CObjectReference.hpp"

class CMemoryCard {
public:
  ~CMemoryCard();
  // TODO

  rstl::pair<CAssetId, TAreaId> GetAreaAndWorldIdForSaveId(s32 saveId) const;
};

extern CMemoryCard* gpMemoryCard;

#endif
