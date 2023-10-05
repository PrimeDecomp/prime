#include "Kyoto/Alloc/CMediumAllocPool.hpp"

CMediumAllocPool* CMediumAllocPool::gMediumAllocPtr = nullptr;

CMediumAllocPool::CMediumAllocPool() {
  x18_lastNodePrev = x0_list.begin().get_node();
  gMediumAllocPtr = this;
}

void CMediumAllocPool::ClearPuddles() {
  x18_lastNodePrev = x0_list.end().get_node();
  x0_list.clear();
  gMediumAllocPtr = nullptr;
}

bool CMediumAllocPool::HasPuddles() const { return x0_list.size() != 0; }

void* CMediumAllocPool::Alloc(uint len) {
  SMediumAllocPuddle* puddle = x18_lastNodePrev->get_value();
  void* ret;
  uint blockCount = 1;
  if (len >= 32) {
    blockCount = (len + 31) / 32;
  }

  ret = puddle->FindFree(blockCount);

  if (ret == nullptr) {
    for (rstl::list< SMediumAllocPuddle >::iterator it = x0_list.begin(); it != x0_list.end();
         ++it) {
      if (it.get_node() == x18_lastNodePrev) {
        continue;
      }

      ret = it->FindFree(blockCount);
      if (ret != nullptr) {
        x18_lastNodePrev = it.get_node();
        break;
      }
    }
  }

  return ret;
}

int CMediumAllocPool::Free(const void* ptr) {
  rstl::list< SMediumAllocPuddle >::node* node = x0_list.begin().get_node();
  for (; node != x0_list.end().get_node(); node = node->get_next()) {
    SMediumAllocPuddle* puddle = node->get_value();
    if (puddle->GetPtrOffset(ptr) < puddle->GetNumEntries() * 32) {
      puddle->Free(ptr);
      if (node->get_value()->GetNumAllocs() == 0 && node->get_value()->CanErase()) {
        if (x18_lastNodePrev == node) {
          x18_lastNodePrev = x0_list.begin().get_node();
        }

        x0_list.erase(node);
      }

      return 2;
    }
  }
  return 1;
}

uint CMediumAllocPool::GetNumAllocs() {
  uint ret = 0;
  for (rstl::list< SMediumAllocPuddle >::iterator it = x0_list.begin(); it != x0_list.end(); ++it) {
    ret += it->GetNumAllocs();
  }

  return ret;
}
uint CMediumAllocPool::GetTotalEntries() {
  uint ret = 0;
  for (rstl::list< SMediumAllocPuddle >::iterator it = x0_list.begin(); it != x0_list.end(); ++it) {
    ret += it->GetNumEntries();
  }

  return ret;
}

uint CMediumAllocPool::GetNumBlocksAvailable() {
  uint ret = 0;
  for (rstl::list< SMediumAllocPuddle >::iterator it = x0_list.begin(); it != x0_list.end(); ++it) {
    ret += it->GetNumBlocks();
  }

  return ret;
}

/* this is such a hack... */
#pragma inline_max_size(250)
void CMediumAllocPool::AddPuddle(uint len, void* data, const bool unk) {
  x0_list.push_back(SMediumAllocPuddle(len, data, unk));
  x18_lastNodePrev = x0_list.end().get_node();
  x18_lastNodePrev = x18_lastNodePrev->get_prev();
}

SMediumAllocPuddle::SMediumAllocPuddle(const uint numBlocks, void* data, const bool canErase)
: x0_mainData(data)
, x8_bookKeeping((uchar*)data + numBlocks * 32)
, xc_cachedBookKeepingAddr(nullptr)
, x10_unused(-1)
, x14_numBlocks(numBlocks)
, x18_numAllocs(0)
, x1c_numEntries(numBlocks)
, x20_canErase(canErase) {
  SMediumAllocPuddle::InitBookKeeping(x8_bookKeeping, numBlocks);
}

SMediumAllocPuddle::~SMediumAllocPuddle() {}

void* SMediumAllocPuddle::FindFree(uint blockCount) {
  void* bookKeepingptr;
  uchar* entryPtr;
  void* ret;

  entryPtr = (uchar*)FindFreeEntry(blockCount);
  if (entryPtr == NULL) {
    return NULL;
  }

  bookKeepingptr = x8_bookKeeping;
  ret = x0_mainData.get();
  entryPtr[0] = (uchar)blockCount;
  ret = (void*)((uchar*)ret + ((uchar*)entryPtr - (uchar*)bookKeepingptr) * 0x20);
  entryPtr[blockCount - 1] = blockCount;
  x14_numBlocks -= blockCount;
  x18_numAllocs++;
  return ret;
}

void* SMediumAllocPuddle::FindFreeEntry(uint numBlocks) {
  if (GetNumBlocks() >= numBlocks) {
    uchar* cachedBookPtr = xc_cachedBookKeepingAddr;
    uchar* bookPtr = x8_bookKeeping;

    if (cachedBookPtr == nullptr) {
      cachedBookPtr = bookPtr;
    }

    uchar* ptr2 = bookPtr + GetNumEntries();
    uchar* ptr1 = cachedBookPtr;
    do {

      if ((*ptr1 & 0x80) == 0 || ptr1 == ptr2) {
        if (ptr1 == ptr2) {
          ptr1 = bookPtr;
        } else {
          ptr1 += *ptr1;
        }
      } else {
        uint offset = GetBlockOffset(ptr1, ptr2);

        if (offset >= numBlocks) {
          if ((ushort)(offset - numBlocks)) {
            SMediumAllocPuddle::InitBookKeeping(ptr1 + numBlocks, offset - numBlocks);
          }

          xc_cachedBookKeepingAddr = ptr1;
          return ptr1;
        }

        ptr1 += offset;

        if (ptr1 == cachedBookPtr) {
          break;
        }

        if (ptr1 == ptr2) {
          ptr1 = bookPtr;
        }
      }
    } while (ptr1 != cachedBookPtr);
  }
  return nullptr;
}

void SMediumAllocPuddle::Free(const void* ptr) {}

ushort SMediumAllocPuddle::GetBlockOffset(const void* ptr1, const void* ptr2) {
  unsigned char tmp = (uchar*)ptr2 - (uchar*)ptr1 > 1 ? ((uchar*)ptr1)[1] : 0;

  ushort x = tmp + (*(uchar*)(ptr1)&0x7f) * 0x100;
  if ((x & 0x6000) == 0) {
    return x;
  }
  return (x & 0x6000u) == 0x6000u ? 3 : (((x & 0x6000u) != 0x4000) ? 0 : 1) + 1;
}

void SMediumAllocPuddle::InitBookKeeping(uchar* bookKeepingPtr, ushort blockCount) {
  if (blockCount < 4) {
    uint tmp;
    if (blockCount == 3) {
      tmp = 96;
    } else {
      tmp = 32;

      if (blockCount == 2) {
        tmp = 64;
      }
    }

    tmp |= 0x80;
    bookKeepingPtr[0] = tmp & 0xFF;
    if (blockCount > 1) {
      bookKeepingPtr[blockCount - 1] = tmp & 0xFF;
    }
  } else {
    uchar tmp = (blockCount >> 8) | 0x80;
    bookKeepingPtr[0] = tmp & 0xFF;
    bookKeepingPtr[1] = blockCount;
    bookKeepingPtr[blockCount - 2] = blockCount;
    bookKeepingPtr[blockCount - 1] = tmp & 0xFF;
  }
}
