#ifndef _CSAMUSHUD
#define _CSAMUSHUD

#include "types.h"

#include "MetroidPrime/HUD/CHUDMemoParms.hpp"

#include "rstl/string.hpp"

class CSamusHud {
public:
  static void DisplayHudMemo(const rstl::wstring& text, const CHUDMemoParms& info);
  static void ClearHudMemo() {
    DisplayHudMemo(rstl::wstring_l(L""), CHUDMemoParms(0.f, true, true, true));
  }
};

#endif // _CSAMUSHUD
