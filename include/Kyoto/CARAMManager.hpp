#ifndef _CARAMMANAGER_HPP
#define _CARAMMANAGER_HPP

#include "types.h"

class CARAMManager {
public:
  static void Shutdown();
  static void CollectGarbage();
};

#endif
