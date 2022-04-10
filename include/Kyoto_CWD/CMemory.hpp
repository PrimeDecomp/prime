#ifndef _CMEMORY_HPP
#define _CMEMORY_HPP

#include "types.h"

namespace CMemory {
void* Alloc(unsigned long sz);
void Free(const void* ptr);
} // namespace CMemory

void* operator new(unsigned long sz, const char*, const char*);
void* operator new[](unsigned long sz, const char*, const char*);
inline void* operator new(unsigned long sz) {
  const char* fileAndLineNo = "??(??)";
  const char* type = nullptr;
  return operator new(sz, fileAndLineNo, type);
}
inline void* operator new[](unsigned long sz) {
  const char* fileAndLineNo = "??(??)";
  const char* type = nullptr;
  return operator new[](sz, fileAndLineNo, type);
}
// placement new
inline void* operator new(unsigned long n, void* ptr) { return ptr; };

inline void operator delete(void* ptr) { CMemory::Free(ptr); }

#endif
