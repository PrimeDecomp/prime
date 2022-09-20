#ifndef __CGAMEALLOCATOR_HPP__
#define __CGAMEALLOCATOR_HPP__

#include <types.h>
#include <Kyoto/Alloc/IAllocator.hpp>
#include <Kyoto/Alloc/CMediumAllocPool.hpp>

class CSmallAllocPool;
class CMediumAllocPool;
class COsContext;
class CGameAllocator : public IAllocator {
public:
  class SGameMemInfo {
  public:
    SGameMemInfo(SGameMemInfo* prev, SGameMemInfo* next, SGameMemInfo* nextFree, uint len, const char* fileAndLine, const char* type)
    : x0_priorGuard(0xefefefef)
    , x4_len(len)
    , x8_fileAndLine(fileAndLine)
    , xc_type(type)
    , x10_prev(prev)
    , x14_next(next)
    , x18_nextFree(nextFree)
    , x1c_postGuard(0xeaeaeaea) {}

    SGameMemInfo* GetPrev() { return (SGameMemInfo*)((size_t)x10_prev & ~31); }
    void SetPrev(SGameMemInfo* prev) {
        void* ptr = x10_prev;
        x10_prev = prev;
        x10_prev = (SGameMemInfo*)(((size_t)ptr & 31) | ((size_t)x10_prev & ~31));
    }
    SGameMemInfo* GetNext() const { return (SGameMemInfo*)((size_t)x14_next & ~31); }
    void SetNext(SGameMemInfo* next) {
        void* ptr = x14_next;
        x14_next = next;
        x14_next = (SGameMemInfo*)(((size_t)ptr & 31) | ((size_t)x14_next & ~31));
    }
    u32 GetPrevMaskedFlags();
    u32 GetNextMaskedFlags();
    void SetTopOfHeapAllocated(bool topOfHeap);
    size_t GetLength() const { return x4_len; }
    SGameMemInfo* GetNextFree() const { return (SGameMemInfo*)((size_t)x18_nextFree & ~31); }
    void SetNextFree(SGameMemInfo* info) {
        void* ptr = x18_nextFree;
        x18_nextFree = info;
        x18_nextFree = (SGameMemInfo*)(((size_t)ptr & 31) | ((size_t)x18_nextFree & ~31));
    }

    bool IsAllocated() const { return ((size_t)x10_prev) & 1; }
  private:
    int x0_priorGuard;
    size_t x4_len;
    const char* x8_fileAndLine;
    const char* xc_type;
    SGameMemInfo* x10_prev;
    SGameMemInfo* x14_next;
    SGameMemInfo* x18_nextFree;
    int x1c_postGuard;
  };

  SGameMemInfo* GetMemInfoFromBlockPtr(const void* ptr) const;
  CGameAllocator();
  ~CGameAllocator();

  bool Initialize(COsContext& ctx);
  void Shutdown();
  void* Alloc(size_t, EHint, EScope, EType, const CCallStack&) override;
  SGameMemInfo* FindFreeBlock(uint);
  SGameMemInfo* FindFreeBlockFromTopOfHeap(uint);
  uint FixupAllocPtrs(SGameMemInfo*, uint, uint, EHint, const CCallStack&);
  void UpdateAllocDebugStats(unsigned int, unsigned int, unsigned int);
  bool Free(const void* ptr) override;
  bool FreeNormalAllocation(const void* ptr);
  void ReleaseAll() override;
  void* AllocSecondary(size_t, IAllocator::EHint, IAllocator::EScope, IAllocator::EType, const CCallStack&) override;
  bool FreeSecondary(const void* ptr) override;
  void ReleaseAllSecondary() override;
  void SetOutOfMemoryCallback(FOutOfMemoryCb cb, const void* target) override;
  void EnumAllocations(FEnumAllocationsCb func, const void* ptr, bool b) const override;
  SAllocInfo GetAllocInfo(const void* ptr) const override;
  SMetrics GetMetrics() const override;
  void OffsetFakeStatics(int offset) override;

  static uint GetFreeBinEntryForSize(uint);
  void AddFreeEntryToFreeList(SGameMemInfo*);
  void RemoveFreeEntryFromFreeList(SGameMemInfo*);
  void DumpAllocations() const;
  size_t GetLargestFreeChunk() const;

private:
  SGameMemInfo** GetBinPtr(u32 bin) { return &x14_bins[bin]; }
  u8 x4_;
  u8 x5_;
  u8 x6_;
  u8 x7_;
  u32 x8_heapSize;
  SGameMemInfo* xc_first;
  SGameMemInfo* x10_last;
  SGameMemInfo* x14_bins[16];
  u32 x54_;
  FOutOfMemoryCb x58_oomCallback;
  const void* x5c_oomTarget;
  CSmallAllocPool* x60_smallAllocPool;
  void* x64_smallAllocMainData;
  void* x68_smallAllocBookKeeping;
  bool x6c_;
  int x70_;
  CMediumAllocPool* x74_mediumPool;
  void* x78_;
  bool x7c_;
  uint x80_;
  uint x84_;
  uint x88_;
  uint x8c_;
  uint x90_heapSize2;
  uint x94_;
  uint x98_;
  uint x9c_;
  uint xa0_;
  uint xa4_;
  uint xa8_;
  uint xac_;
  mutable uint xb0_;
  void* xb4_physicalAddr;
  uint xb8_fakeStatics;
  uint xbc_;
};

#endif // __CGAMEALLOCATOR_HPP__
