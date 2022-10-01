#ifndef _CAUDIOSTATEWIN_HPP
#define _CAUDIOSTATEWIN_HPP

#include "types.h"

#include "MetroidPrime/CIOWin.hpp"

class CAudioStateWin : public CIOWin {
public:
  CAudioStateWin();

  ~CAudioStateWin() override;
  EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&) override;
};

#endif
