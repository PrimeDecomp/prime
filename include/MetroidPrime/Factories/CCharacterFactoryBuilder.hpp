#ifndef _CCHARACTERFACTORYBUILDER_HPP
#define _CCHARACTERFACTORYBUILDER_HPP

#include "types.h"

class CCharacterFactoryBuilder {
public:
  ~CCharacterFactoryBuilder();

private:
  u8 pad[0x24];
};

extern CCharacterFactoryBuilder* gpCharacterFactoryBuilder;

#endif
