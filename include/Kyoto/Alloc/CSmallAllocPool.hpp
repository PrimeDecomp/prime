#ifndef __CSMALLALLOCPOOL_HPP__
#define __CSMALLALLOCPOOL_HPP__

#include <types.h>

class CSmallAllocPool {
public:
    CSmallAllocPool(uint len, void* mainData, void* bookKeeping);
    void* FindFree(int len);
    void* Alloc(uint size);
    bool Free(const void* ptr);
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
#endif // __CSMALLALLOCPOOL_HPP__
