#ifndef _CSAMUSHUD
#define _CSAMUSHUD

#include "types.h"

#include "MetroidPrime/HUD/CHUDMemoParms.hpp"

#include "rstl/string.hpp"

class CSamusHud {
public:
  static void DisplayHudMemo(const rstl::wstring& text, const CHUDMemoParms& info);
};

#endif // _CSAMUSHUD
