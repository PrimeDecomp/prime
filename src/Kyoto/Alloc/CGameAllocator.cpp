#include <Kyoto/Alloc/CGameAllocator.hpp>

#include <Kyoto/Alloc/CCallStack.hpp>
#include <Kyoto/Alloc/CMediumAllocPool.hpp>
#include <Kyoto/Alloc/CSmallAllocPool.hpp>
#include <Kyoto/Basics/COsContext.hpp>
#include <Kyoto/Basics/CStopwatch.hpp>

/* Here just to make sure the data section matches */
static const char* string_NULL = "<NULL>";
static const char* string_SOURCE_MODULE_UNLOADED = "<SOURCE MODULE UNLOADED>";
static const char* string_ = "";
static int gAllocatorTime = 0;

template < typename U1, typename U2 >
static inline U1 T_round_up(U2 val, int align) {
  return (val + (align - 1)) & ~(align - 1);
}

CGameAllocator::SGameMemInfo* CGameAllocator::GetMemInfoFromBlockPtr(const void* ptr) const {
  return (SGameMemInfo*)((u8*)(ptr) - sizeof(SGameMemInfo));
}

CGameAllocator::CGameAllocator()
: x4_(0)
, x8_heapSize(0)
, xc_first(nullptr)
, x10_last(nullptr)
, x54_(0)
, x58_oomCallback(nullptr)
, x5c_oomTarget(nullptr)
, x60_smallAllocPool(nullptr)
, x64_smallAllocMainData(nullptr)
, x68_smallAllocBookKeeping(nullptr)
, x6c_(false)
, x70_(0)
, x74_mediumPool(nullptr)
, x80_(0)
, x84_(0)
, x88_(0)
, x8c_(0)
, x90_heapSize2(0)
, x94_(0)
, x98_(0)
, x9c_(0)
, xa0_(0)
, xa4_(0)
, xa8_(0)
, xac_(0)
, xb0_(0)
, xb4_physicalAddr(nullptr)
, xb8_fakeStatics(0)
, xbc_(0) {}

CGameAllocator::~CGameAllocator() {
  if (x74_mediumPool) {
    x74_mediumPool->ClearPuddles();
    FreeNormalAllocation(x74_mediumPool);
    x74_mediumPool = nullptr;
  }
}

bool CGameAllocator::Initialize(COsContext& ctx) {}

void CGameAllocator::Shutdown() {
  ReleaseAll();
  x4_ = 0;
  x54_ = 0;
}

void* CGameAllocator::Alloc(size_t size, EHint hint, EScope scope, EType type,
                            const CCallStack& callstack) {
  OSTick startTick = OSGetTick();

  if (hint & kHI_RoundUpLen) {
    size = T_round_up< size_t, size_t >(size, 32);
  }

  bool bVar1 = size <= 56 && !(hint & (kHI_RoundUpLen | kHI_TopOfHeap)) && x60_smallAllocPool;

  if (bVar1 && x70_ > 0) {
    bVar1 = false;
    --x70_;
  }

  if (bVar1) {
    void* buf = x60_smallAllocPool->Alloc(size);
    u32 tmp = x60_smallAllocPool->GetAllocatedSize();
    if (xac_ < tmp) {
      xac_ = tmp;
      static int sLastSmallAllocSize = 0;
      if (sLastSmallAllocSize + 128 < tmp) {
        sLastSmallAllocSize = tmp;
      }
    }

    if (buf != nullptr) {
      gAllocatorTime += (OSGetTick() - startTick);
      return buf;
    }
    x70_ = 25;
    x6c_ = true;
  }

  if (x74_mediumPool && size <= 0x400 && !(hint & kHI_TopOfHeap)) {
    void* buf = nullptr;
    if (!x74_mediumPool->HasPuddles()) {
      x74_mediumPool->AddPuddle(0x1000, x78_, 0);
      x78_ = nullptr;
    }

    buf = x74_mediumPool->Alloc(size);

    if (buf == nullptr) {
      buf = Alloc(0x21000, kHI_None, kSC_Unk1, kTP_Unk0,
                  CCallStack(-1, "MediumAllocMainData   ", " - Ignore"));
      x74_mediumPool->AddPuddle(0x1000, buf, 1);
      buf = x74_mediumPool->Alloc(size);
    }

    if (buf != nullptr) {
      gAllocatorTime += OSGetTick() - startTick;
      return buf;
    }

    if (!x7c_) {
      x74_mediumPool->GetTotalEntries();
      x74_mediumPool->GetNumAllocs();
      x74_mediumPool->GetNumBlocksAvailable();
    }
    x7c_ = true;
  }

  size_t roundedSize = T_round_up< size_t, size_t >(size, 32);
  SGameMemInfo* info = nullptr;

  if (hint & kHI_TopOfHeap) {
    info = FindFreeBlockFromTopOfHeap(roundedSize);
  } else {
    info = FindFreeBlock(roundedSize);
  }

  if (info == nullptr) {
    void* mediumBuf = nullptr;
    if (x58_oomCallback) {
      x58_oomCallback(x5c_oomTarget, size);
    }

    static bool bTriedCallback = false;
    if (!bTriedCallback) {
      bTriedCallback = true;
      mediumBuf = Alloc(size, hint, scope, type, callstack);
      bTriedCallback = false;
    } else {
      return nullptr;
    }

    if (mediumBuf == nullptr) {
      callstack.GetFileAndLineText();
      callstack.GetTypeText();
      DumpAllocations();
      return nullptr;
    }
    return mediumBuf;
  }

  uint tmp = FixupAllocPtrs(info, size, roundedSize, hint, callstack);
  if ((hint & kHI_TopOfHeap) != 0u && !info->IsAllocated()) {
    info = info->GetNext();
  }

  UpdateAllocDebugStats(size, roundedSize, tmp);
  gAllocatorTime += OSGetTick() - startTick;
  return ++info;
}

CGameAllocator::SGameMemInfo* CGameAllocator::FindFreeBlock(uint) {}

CGameAllocator::SGameMemInfo* CGameAllocator::FindFreeBlockFromTopOfHeap(uint size) {
  SGameMemInfo* iter = x10_last;
  SGameMemInfo* ret = nullptr;

  while (iter != nullptr) {
    if (!iter->IsAllocated() && iter->GetLength() >= size) {
      ret = iter;
      break;
    }
    iter = iter->GetPrev();
  }

  RemoveFreeEntryFromFreeList(ret);
  return ret;
}

uint CGameAllocator::FixupAllocPtrs(SGameMemInfo*, uint, uint, EHint, const CCallStack&) {}

void CGameAllocator::UpdateAllocDebugStats(uint len, uint roundedLen, uint offset) {
  ++x84_;
  ++x80_;
  x88_ += len;
  x8c_ += roundedLen + offset;
  x90_heapSize2 -= roundedLen + offset;

  if (x84_ > x94_) {
    x94_ = x84_;
  }

  if (x8c_ > x98_) {
    x98_ = x8c_;
  }

  if (len < x9c_) {
    x9c_ = len;
  }

  if (len > xa0_) {
    xa0_ = len;
  }
  xa4_ = (len + xa4_ * (x80_ - 1)) / x80_;
  if (len > 56) {
    return;
  }

  ++xa8_;
}

bool CGameAllocator::Free(const void* ptr) {
  if (ptr == nullptr) {
    return true;
  }

  if (x60_smallAllocPool && x60_smallAllocPool->PtrWithinPool(ptr)) {
    return x60_smallAllocPool->Free(ptr);
  }

  if (x74_mediumPool) {
    int tmp = x74_mediumPool->Free(ptr);
    if (tmp != 1) {
      return tmp > 0;
    }
  }
  return FreeNormalAllocation(ptr);
}

bool CGameAllocator::FreeNormalAllocation(const void*) { return true; };

void CGameAllocator::ReleaseAll() {
  if (x74_mediumPool) {
    x74_mediumPool->ClearPuddles();
    FreeNormalAllocation(x74_mediumPool);
    x74_mediumPool = nullptr;
  }

  SGameMemInfo* iter = xc_first;
  while (iter != nullptr) {
    SGameMemInfo* next = iter->GetNext();
    if (iter->IsAllocated()) {
      FreeNormalAllocation(((u8*)iter) + sizeof(SGameMemInfo));
    }
    iter = next;
  }

  xc_first = nullptr;
  x10_last = nullptr;
};

void* CGameAllocator::AllocSecondary(size_t size, EHint hint, EScope scope, EType type,
                                     const CCallStack& callstack) {
  Alloc(size, hint, scope, type, callstack);
};

bool CGameAllocator::FreeSecondary(const void* ptr) { return Free(ptr); };

void CGameAllocator::ReleaseAllSecondary(){};

void CGameAllocator::SetOutOfMemoryCallback(FOutOfMemoryCb cb, const void* target) {
  x58_oomCallback = cb;
  x5c_oomTarget = target;
};

IAllocator::SAllocInfo CGameAllocator::GetAllocInfo(const void* ptr) const {
  SGameMemInfo* info = GetMemInfoFromBlockPtr(ptr);

  return SAllocInfo((const void*)info, info->GetLength(), info->IsAllocated(), false,
                    info->x8_fileAndLine, info->xc_type);
};

IAllocator::SMetrics CGameAllocator::GetMetrics() const {
  u32 mediumAllocTotalAllocated =
      x74_mediumPool != nullptr ? x74_mediumPool->GetTotalEntries() * 32 : 0;
  u32 mediumAllocBlocksAvailable =
      x74_mediumPool != nullptr ? x74_mediumPool->GetNumBlocksAvailable() : 0;
  u32 mediumAllocAllocatedSize =
      x74_mediumPool != nullptr
          ? x74_mediumPool->GetTotalEntries() - x74_mediumPool->GetNumBlocksAvailable()
          : 0;
  u32 mediumAllocNumAllocs = x74_mediumPool != nullptr ? x74_mediumPool->GetNumAllocs() : 0;
  SMetrics ret(x8_heapSize, x80_, x84_, x88_, x8c_, x90_heapSize2, x94_, x98_, x9c_, xa0_, xa4_,
               x60_smallAllocPool != nullptr ? x60_smallAllocPool->GetNumAllocs() : 0,
               x60_smallAllocPool != nullptr ? x60_smallAllocPool->GetAllocatedSize() : 0,
               x60_smallAllocPool != nullptr ? x60_smallAllocPool->GetNumBlocksAvailable() : 0,
               mediumAllocNumAllocs, mediumAllocAllocatedSize, mediumAllocBlocksAvailable,
               x80_ - xb0_, (uint)xb4_physicalAddr, xbc_, mediumAllocTotalAllocated,
               xb8_fakeStatics);
  xb0_ = x80_;
  return ret;
};

int CGameAllocator::EnumAllocations(FEnumAllocationsCb func, const void* ptr, bool b) const {

  int i = 0;
  SGameMemInfo* iter = xc_first;

  while (iter != nullptr) {
    if (!iter->IsPostGuardIntact()) {
      return -1;
    }

    if (!iter->IsPriorGuardIntact()) {
      return -1;
    }

    SGameMemInfo* next = iter->GetNext();
    SAllocInfo alloc((const void*)iter, iter->GetLength(), iter->IsAllocated(), false,
                     iter->x8_fileAndLine, iter->xc_type);
    func(alloc, ptr);
    ++i;
    iter = next;
  }

  return i;
};

uint CGameAllocator::GetFreeBinEntryForSize(uint size) {
  uint maxLen = 0x20;
  uint bin = 0;

  while (maxLen < 0x200000) {
    if (size < maxLen) {
      return bin;
    }

    maxLen <<= 1;
    ++bin;
  }

  return 0xf;
}

void CGameAllocator::AddFreeEntryToFreeList(SGameMemInfo* info) {
  uint bin = GetFreeBinEntryForSize(info->GetLength());
  info->SetNextFree(x14_bins[bin]);
  x14_bins[bin] = info;
}

void CGameAllocator::RemoveFreeEntryFromFreeList(SGameMemInfo* memInfo) {
  u32 bin = GetFreeBinEntryForSize(memInfo->GetLength());
  SGameMemInfo* curBin = nullptr;
  SGameMemInfo* binIt = x14_bins[bin];

  while (binIt != nullptr) {
    if (binIt == memInfo) {
      if (curBin == nullptr) {
        x14_bins[bin] = binIt->GetNextFree();
      } else {
        curBin->SetNextFree(binIt->GetNextFree());
      }
      return;
    }

    curBin = binIt;
    binIt = binIt->GetNextFree();
  }
}

static inline bool DoWait(int v) { return (v % 4) == 0; }

void CGameAllocator::DumpAllocations() const {
  GetLargestFreeChunk();
  u32 i = 0;
  SGameMemInfo* iter = xc_first;

  while (iter != nullptr) {
    ++i;

    if (DoWait(i)) {
      CStopwatch::Wait(0.005f);
    }
    iter = iter->GetNext();
  }
}

size_t CGameAllocator::GetLargestFreeChunk() const {
  SGameMemInfo* iter = xc_first;
  size_t ret = 0;
  while (iter != nullptr) {
    if (!iter->IsAllocated() && iter->GetLength() > ret) {
      ret = iter->GetLength();
    }
    iter = iter->GetNextFree();
  }

  return ret;
}
void CGameAllocator::OffsetFakeStatics(int offset) { xb8_fakeStatics += offset; }
