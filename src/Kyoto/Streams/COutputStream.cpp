#include "Kyoto/Streams/COutputStream.hpp"

#include "Kyoto/Alloc/CMemory.hpp"

#include <string.h>

COutputStream::COutputStream(int len)
: mPosition(0)
, mBufLen(len)
, mBufPtr(len > 64 ? new uchar[len] : &mScratch[32 - (uint)(mScratch) % 31])
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
  uint curLen = len;
  if (mBufLen <= len + mPosition) {
    memcpy((uchar*)mBufPtr + mPosition, ptr, len);
    mPosition += len;
  } else {
    while (curLen != 0) {
      uint count = mBufLen - mPosition;
      if (curLen < count) {
        count = curLen;
      }
      if (count == 0) {
        DoFlush();
      } else {
        memcpy((uchar*)mBufPtr + mPosition, (uchar*)ptr + (len - curLen), count);
        mPosition += count;
        curLen -= count;
      }
    }
  }
}

void COutputStream::Flush() {}

void COutputStream::DoFlush() {}
