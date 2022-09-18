#include "Kyoto/Streams/CMemoryInStream.hpp"

CMemoryInStream::CMemoryInStream(const void* ptr, unsigned long len, EOwnerShip ownership)
: CInputStream(ptr, len, ownership == kOS_Owned) {}

CMemoryInStream::CMemoryInStream(const void* ptr, unsigned long len)
: CInputStream(ptr, len, false) {}

uint CMemoryInStream::Read(void* dest, uint len) { return 0; }
