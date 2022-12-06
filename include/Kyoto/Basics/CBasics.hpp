#ifndef _CBASICS
#define _CBASICS

#include "types.h"

namespace CBasics {
bool Init();
char* Stringize(const char* fmt, ...);
inline uint SwapBytes(uint x) {
#if 0
  x = ((x << 24) | ((x << 8) & 0x00FF0000) | ((x >> 8) & 0x0000FF00) | (x >> 24));
#endif
  return x;
}
inline float SwapBytes(float x) {
  union {
    float f;
    uint u;
  };
  f = x;
#if 0
  u = SwapBytes(u);
#endif
  return f;
}
}; // namespace CBasics

#endif // _CBASICS
