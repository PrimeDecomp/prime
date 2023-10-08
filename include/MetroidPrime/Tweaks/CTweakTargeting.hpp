#ifndef _CTWEAKTARGETING
#define _CTWEAKTARGETING

#include "MetroidPrime/Tweaks/ITweakObject.hpp"

class CTweakTargeting : public ITweakObject, public TOneStatic<CTweakTargeting> {
public:
  CTweakTargeting(CInputStream& in);

private:
  uchar cls[0x224];
};

#endif // _CTWEAKTARGETING
