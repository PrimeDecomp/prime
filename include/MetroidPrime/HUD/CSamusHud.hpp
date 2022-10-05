#ifndef __CSAMUSHUD_HPP__
#define __CSAMUSHUD_HPP__

#include "MetroidPrime/HUD/CHUDMemoParms.hpp"

#include "rstl/string.hpp"

class CSamusHud {
public:
  static void DisplayHudMemo(const rstl::wstring& text, const CHUDMemoParms& info);
};

#endif // __CSAMUSHUD_HPP__
