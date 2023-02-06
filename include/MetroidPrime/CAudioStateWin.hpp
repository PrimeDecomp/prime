#ifndef _CAUDIOSTATEWIN
#define _CAUDIOSTATEWIN

#include "types.h"

#include "MetroidPrime/CIOWin.hpp"

class CAudioStateWin : public CIOWin {
public:
  CAudioStateWin();

  ~CAudioStateWin() override;
  EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&) override;
};

#endif // _CAUDIOSTATEWIN
