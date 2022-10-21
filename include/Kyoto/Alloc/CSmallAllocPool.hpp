#ifndef _CSMALLALLOCPOOL
#define _CSMALLALLOCPOOL

#include <types.h>

#include <Kyoto/Alloc/AllocatorCommon.hpp>

class CSmallAllocPool {
public:
  CSmallAllocPool(uint len, void* mainData, void* bookKeeping);
  void* FindFree(int len);
  void* Alloc(uint size);
  bool Free(const void* ptr);

  bool PtrWithinPool(const void* ptr) const {
    return uint((reinterpret_cast< const uchar* >(ptr) - reinterpret_cast< uchar* >(x0_mainData)) /
                4) < x8_numBlocks;
  }

  uint GetIndexFromPtr(const void* ptr) const {
    return ((const uchar*)ptr - (const uchar*)x0_mainData) / kPointerSize;
  }
  long GetEntryValue(uint idx) const { return (long)*((uchar*)x4_bookKeeping + idx); }
  uchar* GetPtrFromIndex(unsigned int idx) const {
    return static_cast< uchar* >(x0_mainData) + (idx << 3);
  }

  uint GetNumBlocksAvailable() const { return x18_numBlocksAvailable; }
  uint GetTotalEntries() const { return x8_numBlocks; }
  uint GetAllocatedSize() const { return x8_numBlocks - x18_numBlocksAvailable; }
  uint GetNumAllocs() const { return x1c_numAllocs; }

private:
  void* x0_mainData;
  void* x4_bookKeeping;
  int x8_numBlocks;
  void* xc_cachedBookKeepingOffset;
  int x10_;
  int x14_;
  uint x18_numBlocksAvailable;
  uint x1c_numAllocs;
};

#endif // _CSMALLALLOCPOOL
