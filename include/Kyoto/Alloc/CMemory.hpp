#ifndef _CMEMORY
#define _CMEMORY

#include "types.h"
#include "Kyoto/Alloc/IAllocator.hpp"

class COsContext;
class CMemory {
  static IAllocator* mpAllocator;
  static bool mInitialized;

public:
  static void Startup(COsContext& ctx);
  static void Shutdown();
  static void SetAllocator(COsContext& ctx, IAllocator& allocator);
  static IAllocator* GetAllocator();
  static void* Alloc(size_t len, IAllocator::EHint hint, IAllocator::EScope scope, IAllocator::EType type, const CCallStack& callstack);
  static void Free(const void* ptr);
  static void SetOutOfMemoryCallback(IAllocator::FOutOfMemoryCb callback, const void* context);
  static void OffsetFakeStatics(int);
};

void* operator new(size_t sz, const char*, const char*);
void* operator new[](size_t sz, const char*, const char*);
inline void* operator new(size_t sz) { return operator new(sz, "??(??)", nullptr); }
inline void* operator new[](size_t sz) { return operator new[](sz, "??(??)", nullptr); }
// placement new
inline void* operator new(size_t n, void* ptr) { return ptr; };

inline void operator delete(void* ptr) { CMemory::Free(ptr); }
inline void operator delete[](void* ptr) { CMemory::Free(ptr); }

#endif // _CMEMORY
