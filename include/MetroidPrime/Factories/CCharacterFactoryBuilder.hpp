#ifndef _CCHARACTERFACTORYBUILDER
#define _CCHARACTERFACTORYBUILDER

#include "types.h"
#include <Kyoto/TToken.hpp>

class CAnimRes;
class CCharacterFactory;
class CCharacterFactoryBuilder {
public:
  CCharacterFactoryBuilder();
  ~CCharacterFactoryBuilder();
  TToken<CCharacterFactory> GetFactory(const CAnimRes& res);
private:
  uchar pad[0x24];
};

extern CCharacterFactoryBuilder* gpCharacterFactoryBuilder;

#endif // _CCHARACTERFACTORYBUILDER
