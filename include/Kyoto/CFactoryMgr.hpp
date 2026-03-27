#ifndef _CFACTORYMGR
#define _CFACTORYMGR

#include "types.h"

class CFactoryMgr {
public:
  static uint FourCCToTypeIdx(uint fcc);
  static uint TypeIdxToFourCC(uint idx);

private:
  uchar pad[0x38];
};

#endif // _CFACTORYMGR
