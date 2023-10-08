#ifndef _TONESTATIC
#define _TONESTATIC

#include "stdio.h"
#include "types.h"

template < typename T >
class TOneStatic {
public:
  void* operator new(size_t sz, const char*, const char*);
  void* operator new(size_t sz) { return operator new(sz, "??(??)", nullptr); }
  void operator delete(void* ptr);

private:
  static void* GetAllocSpace();
  static uint& ReferenceCount();
};

template < typename T >
uint& TOneStatic< T >::ReferenceCount() {
  static uint sReferenceCount = 0;
  return sReferenceCount;
}

template < typename T >
void* TOneStatic< T >::GetAllocSpace() {
  static char sAllocSpace[sizeof(T)];
  return &sAllocSpace;
}

template < typename T >
void* TOneStatic< T >::operator new(size_t sz, const char*, const char*) {
  ReferenceCount()++;
  return GetAllocSpace();
}

template < typename T >
void TOneStatic< T >::operator delete(void* ptr) {
  ReferenceCount()--;
}



#endif // _TONESTATIC
