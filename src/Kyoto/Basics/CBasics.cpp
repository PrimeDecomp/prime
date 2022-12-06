#include "Kyoto/Basics/CBasics.hpp"

#include  <stdio.h>
#include "stdarg.h"

char* CBasics::Stringize(const char* fmt, ...) {
  static char stringize_Buffer[512];

  va_list args;

  va_start(args, fmt);
  vsprintf(stringize_Buffer, fmt, args);
  va_end(args);
  
  return stringize_Buffer;
}
