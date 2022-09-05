#include "Kyoto/Streams/CInputStream.hpp"

#include "string.h"

#include "Kyoto/Alloc/CMemory.hpp"

CInputStream::CInputStream(int len)
: x4_blockOffset(0)
, x8_blockLen(0)
, xc_len(len)
, x10_ptr(new u8[len])
, x14_owned(true)
, x18_readPosition(0)
, x1c_bitWord(0)
, x20_bitOffset(0) {}

CInputStream::CInputStream(const void* ptr, int len, bool owned)
: x4_blockOffset(0)
, x8_blockLen(len)
, xc_len(len)
, x10_ptr(const_cast< u8* >(reinterpret_cast< const u8* >(ptr)))
, x14_owned(owned)
, x18_readPosition(0)
, x1c_bitWord(0)
, x20_bitOffset(0) {}

CInputStream::~CInputStream() {
  if (x14_owned) {
    delete x10_ptr;
  }
}

bool CInputStream::InternalReadNext() {
  x8_blockLen = Read(x10_ptr, xc_len);
  x4_blockOffset = 0;
  return x8_blockLen != 0;
}

bool CInputStream::GrabAnotherBlock() { return InternalReadNext(); }

void CInputStream::Get(void* dest, unsigned long len) {
  uint remain = len;
  uint readCount = 0;
  x20_bitOffset = 0;

  while (remain != 0) {
    uint blockLen = x8_blockLen - x4_blockOffset;
    blockLen = remain < blockLen ? remain : blockLen;

    if (blockLen != 0) {
      memcpy(reinterpret_cast< u8* >(dest) + readCount, x10_ptr + x4_blockOffset, blockLen);
      remain -= blockLen;
      readCount += blockLen;
      x4_blockOffset += blockLen;
    } else if (remain > 256) {
      uint readLen = Read(reinterpret_cast< u8* >(dest) + readCount, remain);
      remain -= readLen;
      readCount += readLen;
    } else {
      GrabAnotherBlock();
    }
  }

  x18_readPosition += readCount;
}

uint CInputStream::ReadBytes(void* dest, unsigned long len) {
  if (len == 0) {
    return 0;
  }

  if (x4_blockOffset == x8_blockLen) {
    GrabAnotherBlock();
  }

  uint curLen = len;
  uint curReadLen = 0;

  while (curReadLen < len) {
    uint remain = x8_blockLen - x4_blockOffset;
    if (remain == 0) {
      if (InternalReadNext()) {
        continue;
      } else {
        return curReadLen;
      }
    }

    uint sz = curLen < remain ? curLen : remain;
    memcpy(reinterpret_cast< u8* >(dest) + curReadLen, x10_ptr + x4_blockOffset, sz);
    curReadLen += sz;
    curLen -= sz;
    x4_blockOffset += sz;
  }

  x18_readPosition += curReadLen;
  return curReadLen;
}

static inline uint BitsToBytes(uint bits) { return (bits / 8) + ((bits % 8) ? 1 : 0); }

uint CInputStream::ReadBits(uint bitCount) {
  if (x20_bitOffset >= bitCount) {
    uint mask = 0xffffffff;
    uint bwShift = 32 - bitCount;
    if (bitCount != 0x20) {
      mask = (1 << bitCount) - 1;
    }
    uint ret = mask & (x1c_bitWord >> bwShift);

    x20_bitOffset -= bitCount;
    x1c_bitWord <<= bitCount;
    return ret;
  }

  uint shiftAmt = bitCount - x20_bitOffset;

  uint ret = 0;
  {
    uint mask = 0xffffffff;
    uint bwShift = 32 - x20_bitOffset;
    if (x20_bitOffset != 0x20) {
      mask = (1 << x20_bitOffset) - 1;
    }
    ret = (mask & (x1c_bitWord >> bwShift)) << shiftAmt;
  }

  uint len = BitsToBytes(shiftAmt);
  x20_bitOffset = 0;
  Get(&x1c_bitWord, len);

  {
    uint mask = 0xffffffff;
    uint bwShift = 32 - shiftAmt;
    if (shiftAmt != 0x20) {
      mask = (1 << shiftAmt) - 1;
    }
    ret |= ((mask & (x1c_bitWord >> bwShift)) << x20_bitOffset);
  }

  x20_bitOffset = len * 8;
  x20_bitOffset -= shiftAmt;
  x1c_bitWord <<= shiftAmt;
  return ret;
}

u8 CInputStream::ReadChar() {
  static u8 c;
  Get(&c, sizeof(u8));
  return c;
}

bool CInputStream::ReadBool() { return static_cast< bool >(ReadChar()); }

u16 CInputStream::ReadShort() {
  static u16 s;
  Get(&s, sizeof(u16));
  return s;
}

uint CInputStream::ReadLong() {
  static uint l;
  Get(&l, sizeof(uint));
  return l;
}

u64 CInputStream::ReadLongLong() {
  static u64 ll;
  Get(&ll, sizeof(u64));
  return ll;
}

f32 CInputStream::ReadFloat() {
  static f32 f;
  Get(&f, sizeof(f32));
  return f;
}
