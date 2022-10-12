#ifndef _STREAMSUPPORT
#define _STREAMSUPPORT
#include <types.h>

static inline uint min_containing_bytes(uint bits) {
  return (bits / 8) + ((bits % 8) != 0);
}

#endif // _STREAMSUPPORT
