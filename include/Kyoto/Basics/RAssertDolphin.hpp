#ifndef _RASSERTDOLPHIN
#define _RASSERTDOLPHIN

#include "types.h"

#include "dolphin/os.h"

#define BUILD_INFO_TAG "!#$MetroidBuildInfo!#$"
#define BUILD_TIME_DUMMY "PAD_PAD_PAD_PAD_PAD_PAD_PAD_PAD_PAD"
#define BUILD_INFO BUILD_INFO_TAG BUILD_TIME_DUMMY
#define BUILD_INFO_TAG_SIZE sizeof(BUILD_INFO_TAG) - 1

extern const char* BuildTime;
void rs_debugger_printf(const char* format, ...);
void ErrorHandler(OSError code, OSContext* context, int, int);
void SetErrorHandlers();

#endif // _RASSERTDOLPHIN
