#ifndef _TONESTATIC_HPP
#define _TONESTATIC_HPP

#include "types.h"

template < typename T >
class TOneStatic {
public:
  void* operator new(unsigned long sz, const char*, const char*); /* {
   ReferenceCount()++;
   return GetAllocSpace();
 }*/
  void* operator new(unsigned long sz) { return operator new(sz, "??(??)", nullptr); }
  void operator delete(void* ptr) { ReferenceCount()--; }

private:
  static void* GetAllocSpace() {
    static u8 sAllocSpace[sizeof(T)];
    return &sAllocSpace;
  }
  static u32& ReferenceCount() {
    static u32 sReferenceCount = 0;
    return sReferenceCount;
  }
};

#endif
