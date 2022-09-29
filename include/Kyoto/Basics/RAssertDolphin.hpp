#ifndef _RASSERTDOLPHIN_HPP
#define _RASSERTDOLPHIN_HPP

#include "types.h"

#include "dolphin/os.h"

void rs_debugger_printf(const char * format, ...);
void ErrorHandler(OSError code, OSContext * context, ...);
void SetErrorHandlers();

#endif
