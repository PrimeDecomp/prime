#ifndef _CTWEAKGAME_HPP
#define _CTWEAKGAME_HPP

#include "types.h"

#include "rstl/string.hpp"

class CTweakGame {
public:
  const rstl::string& GetWorldPrefix() { return x4_worldPrefix; }

private:
  uint x0_;
  rstl::string x4_worldPrefix;
};

extern CTweakGame* gpTweakGame;

#endif
