#ifndef _CCIRCULARBUFFER
#define _CCIRCULARBUFFER

#include <types.h>

class CCircularBuffer {
public:
  enum EOwnership { kOS_Owned, kOS_NotOwned };

  CCircularBuffer(void* buf, int len, EOwnership owned = kOS_NotOwned);
  bool IsWrappedMemory(int offset, int len);
  void* Alloc(int len);
  void Free(void* ptr, int len);
  int GetAllocatedAmount() const;

private:
  uchar x0_owned;
  void* x4_ptr;
  int x8_bufferLen;
  int xc_;
  int x10_nextFreeAddr;
  int x14_;
};

#endif // _CCIRCULARBUFFER
