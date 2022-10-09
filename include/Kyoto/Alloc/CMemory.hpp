#ifndef _CMEMORY
#define _CMEMORY

#include "types.h"

namespace CMemory {
void* Alloc(size_t sz);
void Free(const void* ptr);
} // namespace CMemory

void* operator new(size_t sz, const char*, const char*);
void* operator new[](size_t sz, const char*, const char*);
inline void* operator new(size_t sz) { return operator new(sz, "??(??)", nullptr); }
inline void* operator new[](size_t sz) { return operator new[](sz, "??(??)", nullptr); }
// placement new
inline void* operator new(size_t n, void* ptr) { return ptr; };

inline void operator delete(void* ptr) { CMemory::Free(ptr); }
inline void operator delete[](void* ptr) { CMemory::Free(ptr); }

#endif // _CMEMORY
