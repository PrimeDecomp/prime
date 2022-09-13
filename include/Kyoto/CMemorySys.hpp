#ifndef _CMEMORY_SYS_HPP
#define _CMEMORY_SYS_HPP

#include "types.h"

#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Alloc/IAllocator.hpp"

class CMemorySys {
public:
  CMemorySys(COsContext&, IAllocator&);
  ~CMemorySys();

  static IAllocator& GetGameAllocator();

private:
  u8 x0_unk;
};

#endif
