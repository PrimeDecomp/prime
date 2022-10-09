#ifndef _CBASICS
#define _CBASICS

#include "types.h"

namespace CBasics {
void Init();
char* Stringize(const char* fmt, ...);
inline void SwapBytes(uchar* v) {}
inline float SwapBytes(float f) { 
  u8* tmp = reinterpret_cast<u8*>(&f);
  SwapBytes(tmp);
  return *reinterpret_cast<float*>(tmp);
 }
}; // namespace CBasics

#endif // _CBASICS
