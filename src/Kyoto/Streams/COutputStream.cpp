#include "Kyoto/Streams/COutputStream.hpp"

#include "Kyoto/Streams/StreamSupport.hpp"

#include "Kyoto/Alloc/CMemory.hpp"

#include <string.h>

COutputStream::COutputStream(int len)
: mUnwrittenLen(0)
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
  uint offset;
  uchar* offsetPtr;
  uint tempLen = len;
  if (tempLen != 0) {
    mNumWrites += tempLen;
    if (tempLen + mUnwrittenLen <= mBufLen) {
      memcpy((uchar*)mBufPtr + mUnwrittenLen, ptr, tempLen);
      mUnwrittenLen += tempLen;
      return;
    }

    offsetPtr = (uchar*)ptr + tempLen;
    while (tempLen != 0) {
      uint count = mBufLen - mUnwrittenLen;
      offset = count;
      if (tempLen < count) {
        offset = tempLen;
      }
      if (offset != 0) {
        memcpy((uchar*)mBufPtr + mUnwrittenLen, (offsetPtr - tempLen), offset);

        tempLen -= offset;
        mUnwrittenLen += offset;
      } else {
        DoFlush();
      }
    }
  }
}

void COutputStream::Flush() {
  FlushShiftRegister();
  DoFlush();
}

void COutputStream::DoFlush() {
  if (mUnwrittenLen != 0) {
    Write(mBufPtr, mUnwrittenLen);
    mUnwrittenLen = 0;
  }
}

void COutputStream::FlushShiftRegister() {
  if (mShiftRegisterOffset < 32) {
    DoPut((void*)&mShiftRegister, min_containing_bytes(32 - mShiftRegisterOffset));
    mShiftRegister = 0;
    mShiftRegisterOffset = 32;
  }
}

void COutputStream::WriteBits(uint value, uint bitCount) {

  uint registerOffset = mShiftRegisterOffset;
  if (registerOffset >= bitCount) {
    registerOffset -= bitCount;
    uint mask = 0xffffffff;
    uint shiftRegister = mShiftRegister;
    if (bitCount != 32) {
      mask = (1 << bitCount) - 1;
    }
    mShiftRegister = shiftRegister | ((value & mask) << registerOffset);
    mShiftRegisterOffset -= bitCount;
  } else {
    uint shiftAmt = bitCount - registerOffset;
    uint shiftRegister = mShiftRegister;
    uint mask = 0xffffffff;
    if (registerOffset != 0x20) {
      mask = (1 << registerOffset) - 1;
    }

    shiftRegister |= (value >> shiftAmt);
    shiftRegister &= mask;
    mShiftRegister = shiftRegister;
    mShiftRegisterOffset = 0;
    FlushShiftRegister();
    uint mask2 = 0xffffffff;
    if (shiftAmt != 32) {
      mask2 = (1 << shiftAmt) - 1;
    }
    mShiftRegister = (value & mask2) << (32 - shiftAmt);
    mShiftRegisterOffset -= shiftAmt;
  }
}
