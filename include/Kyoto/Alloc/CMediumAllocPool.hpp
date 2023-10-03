#ifndef _CMEDIUMALLOCPOOL
#define _CMEDIUMALLOCPOOL

#include <rstl/auto_ptr.hpp>
#include <rstl/list.hpp>

struct SMediumAllocPuddle {
  SMediumAllocPuddle(uint numBlocks, void* ptr, const bool unk);
  ~SMediumAllocPuddle();
  void* FindFree(uint blockCount);
  void* FindFreeEntry(uint blockCount);
  bool Free(const void* ptr);

  uint GetUnkx10() const { return x10_; }
  uint GetNumBlocks() const { return x14_numBlocks; }
  uint GetNumAllocs() const { return x18_numAllocs; }
  uint GetNumEntries() const { return x1c_numEntries; }
  bool GetUnk2() const { return x20_unk2; }

  static uint GetBlockOffset(const void* ptrA, const void* ptrB);
  static void InitBookKeeping(uchar* bookKeepingPtr, const ushort blockCount);

private:
  rstl::auto_ptr< void > x0_mainData;
  uchar* x8_bookKeeping;
  uchar* xc_cachedBookKeepingAddr;
  uint x10_;
  uint x14_numBlocks;
  uint x18_numAllocs;
  uint x1c_numEntries;
  bool x20_unk2 : 1;
};

class CMediumAllocPool {
public:
  rstl::list< SMediumAllocPuddle > x0_list;
  rstl::list< SMediumAllocPuddle >::node* x18_lastNodePrev;
  CMediumAllocPool();
  void* Alloc(uint size);
  bool HasPuddles() const;
  void AddPuddle(uint, void*, bool);
  void ClearPuddles();

  int Free(const void* ptr);

  uint GetTotalEntries();
  uint GetNumBlocksAvailable();
  uint GetNumAllocs();

  static CMediumAllocPool* gMediumAllocPtr;
};

#endif // _CMEDIUMALLOCPOOL
