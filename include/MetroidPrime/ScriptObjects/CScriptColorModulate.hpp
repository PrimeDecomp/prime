#ifndef _CSCRIPTCOLORMODULATE
#define _CSCRIPTCOLORMODULATE

#include "types.h"

#include "MetroidPrime/CEntity.hpp"

class CScriptColorModulate : public CEntity {
public:
  // TODO

  static TUniqueId FadeOutHelper(CStateManager& mgr, TUniqueId obj, float fadetime);
  static TUniqueId FadeInHelper(CStateManager& mgr, TUniqueId obj, float fadetime);

private:
  // TODO
};

#endif // _CSCRIPTCOLORMODULATE
