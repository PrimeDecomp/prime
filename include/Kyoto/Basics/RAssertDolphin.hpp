#ifndef _RASSERTDOLPHIN
#define _RASSERTDOLPHIN

#include "types.h"

#include "dolphin/os.h"

void rs_debugger_printf(const char* format, ...);
void ErrorHandler(OSError code, OSContext* context, int, int);
void SetErrorHandlers();

#endif // _RASSERTDOLPHIN
