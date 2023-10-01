#ifndef _CMEDIUMALLOCPOOL
#define _CMEDIUMALLOCPOOL

#include <rstl/list.hpp>

class CMediumAllocPool {
public:
  struct SMediumAllocPuddle {
    uchar unk;
    void* x4_mainData;
    void* x8_bookKeeping;
    void* xc_cachedBookKeepingOffset;
    int x10_;
    int x14_numBlocks;
    int x18_numAllocs;
    int x1c_numEntries;
  };

  rstl::list< SMediumAllocPuddle > x0_list;
  const rstl::list< SMediumAllocPuddle >::node* x18_lastNodePrev;
  CMediumAllocPool();
  void* Alloc(uint size);
  bool HasPuddles() const;
  void AddPuddle(uint, void*, int);
  void ClearPuddles();

  int Free(const void* ptr);

  uint GetTotalEntries();
  uint GetNumBlocksAvailable();
  uint GetNumAllocs();

  static CMediumAllocPool* gMediumAllocPtr;
};

#endif // _CMEDIUMALLOCPOOL
