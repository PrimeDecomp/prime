#include "Kyoto/Animation/CSegIdList.hpp"

#include "Kyoto/Animation/CCharAnimMemoryMetrics.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

CSegIdList::CSegIdList(CInputStream& in)
: x0_segList(in) {
  CCharAnimMemoryMetrics::AddToTotalSize(x0_segList.capacity(), CCharAnimMemoryMetrics::kASS_Two);  
}
