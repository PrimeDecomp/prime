
#include "Kyoto/Basics/RAssertDolphin.hpp"

#include "dolphin/os/OSMemory.h"
#include "dolphin/ai.h"
#include "dolphin/vi.h"
#include <stdio.h>

extern "C" {
    void FUN_80003100(int, int, int);
    void FUN_803816b4(int);
    void FUN_80362ec4(void*);
    void FUN_80377858(int, int);
}


static char rs_debugger_buffer[1024];
static int rs_debugger_buffer_size;

void rs_debugger_printf(const char *format, ...) {
    va_list arg;

    va_start(arg, format);
    rs_debugger_buffer_size = vsprintf(rs_debugger_buffer, format, arg);
    va_end(arg);

    OSContext context;
    OSSaveContext(&context);
    ErrorHandler(0xff, &context, 0, 0xd1dd0d1e);
}

void ErrorHandler(OSError code, OSContext * context, int arg1, int arg2) {
    uint loopExitCriteria;
    OSContext newContext;

    if (code != 15 || ((arg1 & 0x10) == 0 && (arg2 < 0x1800001))) {
        OSProtectRange(3, 0, 0, 3);
        FUN_80003100(0x81200000, 0, 0x280);
        DCFlushRange((void*)0x81200000, 0x280);
        FUN_803816b4(0);
        AIInitDMA(0x81200000,0x280);
        AIStartDMA();
        FUN_80362ec4(NULL);
        loopExitCriteria = 0;
        FUN_80377858(0,0);
        VISetBlack(1);
        VIFlush();
        OSClearContext(&newContext);
        OSSetCurrentContext(&newContext);
    }
}

void SetErrorHandlers() {
  OSSetErrorHandler(2, ErrorHandler);
  OSSetErrorHandler(3, ErrorHandler);
  OSSetErrorHandler(5, ErrorHandler);
  OSSetErrorHandler(15, ErrorHandler);
}