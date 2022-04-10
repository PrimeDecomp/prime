#ifndef _CINGAMETWEAKMANAGER_HPP
#define _CINGAMETWEAKMANAGER_HPP

#include "types.h"

#include "rstl/string.hpp"

class CInGameTweakManager {
public:
  bool ReadFromMemoryCard(const rstl::string&);

private:
};

extern CInGameTweakManager* gpTweakManager;

#endif
