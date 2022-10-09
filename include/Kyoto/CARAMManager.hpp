#ifndef _CARAMMANAGER
#define _CARAMMANAGER

#include "types.h"

class CARAMManager {
public:
  static void Shutdown();
  static void CollectGarbage();
  static void PreInitializeAlloc(uint size) { mPreInitializeAlloc += size; }
  static void Initialize(uint);

private:
  static uint mPreInitializeAlloc;
};

#endif // _CARAMMANAGER
