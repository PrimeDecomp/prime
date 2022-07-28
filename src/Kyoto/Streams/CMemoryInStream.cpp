#include "Kyoto/Streams/CMemoryInStream.hpp"

CMemoryInStream::CMemoryInStream(const void* ptr, unsigned long len, EOwnerShip ownership)
: CInputStream(ptr, len, ownership == kOS_Owned) {}

CMemoryInStream::CMemoryInStream(const void* ptr, unsigned long len) : CInputStream(ptr, len, false) {}

u32 CMemoryInStream::Read(void* dest, u32 len) { return 0; }
