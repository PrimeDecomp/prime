#include "MWCPlusLib.h"

#ifdef __cplusplus
extern "C" {
#endif

void* __copy(char* to, char* from, size_t size) {
  char* p;

  if (to && size) {
    p = to;
    do {
      *p = *from;
      ++p;
      ++from;
      --size;
    } while (size > 0);
  }

  return to;
}

#ifdef __cplusplus
}
#endif
