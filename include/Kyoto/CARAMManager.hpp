#ifndef _CARAMMANAGER
#define _CARAMMANAGER

#include "types.h"

#include <dolphin/arq.h>

#include <rstl/list.hpp>

class CARAMManager {
public:
  enum EDMAPriority {
    kDMAPrio_Zero,
    kDMAPrio_One,
    kDMAPrio_Two,
    kDMAPrio_Three,
    kDMAPrio_Four,
    kDMAPrio_Five,
    kDMAPrio_Six,
  };

  static bool Initialize(uint);
  static void Shutdown();
  static void* Alloc(uint len);
  static uint FindFreeBlocks(uint, uint, uint);
  static bool Free(const void* ptr);
  static uint DMAToARAM(void*, void*, uint, EDMAPriority);
  static int DMAToMRAM(void*, void*, uint, EDMAPriority);
  static bool IsDMACompleted(uint handle);
  static void WaitForDMACompletion(uint handle);
  static void WaitForAllDMAsToComplete();
  static bool CancelDMA(uint);
  static void AramManagerDMACallback(u32 result);
  static void RefreshActiveDMAList();
  static void CollectGarbage();

  static void PreInitializeAlloc(uint size) { mPreInitializeAlloc += size; }
  static const void* GetInvalidAlloc() { return (const void*)kInvalidAlloc; }
  static const uint GetInvalidDMAHandle() { return kInvalidHandle; }
  static uint GetAndIncrementUniqueID() {
    mDMAUniqueID++;
    if (mDMAUniqueID == GetInvalidDMAHandle()) {
      mDMAUniqueID++;
    }
    return mDMAUniqueID;
  }

private:
  struct SAramDMARequest {
    ARQRequest mRequest;
    uint mUniqueID;
    bool mComplete;
    
  };

  static bool mbInitialized;
  static u32 mpARAMStart;
  static uint mChunkSize;
  static uint mNumChunks;
  static uint* mpBookKeepingMemory;
  static uint mPreInitializeAlloc;
  static uint mDMAUniqueID;
  static uint mChunksAllocated;
  static rstl::list< SAramDMARequest* > mActiveDMAs;
  static const int kInvalidAlloc;
  static const int kInvalidHandle;
};

#endif // _CARAMMANAGER
