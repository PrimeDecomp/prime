#ifndef _CSFXMANAGER_HPP
#define _CSFXMANAGER_HPP

#include "types.h"

#include "Kyoto/Audio/CSfxHandle.hpp"

class CSfxManager {
public:
  static void Update(f32 dt);
  static void RemoveEmitter(CSfxHandle handle);
};

#endif
