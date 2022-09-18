#ifndef _CARAMMANAGER_HPP
#define _CARAMMANAGER_HPP

#include "types.h"

class CARAMManager {
public:
  static void Shutdown();
  static void CollectGarbage();
  static void PreInitializeAlloc(uint size) { mPreInitializeAlloc += size; }
  static void Initialize(uint);

private:
  static u32 mPreInitializeAlloc;
};

#endif
