#ifndef _CMEDIUMALLOCPOOL
#define _CMEDIUMALLOCPOOL

#include <rstl/auto_ptr.hpp>
#include <rstl/list.hpp>

struct SMediumAllocPuddle {
  SMediumAllocPuddle(const uint numBlocks, void* data, const bool canErase);
  ~SMediumAllocPuddle();
  void* FindFree(uint blockCount);
  void* FindFreeEntry(uint blockCount);
  void Free(const void* ptr);

  const uint GetNumBlocks() const { return x14_numBlocks; }
  const uint GetNumAllocs() const { return x18_numAllocs; }
  const uint GetNumEntries() const { return x1c_numEntries; }
  const bool CanErase() const { return x20_canErase; }
  const uint GetPtrOffset(const void* ptr) const { return (uchar*)ptr - x0_mainData.get(); }
  static ushort GetBlockOffset(const void* ptrA, const void* ptrB);
  static void InitBookKeeping(uchar* bookKeepingPtr, const ushort blockCount);

private:
  rstl::auto_ptr< void > x0_mainData;
  uchar* x8_bookKeeping;
  uchar* xc_cachedBookKeepingAddr;
  uint x10_unused;
  uint x14_numBlocks;
  uint x18_numAllocs;
  uint x1c_numEntries;
  bool x20_canErase : 1;
};

class CMediumAllocPool {
public:
  rstl::list< SMediumAllocPuddle > x0_list;
  rstl::list< SMediumAllocPuddle >::node* x18_lastNodePrev;
  CMediumAllocPool();
  void* Alloc(uint size);
  bool HasPuddles() const;
  void AddPuddle(const uint, void*, const bool);
  void ClearPuddles();

  int Free(const void* ptr);

  uint GetTotalEntries();
  uint GetNumBlocksAvailable();
  uint GetNumAllocs();

  static CMediumAllocPool* gMediumAllocPtr;
};

#endif // _CMEDIUMALLOCPOOL
