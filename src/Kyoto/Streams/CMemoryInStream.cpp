#include "Kyoto/Streams/CMemoryInStream.hpp"

u32 CMemoryInStream::Read(void* dest, u32 len) {
    return 0;
}

CMemoryInStream::CMemoryInStream(const void* ptr, unsigned long len) 
: CInputStream(ptr, len, false) {}

CMemoryInStream::CMemoryInStream(const void* ptr, unsigned long len, EOwnerShip ownership) 
: CInputStream(ptr, len, ownership == kOS_NotOwned) {}
