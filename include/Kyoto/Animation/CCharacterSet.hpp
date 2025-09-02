#ifndef _CCHARACTERSET
#define _CCHARACTERSET

#include "types.h"
class CInputStream;
class CCharacterSet {
public:
  CCharacterSet(CInputStream& in);

private:
  uint unk;
  char data[0x10];
};
#endif // _CCHARACTERSET
