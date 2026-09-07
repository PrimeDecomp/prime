#include "Kyoto/CMemoryCardSys.hpp"
#include "dolphin/os/OSCache.h"

rstl::vector< char, rstl::aligned_allocator > CMemoryCardSys::mWorkAreaA;
rstl::vector< char, rstl::aligned_allocator > CMemoryCardSys::mWorkAreaB;

rstl::vector< char, rstl::aligned_allocator >&
CMemoryCardSys::WorkAreaVector(EMemoryCardPort port) {
  switch (port) {
  case kCS_SlotA:
    return mWorkAreaA;
  case kCS_SlotB:
    return mWorkAreaB;
  default:
    return mWorkAreaA;
  }
}

char* CMemoryCardSys::AllocCardWorkArea(EMemoryCardPort port) {
  rstl::vector< char, rstl::aligned_allocator >& area = WorkAreaVector(port);
  area.resize(0xa000);
  char* data = area.data();
  DCInvalidateRange(data, area.size());
  return data;
}
void CMemoryCardSys::FreeCardWorkArea(EMemoryCardPort port) {
  rstl::vector< char, rstl::aligned_allocator >& area = WorkAreaVector(port);
  area = rstl::vector< char, rstl::aligned_allocator >();
}