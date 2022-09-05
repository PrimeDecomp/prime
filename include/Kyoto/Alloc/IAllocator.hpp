#ifndef _IALLOCATOR_HPP
#define _IALLOCATOR_HPP

#include "Kyoto/Alloc/CMemory.hpp"
#include "types.h"

class COsContext;
class CCallStack;

class IAllocator {
public:
  enum EHint {
    kHI_Unk = (1 << 0),
    kHI_RoundUpLen = (1 << 1),
  };
  enum EScope {
    kSC_Unk0,
  };
  enum EType { kTP_Unk0 };

  struct SMetrics {
    uint x0_heapSize;
    uint x4_;
    uint x8_;
    uint xc_;
    uint x10_;
    uint x14_heapSize2; // Remaining heap size?
    uint x18_;
    uint x1c_;
    uint x20_;
    uint x24_;
    uint x28_;
    uint x2c_smallNumAllocs;
    uint x30_smallAllocatedSize;
    uint x34_smallRemainingSize;
    uint x38_mediumNumAllocs;
    uint x3c_mediumAllocatedSize;
    uint x40_mediumBlocksAvailable;
    uint x44_;
    uint x48_;
    uint x4c_;
    uint x50_mediumTotalAllocated;
    uint x54_fakeStatics;
    SMetrics(uint heapSize, uint unk1, uint unk2, uint unk3, uint unk4, uint heapSize2, uint unk5, uint unk6, uint unk7, uint unk8, uint unk9,
             uint smallAllocNumAllocs, uint smallAllocAllocatedSize, uint smallAllocRemainingSize, uint mediumAllocNumAllocs,
             uint mediumAllocAllocatedSize, uint mediumAllocBlocksAvailable, uint unk10, uint unk11, uint unk12, uint mediumAllocTotalAllocated,
             uint fakeStatics);
  };

  struct SAllocInfo {
    void* x0_infoPtr;
    uint x4_len;
    bool x8_hasPrevious;
    bool x9_;
    const char* xc_fileAndLne;
    const char* x10_type;
  };

  typedef const bool (*FOutOfMemoryCb)(void*, uint);
  typedef const bool (*FEnumAllocationsCb)(const SAllocInfo& info, const void* ptr);
  virtual ~IAllocator();

  virtual bool Initialize(COsContext& ctx) = 0;
  virtual void Shutdown() = 0;
  virtual void* Alloc(unsigned long size, EHint hint, EScope scope, EType type, const CCallStack& cs) = 0;
  virtual void Free(const void* ptr) = 0;
  virtual void ReleaseAll() = 0;
  virtual void* AllocSecondary(unsigned long size, EHint hint, EScope scope, EType type, const CCallStack& cs) = 0;
  virtual void FreeSecondary(const void* ptr) = 0;
  virtual void ReleaseAllSecondary() = 0;
  virtual void SetOutOfMemoryCallback(FOutOfMemoryCb cb, const void* data) = 0;
  virtual void EnumAllocations(FEnumAllocationsCb func, const void* ptr, bool b) const = 0;
  virtual SAllocInfo GetAllocInfo(const void* ptr) const = 0;
  virtual void OffsetFakeStatics(int offset) = 0;
  virtual SMetrics GetMetrics() const = 0;
};

#endif
