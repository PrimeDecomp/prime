#ifndef _CMEMORYDRAWENUM
#define _CMEMORYDRAWENUM

#include "types.h"

class CMemoryDrawEnum {
public:
  static void AddWorldMemory(uint size) { sWorldMemory += size; }
  static void SubtractWorldMemory(uint size) { sWorldMemory -= size; }

private:
  static uint sWorldMemory;
};

#endif // _CMEMORYDRAWENUM
