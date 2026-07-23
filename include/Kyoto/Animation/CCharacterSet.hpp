#ifndef _CCHARACTERSET
#define _CCHARACTERSET

#include "Kyoto/Animation/CCharacterInfo.hpp"

#include <rstl/map.hpp>

#include "types.h"
class CInputStream;
class CCharacterSet {
public:
  CCharacterSet(CInputStream& in);
  //~CCharacterSet();

private:
  ushort mTableCount;
  rstl::vector< rstl::pair< int, CCharacterInfo > > mCharacters;
};
#endif // _CCHARACTERSET
