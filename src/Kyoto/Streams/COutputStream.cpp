#include "Kyoto/Streams/COutputStream.hpp"

#include "Kyoto/Streams/StreamSupport.hpp"

#include "Kyoto/Alloc/CMemory.hpp"

#include <stdint.h>
#include <string.h> 

COutputStream::COutputStream(const int len)
: mUnwrittenLen(0)
, mBufLen(len)
, mBufPtr(len > 64 ? rs_new uchar[len]
                   : &mScratch[32 - reinterpret_cast< uintptr_t >(mScratch) % 31])
, mNumWrites(0)
, mShiftRegister(0)
, mShiftRegisterOffset(32), mScratch() {}

COutputStream::~COutputStream() {
  if (mBufLen > 64) {
    delete[] static_cast<const uchar*>(mBufPtr);
  }
}

void COutputStream::DoPut(const void* ptr, const size_t len) {
  uint offset = 0;
  const uchar* offsetPtr = nullptr;
  uint tempLen = len;
  if (tempLen != 0) {
    mNumWrites += tempLen;
    if (tempLen + mUnwrittenLen <= mBufLen) {
      memcpy(static_cast< uchar* >(mBufPtr) + mUnwrittenLen, ptr, tempLen);
      mUnwrittenLen += tempLen;
      return;
    }

    offsetPtr = static_cast< const uchar* >(ptr) + tempLen;
    while (tempLen != 0) {
      const uint count = mBufLen - mUnwrittenLen;
      offset = count;
      if (tempLen < count) {
        offset = tempLen;
      }
      if (offset != 0) {
        memcpy(static_cast< uchar* >(mBufPtr) + mUnwrittenLen, offsetPtr - tempLen, offset);

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
    DoPut(&mShiftRegister, min_containing_bytes(32 - mShiftRegisterOffset));
    mShiftRegister = 0;
    mShiftRegisterOffset = 32;
  }
}

void COutputStream::WriteBits(const uint val, const uint bitCount) {

  const uint registerOffset = mShiftRegisterOffset;
  if (registerOffset >= bitCount) {
    const uint off = registerOffset - bitCount;
    mShiftRegister |= (val & (bitCount != 32 ? (1 << bitCount) - 1 : 0xffffffff)) << off;
    mShiftRegisterOffset -= bitCount;
  } else {
    const uint shiftAmt = bitCount - registerOffset;
    const uint shiftA = val >> shiftAmt;

    mShiftRegister |= shiftA & (registerOffset != 0x20 ? (1 << registerOffset) - 1 : 0xffffffff);
    mShiftRegisterOffset = 0;
    FlushShiftRegister();
    const uint shift = 32 - shiftAmt;
    mShiftRegister = (val & (shiftAmt != 32 ? (1 << shiftAmt) - 1 : 0xffffffff)) << shift;
    mShiftRegisterOffset -= shiftAmt;
  }
}
