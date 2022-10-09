#ifndef _CCRC32
#define _CCRC32
#include "types.h"

class CCRC32 {
public:
  static uint Calculate(const void* data, uint length);
};

#endif // _CCRC32
