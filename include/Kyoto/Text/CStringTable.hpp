#ifndef _CSTRINGTABLE
#define _CSTRINGTABLE

#include "types.h"

#include "rstl/single_ptr.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

class CStringTable {
  int x0_stringCount;
  rstl::single_ptr< uchar > x4_data;

public:
  CStringTable(CInputStream& in);
  const wchar_t* GetString(int idx) const;
  int GetStringCount() const { return x0_stringCount; }
};

extern CStringTable* gpStringTable;

#endif // _CSTRINGTABLE
