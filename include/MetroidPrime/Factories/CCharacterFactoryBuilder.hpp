#ifndef _CCHARACTERFACTORYBUILDER
#define _CCHARACTERFACTORYBUILDER

#include "types.h"

class CCharacterFactoryBuilder {
public:
  CCharacterFactoryBuilder();
  ~CCharacterFactoryBuilder();

private:
  u8 pad[0x24];
};

extern CCharacterFactoryBuilder* gpCharacterFactoryBuilder;

#endif // _CCHARACTERFACTORYBUILDER
