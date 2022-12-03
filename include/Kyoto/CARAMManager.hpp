#ifndef _CARAMMANAGER
#define _CARAMMANAGER

#include "types.h"

class CARAMManager {
public:
  static void Shutdown();
  static void CollectGarbage();
  static void PreInitializeAlloc(uint size) { mPreInitializeAlloc += size; }
  static void Initialize(uint);
  static void WaitForAllDMAsToComplete();
  static void* GetInvalidAlloc() { return kInvalidAlloc; }
  static uint GetInvalidDMAHandle() { return kInvalidHandle; }
  static bool CancelDMA(uint);
  static void WaitForDMACompletion(uint);
  static void Free(const void* ptr);

private:
  static uint mPreInitializeAlloc;
  static void* kInvalidAlloc;
  static int kInvalidHandle;
};

#endif // _CARAMMANAGER
