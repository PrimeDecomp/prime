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
    u32 x0_heapSize;
    u32 x4_;
    u32 x8_;
    u32 xc_;
    u32 x10_;
    u32 x14_heapSize2; // Remaining heap size?
    u32 x18_;
    u32 x1c_;
    u32 x20_;
    u32 x24_;
    u32 x28_;
    u32 x2c_smallNumAllocs;
    u32 x30_smallAllocatedSize;
    u32 x34_smallRemainingSize;
    u32 x38_mediumNumAllocs;
    u32 x3c_mediumAllocatedSize;
    u32 x40_mediumBlocksAvailable;
    u32 x44_;
    u32 x48_;
    u32 x4c_;
    u32 x50_mediumTotalAllocated;
    u32 x54_fakeStatics;
    SMetrics(u32 heapSize, u32 unk1, u32 unk2, u32 unk3, u32 unk4, u32 heapSize2, u32 unk5, u32 unk6, u32 unk7, u32 unk8, u32 unk9,
             u32 smallAllocNumAllocs, u32 smallAllocAllocatedSize, u32 smallAllocRemainingSize, u32 mediumAllocNumAllocs,
             u32 mediumAllocAllocatedSize, u32 mediumAllocBlocksAvailable, u32 unk10, u32 unk11, u32 unk12, u32 mediumAllocTotalAllocated,
             u32 fakeStatics);
  };

  struct SAllocInfo {
    void* x0_infoPtr;
    u32 x4_len;
    bool x8_hasPrevious;
    bool x9_;
    const char* xc_fileAndLne;
    const char* x10_type;
  };

  typedef const bool (*FOutOfMemoryCb)(void*, u32);
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
  virtual void OffsetFakeStatics(s32 offset) = 0;
  virtual SMetrics GetMetrics() const = 0;
};

#endif
