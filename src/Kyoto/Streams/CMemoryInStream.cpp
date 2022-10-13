#include "Kyoto/Streams/CMemoryInStream.hpp"

CMemoryInStream::CMemoryInStream(const void* ptr, unsigned long len, EOwnerShip ownership)
: CInputStream(ptr, len, ownership == kOS_Owned) {}

CMemoryInStream::CMemoryInStream(const void* ptr, unsigned long len)
: CInputStream(ptr, len, false) {}

size_t CMemoryInStream::Read(void* dest, size_t len) { return 0; }
