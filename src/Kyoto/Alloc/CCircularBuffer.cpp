#include "Kyoto/Alloc/CCircularBuffer.hpp"

CCircularBuffer::CCircularBuffer(void* buf, int len, CCircularBuffer::EOwnership ownership)
: x0_owned(buf != NULL), x4_ptr(buf), x8_bufferLen(len), xc_(0), x10_nextFreeAddr(0), x14_(-1) {
  if (ownership == kOS_NotOwned)
    x0_owned = false;
}

bool CCircularBuffer::IsWrappedMemory(int offset, int len) {
  if (x14_ > -1 && x14_ >= offset && x14_ < (offset + len)) {
    return true;
  }

  return false;
}

void* CCircularBuffer::Alloc(int len) {
  u8* ret;
  if ((x8_bufferLen - x10_nextFreeAddr) >= len && !IsWrappedMemory(x10_nextFreeAddr, len)) {
    s32 offset = x10_nextFreeAddr;
    u8* ptr = (u8*)x4_ptr;
    x10_nextFreeAddr = offset + len;
    return ptr + offset;
  } else if (xc_ >= len && !IsWrappedMemory(0, len)) {
    u32 r3 = xc_;
    xc_ = 0;
    x10_nextFreeAddr = len;
    x14_ = r3;
    return x4_ptr;
  }

  return nullptr;
}

void CCircularBuffer::Free(void* ptr, int len) {
  if (x14_ > -1) {
    if (ptr == x4_ptr) {
      x14_ = -1;
      xc_ = len;
    } else {
      x14_ += len;
    }
  } else {
    xc_ += len;
  }

  if (x14_ == -1 && xc_ == x10_nextFreeAddr) {
    x10_nextFreeAddr = 0;
    xc_ = 0;
  }
}

int CCircularBuffer::GetAllocatedAmount() const {
  int tmp = x14_;
  int res = x10_nextFreeAddr - xc_;
  if (tmp != -1) {
    res += x8_bufferLen - tmp;
  }

  return res;
}
