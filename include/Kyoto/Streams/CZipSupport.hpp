#ifndef _CZIPSUPPORT
#define _CZIPSUPPORT

#include "rstl/single_ptr.hpp"
#include <types.h>

class CZipSupport {
public:
  static void * Alloc(void* ptr, uint w1, uint w2);
  static void Free(void*, void*);
};

#endif // _CZIPSUPPORT
