#ifndef _CSTRINGTABLE
#define _CSTRINGTABLE

#include <stdint.h>

#include "types.h"

#include <rstl/single_ptr.hpp>
#if TARGET_LITTLE_ENDIAN || WCHAR_MAX > 0xffff
#include "rstl/vector.hpp"
#endif

#include <Kyoto/CFactoryFnReturn.hpp>

class CInputStream;
class CStringTable {
  int x0_stringCount;
  rstl::single_ptr< uchar > x4_data;
#if TARGET_LITTLE_ENDIAN || WCHAR_MAX > 0xffff
  rstl::vector< rstl::vector< wchar_t > > mNativeStrings;
#endif

public:
  CStringTable(CInputStream& in);
  const wchar_t* GetString(int idx) const;
  int GetStringCount() const { return x0_stringCount; }
};

extern CStringTable* gpStringTable;

const CFactoryFnReturn FStringTableFactory(const SObjectTag& tag, CInputStream& in,
                                     const CVParamTransfer& xfer);

#endif // _CSTRINGTABLE
