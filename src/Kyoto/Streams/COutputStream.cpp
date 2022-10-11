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
  uint curLen = len;

  mNumWrites += len;
  if (mBufLen <= len + mPosition) {
    memcpy((uchar*)mBufPtr + mPosition, ptr, len);
    mPosition += len;
    return;
  }

  while (curLen != 0) {
    uint count = mBufLen - mPosition;
    uint offset = curLen;
    if (curLen < count) {
      count = curLen;
    }
    if (count != 0) {
      memcpy((uchar*)mBufPtr + mPosition, (uchar*)ptr + offset, count);
      mPosition += count;
      curLen -= count;
    } else {
      DoFlush();
    }
  }
}

void COutputStream::Flush() {
  FlushShiftRegister();
  DoFlush();
}

void COutputStream::DoFlush() {
  if (mPosition != 0) {
    Write(mBufPtr, mPosition);
    mPosition = 0;
  }
}

static inline u32 min_containing_bytes(u32 v) {
  v = 32 - v;
  return (v / 8) + ((v % 8) != 0);
}

void COutputStream::FlushShiftRegister() {
  if (mShiftRegisterOffset < 32) {
    DoPut(&mShiftRegister, min_containing_bytes(mShiftRegisterOffset));
    mShiftRegister = 0;
    mShiftRegisterOffset = 32;
  }
}
