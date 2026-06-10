#include "Kyoto/Animation/CCharAnimMemoryMetrics.hpp"

uint CCharAnimMemoryMetrics::sTotalSize = 0;

void CCharAnimMemoryMetrics::AddToTotalSize(const uint size, EAnimSubSystem subSystem) {
  sTotalSize += size;
}

void CCharAnimMemoryMetrics::SubtractFromTotalSize(uint size, EAnimSubSystem subSystem) {
  sTotalSize -= size;
}

uint CCharAnimMemoryMetrics::GetTotalSize() { return sTotalSize; }