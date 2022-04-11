#ifndef _CSTRINGTABLE_HPP
#define _CSTRINGTABLE_HPP

#include "types.h"

#include "rstl/single_ptr.hpp"

#include "CInputStream.hpp"

class CStringTable {
  u32 x0_stringCount;
  rstl::single_ptr< u8 > x4_data;

public:
  CStringTable(CInputStream& in);
};

extern CStringTable* gpStringTable;

#endif
