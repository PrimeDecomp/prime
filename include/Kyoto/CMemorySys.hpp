#ifndef _CMEMORYSYS
#define _CMEMORYSYS

#include "types.h"

#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Alloc/IAllocator.hpp"

class CMemorySys {
public:
  CMemorySys(COsContext&, IAllocator&);
  ~CMemorySys();

  static IAllocator& GetGameAllocator();

private:
  uchar x0_unk;
};

#endif // _CMEMORYSYS
