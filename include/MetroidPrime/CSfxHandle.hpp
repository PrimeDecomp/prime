#ifndef _CSFXHANDLE_HPP
#define _CSFXHANDLE_HPP

#include "types.h"

class CSfxHandle {
public:
  CSfxHandle() : value(0) {}
  CSfxHandle(u32 value) : value(value) {}

private:
  u32 value;
};
CHECK_SIZEOF(CSfxHandle, 0x4)

#endif