#include "Kyoto/Alloc/CSmallAllocPool.hpp"
#include <string.h>

CSmallAllocPool::CSmallAllocPool(uint len, void* mainData, void* bookKeeping)
: x0_mainData(mainData)
, x4_bookKeeping(bookKeeping)
, x8_numBlocks(len)
, xc_cachedBookKeepingOffset(NULL)
, x10_(-1)
, x14_(-1)
, x18_numBlocksAvailable(len)
, x1c_numAllocs(0) {
  memset(bookKeeping, 0, len / 2);
}

void* CSmallAllocPool::FindFree(int len) {
  if (xc_cachedBookKeepingOffset == nullptr) {
    xc_cachedBookKeepingOffset = x4_bookKeeping;
  }

  u8* curKeepingOffset = static_cast<u8*>(xc_cachedBookKeepingOffset);
  u8* bookKeepingPtr = static_cast<u8*>(x4_bookKeeping);
  u8* bookKeepingEndPtr = bookKeepingPtr + (x8_numBlocks >> 1);
  u8* curKeepingIter = curKeepingOffset;
  while (true) {
    u8* tmpIter = nullptr;
    if (static_cast<u8*>(curKeepingIter)[0] != 0 || curKeepingIter == bookKeepingEndPtr){
      tmpIter = bookKeepingPtr;
      if (curKeepingIter != bookKeepingEndPtr) {
        u32 tmp = static_cast<u8*>(curKeepingIter)[0];
        tmpIter = curKeepingIter + (tmp >> 5);
      }
    } else {
      tmpIter = curKeepingIter;
      while (static_cast<u8*>(tmpIter)[0] == 0) {
        ++tmpIter;
        if (tmpIter == curKeepingOffset || tmpIter == bookKeepingEndPtr || tmpIter == curKeepingIter + (len / 2)) {
          break;
        }
      }

      if (tmpIter == curKeepingIter + (len / 2)) {
        if (tmpIter == bookKeepingEndPtr) {
          xc_cachedBookKeepingOffset = bookKeepingPtr;
        } else {
          xc_cachedBookKeepingOffset = curKeepingIter;
        }
        return curKeepingIter;
      }

      if (tmpIter == curKeepingOffset) {
        return nullptr;
      }
      if (tmpIter == bookKeepingEndPtr) {
        tmpIter = bookKeepingPtr;
      }
    }
    curKeepingIter = tmpIter;
    if (tmpIter == curKeepingOffset) {
      return nullptr;
    }
  }
}

void* CSmallAllocPool::Alloc(uint size) {
    u32 len = size >= 4 ? len = (size + 3) / 4 : 1;

    if ((len & 1) != 0) {
        len += 1;
    }

    u8* freePtr = static_cast<u8*>(FindFree(len));
    if (freePtr == NULL) {
        return NULL;
    }

    s32 sub = len - 2;
    s32 blockSize = (sub >> 31) & 1;
    blockSize = blockSize + sub;
    u8* bookKeepingStart = static_cast<u8*>(x4_bookKeeping);
    blockSize >>= 1;
    u8* bufPtr = GetPtrFromIndex(freePtr - bookKeepingStart);
    *static_cast<u8*>(freePtr) = (len << 4) | 0xf;
    u8* freePtrIter = freePtr + 1;
    while(blockSize--) {
        *freePtrIter = 0xff;
        ++freePtrIter;
    }

    x18_numBlocksAvailable -= len;
    ++x1c_numAllocs;

    return bufPtr;
}


bool CSmallAllocPool::Free(const void* arg0) {
    s32 temp_r8 = GetIndexFromPtr(arg0);
    s32 mask = (temp_r8 & 1) ? 0 : 4;
    u32 temp_r9 = (u32)temp_r8 / 2;
    s32 temp_r4_2 = GetEntryValue(temp_r9);
    temp_r4_2 = (temp_r4_2 >> mask) & 0xF;
    x18_numBlocksAvailable += temp_r4_2;
    s32 var_r5 = temp_r4_2;
    x1c_numAllocs -= 1;
    x14_ = temp_r8;
    if ((u32) temp_r8 == (u32) x10_) {
        x10_ = -1;
    }

    u8* var_r3 = ((u8*)x4_bookKeeping) + temp_r9;
    while (var_r5 != 0) {
        *var_r3 = 0;
        var_r5 -= 2;
        ++var_r3;
    }
    return 1;
}
