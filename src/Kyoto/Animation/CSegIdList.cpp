#include "Kyoto/Animation/CSegIdList.hpp"

#include "Kyoto/Animation/CCharAnimMemoryMetrics.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

CSegIdList::CSegIdList(CInputStream& in)
: mSegIds(in) {
  CCharAnimMemoryMetrics::AddToTotalSize(mSegIds.capacity(), CCharAnimMemoryMetrics::kASS_Two);  
}
