#include "Kyoto_CWD/CInputStream.hpp"

#include "string.h"

#include "Kyoto_CWD/CMemory.hpp"

static u8 c;
static u16 s;
static u32 l;
static u64 ll;
static f32 f;

f32 CInputStream::ReadFloat() {
  Get(&f, sizeof(f32));
  return f;
}

u64 CInputStream::ReadLongLong() {
  Get(&ll, sizeof(u64));
  return ll;
}

u32 CInputStream::ReadLong() {
  Get(&l, sizeof(u32));
  return l;
}

u16 CInputStream::ReadShort() {
  Get(&s, sizeof(u16));
  return s;
}

bool CInputStream::ReadBool() { return static_cast< bool >(ReadChar()); }

u8 CInputStream::ReadChar() {
  Get(&c, sizeof(u8));
  return c;
}

static inline u32 BitsToBytes(u32 bits) { return (bits / 8) + ((bits % 8) ? 1 : 0); }

u32 CInputStream::ReadBits(u32 bitCount) {
  if (x20_bitOffset >= bitCount) {
    u32 mask = 0xffffffff;
    u32 bwShift = 32 - bitCount;
    if (bitCount != 0x20) {
      mask = (1 << bitCount) - 1;
    }
    u32 ret = mask & (x1c_bitWord >> bwShift);

    x20_bitOffset -= bitCount;
    x1c_bitWord <<= bitCount;
    return ret;
  }

  u32 shiftAmt = bitCount - x20_bitOffset;

  u32 ret = 0;
  {
    u32 mask = 0xffffffff;
    u32 bwShift = 32 - x20_bitOffset;
    if (x20_bitOffset != 0x20) {
      mask = (1 << x20_bitOffset) - 1;
    }
    ret = (mask & (x1c_bitWord >> bwShift)) << shiftAmt;
  }

  u32 len = BitsToBytes(shiftAmt);
  x20_bitOffset = 0;
  Get(&x1c_bitWord, len);

  {
    u32 mask = 0xffffffff;
    u32 bwShift = 32 - shiftAmt;
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

u32 CInputStream::ReadBytes(void* dest, unsigned long len) {
  if (len == 0) {
    return 0;
  }

  if (x4_blockOffset == x8_blockLen) {
    GrabAnotherBlock();
  }

  u32 curLen = len;
  u32 curReadLen = 0;

  while (curReadLen < len) {
    u32 remain = x8_blockLen - x4_blockOffset;
    if (remain == 0) {
      if (InternalReadNext()) {
        continue;
      } else {
        return curReadLen;
      }
    }

    u32 sz = curLen < remain ? curLen : remain;
    memcpy(reinterpret_cast< u8* >(dest) + curReadLen, x10_ptr + x4_blockOffset, sz);
    curReadLen += sz;
    curLen -= sz;
    x4_blockOffset += sz;
  }

  x18_readPosition += curReadLen;
  return curReadLen;
}

void CInputStream::Get(void* dest, unsigned long len) {
  u32 remain = len;
  u32 readCount = 0;
  x20_bitOffset = 0;

  while (remain != 0) {
    u32 blockLen = x8_blockLen - x4_blockOffset;
    blockLen = remain < blockLen ? remain : blockLen;

    if (blockLen != 0) {
      memcpy(reinterpret_cast< u8* >(dest) + readCount, x10_ptr + x4_blockOffset, blockLen);
      remain -= blockLen;
      readCount += blockLen;
      x4_blockOffset += blockLen;
    } else if (remain > 256) {
      u32 readLen = Read(reinterpret_cast< u8* >(dest) + readCount, remain);
      remain -= readLen;
      readCount += readLen;
    } else {
      GrabAnotherBlock();
    }
  }

  x18_readPosition += readCount;
}

bool CInputStream::GrabAnotherBlock() { return InternalReadNext(); }

bool CInputStream::InternalReadNext() {
  x8_blockLen = Read(x10_ptr, xc_len);
  x4_blockOffset = 0;
  return x8_blockLen != 0;
}

CInputStream::~CInputStream() {
  if (x14_owned) {
    delete x10_ptr;
  }
}

CInputStream::CInputStream(const void* ptr, size_t len, bool owned)
: x4_blockOffset(0)
, x8_blockLen(len)
, xc_len(len)
, x10_ptr(const_cast< u8* >(reinterpret_cast< const u8* >(ptr)))
, x14_owned(owned)
, x18_readPosition(0)
, x1c_bitWord(0)
, x20_bitOffset(0) {}

CInputStream::CInputStream(size_t len)
: x4_blockOffset(0)
, x8_blockLen(0)
, xc_len(len)
, x10_ptr(new u8[len])
, x14_owned(true)
, x18_readPosition(0)
, x1c_bitWord(0)
, x20_bitOffset(0) {}
