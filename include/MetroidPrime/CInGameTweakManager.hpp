#ifndef _CINGAMETWEAKMANAGER_HPP
#define _CINGAMETWEAKMANAGER_HPP

#include "types.h"

#include "rstl/string.hpp"

class CInGameTweakManager {
public:
  CInGameTweakManager();

  bool ReadFromMemoryCard(const rstl::string&);

private:
  u8 pad[0x10];
};

extern CInGameTweakManager* gpTweakManager;

#endif
