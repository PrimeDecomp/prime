#ifndef _CANIMSYSCONTEXT
#define _CANIMSYSCONTEXT

#include "Kyoto/TToken.hpp"

#include "rstl/rc_ptr.hpp"

class CTransitionDatabaseGame;
class CRandom16;
class CSimplePool;

class CAnimSysContext {
public:
  CAnimSysContext(const TToken< CTransitionDatabaseGame >& transDb,
                  const rstl::ncrc_ptr< CRandom16 >& random, CSimplePool& store)
  : x0_transDb(transDb), x8_random(random), xc_store(store) {}

private:
  TToken< CTransitionDatabaseGame > x0_transDb;
  rstl::rc_ptr< CRandom16 > x8_random;
  CSimplePool& xc_store;
};

#endif // _CANIMSYSCONTEXT
