#ifndef _CCHARACTERSET
#define _CCHARACTERSET

#include "Kyoto/Animation/CCharacterInfo.hpp"

#include <rstl/map.hpp>

#include "types.h"
class CInputStream;
class CCharacterSet {
public:
  CCharacterSet(CInputStream& in);
  const rstl::vector< rstl::pair< int, CCharacterInfo > >& GetCharacterList() const {
    return mCharacters;
  }

private:
  ushort mTableCount;
  rstl::vector< rstl::pair< int, CCharacterInfo > > mCharacters;
};
CHECK_SIZEOF(CCharacterSet, 0x14)

#endif // _CCHARACTERSET
