#include "Kyoto/Streams/COutputStream.hpp"

#include "Kyoto/Alloc/CMemory.hpp"

#include <string.h>

COutputStream::COutputStream(int len)
: mPosition(0)
, mBufLen(len)
, mBufPtr(len > 64 ? new u8[len] : &mScratch[32 - (u32)(mScratch) % 31])
, mNumWrites(0)
, mShiftRegister(0)
, mShiftRegisterOffset(32) {}

COutputStream::~COutputStream() {
  if (mBufLen > 64) {
    delete mBufPtr;
  }
}

void COutputStream::DoPut(const void* ptr, size_t len) {
  if (len == 0) {
    return;
  }

  mNumWrites += len;
  u32 curLen = len;
  if (mBufLen <= len + mPosition) {
    memcpy((u8*)mBufPtr + mPosition, ptr, len);
    mPosition += len;
  } else {
    while (curLen != 0) {
      u32 count = mBufLen - mPosition;
      if (curLen < count) {
        count = curLen;
      }
      if (count == 0) {
        DoFlush();
      } else {
        memcpy((u8*)mBufPtr + mPosition, (u8*)ptr + (len - curLen), count);
        mPosition += count;
        curLen -= count;
      }
    }
  }
}

void COutputStream::Flush() {}

void COutputStream::DoFlush() {}
