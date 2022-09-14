#ifndef __CSMALLALLOCPOOL_HPP__
#define __CSMALLALLOCPOOL_HPP__

#include <types.h>

static const int kPointerSize = sizeof(void*);
class CSmallAllocPool {
public:
    CSmallAllocPool(uint len, void* mainData, void* bookKeeping);
    void* FindFree(int len);
    void* Alloc(uint size);
    bool Free(const void* ptr);
private:
  uint GetIndexFromPtr(const void* ptr) const { return ((const u8*)ptr - x0_mainData) / kPointerSize; }
  long GetEntryValue(uint idx) const { return (long)*((u8*)x4_bookKeeping + idx); }
  u8* GetPtrFromIndex(unsigned int idx) const { return static_cast<u8*>(x0_mainData) + (idx << 3); }
  void* x0_mainData;
  void* x4_bookKeeping;
  int x8_numBlocks;
  void* xc_cachedBookKeepingOffset;
  int x10_;
  int x14_;
  uint x18_numBlocksAvailable;
  uint x1c_numAllocs;
};
#endif // __CSMALLALLOCPOOL_HPP__
