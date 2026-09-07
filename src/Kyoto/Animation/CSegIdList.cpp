#include "Kyoto/Animation/CSegIdList.hpp"

#include "Kyoto/Animation/CCharAnimMemoryMetrics.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

/* this is such a hack... */
#pragma inline_max_size(200)

CSegIdList::CSegIdList(CInputStream& in)
: mSegIds(in) {
  CCharAnimMemoryMetrics::AddToTotalSize(mSegIds.capacity(), CCharAnimMemoryMetrics::kASS_Two);  
}
