#include "Kyoto/Animation/CSegStatementSet.hpp"
#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Animation/CSegStatement.hpp"
#include <dolphin/os/OSCache.h>

namespace {
int sFreeSegments = 31;
inline void* AllocateSegment() {
  LCQueueWait(0);
  if (sFreeSegments) {
    for (uint i = 0; i < 5; ++i) {
      if ((sFreeSegments & (1 << i)) != 0) {
        sFreeSegments ^= (1 << i);
        char* base = static_cast< char* >(LCGetBase());
        base = (i * 0xc80) + base;
        return base;
      }
    }
  }

  return CMemory::Alloc(0xc80);
}
inline void FreeSegment(CSegStatement* seg) {}
} // namespace

CSegStatementSet::CSegStatementSet(void* ptr) : mSegData(static_cast< CSegStatement* >(ptr)) {
  int i = 100;
  while (i) {
    mSegData[i].mStatus = 0;
    i--;
  }
}

CStackSegStatementSet::CStackSegStatementSet() : CSegStatementSet(AllocateSegment()) {}
CStackSegStatementSet::~CStackSegStatementSet() {
  FreeSegment(reinterpret_cast< CSegStatement* >(mSegData));
}
