#ifndef _CSTRINGTABLE_HPP
#define _CSTRINGTABLE_HPP

#include "types.h"

#include "rstl/single_ptr.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

class CStringTable {
  int x0_stringCount;
  rstl::single_ptr< u8 > x4_data;

public:
  CStringTable(CInputStream& in);
  const wchar_t* GetString(int idx) const;
};

extern CStringTable* gpStringTable;

#endif
