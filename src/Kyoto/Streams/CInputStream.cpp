#include "Kyoto_CWD/CInputStream.hpp"

#include "string.h"

#include "Kyoto_CWD/CMemory.hpp"

// TODO move into functions
static u8 lbl_805A94F0;
static s16 lbl_805A94F2;
static s32 lbl_805A94F4;
static s64 lbl_805A94F8;
static f32 lbl_805A9500;

f32 CInputStream::ReadFloat() {
  Get(&lbl_805A9500, sizeof(f32));
  return lbl_805A9500;
}

s64 CInputStream::ReadLongLong() {
  Get(&lbl_805A94F8, sizeof(s64));
  return lbl_805A94F8;
}

s32 CInputStream::ReadLong() {
  Get(&lbl_805A94F4, sizeof(s32));
  return lbl_805A94F4;
}

s16 CInputStream::ReadShort() {
  Get(&lbl_805A94F2, sizeof(s16));
  return lbl_805A94F2;
}

bool CInputStream::ReadBool() { return static_cast< bool >(ReadChar()); }

u8 CInputStream::ReadChar() {
  Get(&lbl_805A94F0, sizeof(u8));
  return lbl_805A94F0;
}

// TODO https://decomp.me/scratch/nzMPg
u32 CInputStream::ReadBits(s32 bitCount) {
  u32 ret = 0;
  u32 bitOffset = x20_bitOffset;
  if (bitOffset < bitCount) {
    u32 shiftAmt = bitCount - bitOffset;
    const u32 mask = bitOffset == 32 ? 0xffffffff : (1 << bitOffset) - 1;
    const u32 bitWord = x1c_bitWord;
    x20_bitOffset = 0;
    const u32 len = (shiftAmt / 8) + static_cast< unsigned int >((shiftAmt % 8) != 0);
    Get(&x1c_bitWord, len);
    const u32 mask2 = shiftAmt == 32 ? 0xffffffff : (1 << shiftAmt) - 1;
    u32 tmp = x20_bitOffset;
    x20_bitOffset = len * 8;
    ret = ((mask & (bitWord >> (32 - bitOffset))) << shiftAmt) | ((mask2 & (x1c_bitWord >> (32 - shiftAmt))) << tmp);
    x20_bitOffset -= shiftAmt;
    x1c_bitWord <<= u64(shiftAmt);
  } else {
    u32 baseVal2 = (bitCount == 0x20 ? 0xffffffff : (1 << bitCount) - 1);
    x20_bitOffset -= bitCount;
    ret = baseVal2 & (x1c_bitWord >> (32 - bitCount));
    x1c_bitWord <<= u64(bitCount);
  }
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
