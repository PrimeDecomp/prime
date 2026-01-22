#ifndef _CTWEAKS
#define _CTWEAKS

#include "Kyoto/CResFactory.hpp"
#include "types.h"

#include "rstl/auto_ptr.hpp"
#include "rstl/reserved_vector.hpp"

class ITweakObject;
class CTweakPlayerControl;

class CTweaks {
public:
  CTweaks();
  ~CTweaks();

  void RegisterResourceTweaks();
  void RegisterTweaks();
private:
  rstl::reserved_vector< rstl::auto_ptr< ITweakObject >, 14 > mTweakObjects;
};
CHECK_SIZEOF(CTweaks, 0x74)

extern CTweakPlayerControl* gpTweakPlayerControlCurrent;
extern CTweakPlayerControl* gpTweakPlayerControl1;
extern CTweakPlayerControl* gpTweakPlayerControl2;

#endif // _CTWEAKS
