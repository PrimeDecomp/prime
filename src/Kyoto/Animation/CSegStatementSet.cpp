#include "Kyoto/Animation/CSegStatementSet.hpp"
#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Animation/CSegIdList.hpp"
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
inline void FreeSegment(CSegStatement* seg) {
  char* base = static_cast< char* >(LCGetBase());
  char* ptr = reinterpret_cast< char* >(seg);
  if (ptr >= base && ptr < base + 5 * 0xc80) {
    int index = (ptr - base) / 0xc80;
    sFreeSegments |= 1 << index;
  } else {
    CMemory::Free(seg);
  }
}
} // namespace

CSegStatementSet::CSegStatementSet(void* ptr) : mSegData(static_cast< CSegStatement* >(ptr)) {
  for (int i = 0; i < 100; ++i) {
    new (&mSegData[i]) CSegStatement;
  }
}

void CSegStatementSet::Add(const CSegIdList& list, const CCharLayoutInfo& info,
                           const CSegStatementSet& set, float weight) {
  const int count = list.size();
  for (int i = 0; i < count; ++i) {
    const CSegId& id = list[i];
    CSegStatement result;
    const CSegStatement& prior = GetData(id);
    const CSegStatement& other = set.GetData(id);
    result.Set(prior.Orientation() *
               CQuaternion::Slerp(CQuaternion::NoRotation(), other.Orientation(), weight));
    if (other.OffsetValid() && prior.OffsetValid()) {
      result.Set(prior.Offset() + (other.Offset() - info.GetFromParentUnrotated(id)) * weight);
    }
    Set(id, result);
  }
}

CStackSegStatementSet::CStackSegStatementSet() : CSegStatementSet(AllocateSegment()) {}
CStackSegStatementSet::~CStackSegStatementSet() { FreeSegment(mSegData); }
