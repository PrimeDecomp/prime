
#include "Kyoto/Basics/RAssertDolphin.hpp"

#include "dolphin/ai.h"
#include "dolphin/os/OSMemory.h"
#include "dolphin/pad.h"
#include "dolphin/vi.h"
#include <stdio.h>

static const char* buildTime = "Build v1.088 10/29/2002 2:21:25";
static char rs_debugger_buffer[1024];
static int rs_debugger_buffer_size;
static char DAT_805a9248;

void rs_debugger_printf(const char* format, ...) {
  va_list arg;

  va_start(arg, format);
  rs_debugger_buffer_size = vsprintf(rs_debugger_buffer, format, arg);
  va_end(arg);

  OSContext context;
  OSSaveContext(&context);
  ErrorHandler(0xff, &context, 0, 0xd1dd0d1e);
}

void ErrorHandler(OSError code, OSContext* context, int arg1, int arg2) {
  uint loopExitCriteria;
  OSContext newContext;
  PADStatus pads[4];
  uint local_60;

  if (code != 15 || ((arg1 & 0x10) == 0 && (arg2 < 0x1800001))) {
    OSProtectRange(3, 0, 0, 3);
    loopExitCriteria = 0;
    PADControlMotor(0, 0);
    VISetBlack(1);
    VIFlush();
    while (loopExitCriteria < 4) {
      PADRead(pads);
      if (pads[1].err == 0) {
        local_60 = 0x2010408;
        if ((pads[1].button & 0xc10) == 0xc10) {
          if ((pads[1].button & 0xf) != 0) {
            if (pads[1].button & loopExitCriteria == 0) { // TODO: wrong logic with loopExitCriteria
              if ((loopExitCriteria != 0) &&
                  pads[1].button == 0) { // TODO: wrong logic with pads[1].button
                loopExitCriteria = 0;
              }
            } else {
              loopExitCriteria += 1;
            }
          }
        } else {
          loopExitCriteria = 0;
        }
      }
    }
    VISetBlack(0);
    VIFlush();
    OSReport("Unhandled exception %d - Production\n", code);
    OSReport("%s\n", buildTime);
    OSReport("------------------------- Context 0x%08x -------------------------\n", context);

    int i = 0;
    do {
      OSReport("r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n", i, context->gpr[i],
               context->gpr[i], i + 0x10, context->gpr[i + 0x10], context->gpr[i + 0x10]);
      i += 1;
    } while (i < 0x10);

    OSReport("LR   = 0x%08x                   CR   = 0x%08x\n", context->lr, context->cr);
    OSReport("SRR0 = 0x%08x                   SRR1 = 0x%08x\n", context->srr0, context->srr1);
    OSReport("DSISR= 0x%08x                   DAR  = 0x%08x\n", arg1, arg2);

    if (rs_debugger_buffer_size == 0) {
      i = sprintf(rs_debugger_buffer, "Exception %d - Production\n", code);
    } else {
      i = sprintf(rs_debugger_buffer + rs_debugger_buffer_size, " - Production\n");
    }
    int j = sprintf(rs_debugger_buffer + rs_debugger_buffer_size + i, "%s\n", buildTime);
    int bufferIndex = rs_debugger_buffer_size + i + j;
    bufferIndex +=
        sprintf(rs_debugger_buffer + bufferIndex, "IP: 0x%8.8x  Mem: 0x%8.8x", context->srr0, arg2);
    if (code == 0xf) {
      bufferIndex += sprintf(rs_debugger_buffer + bufferIndex, " - %d", arg1);
    }
    bufferIndex += sprintf(rs_debugger_buffer + bufferIndex, "\n\n");

    OSReport("\nAddress:      Back Chain    LR Save\n");

    u32 stackPtr = context->gpr[1];
    bool check;
    i = 0;
    while (true) {
      if (((stackPtr == NULL) || (stackPtr == 0xffffffff)) || (check = 0xf < i, i += 1, check)) {
        break;
      }
      if ((stackPtr < 0x80000401) || (0x817fffff < stackPtr)) {
        OSReport("0x%08x:   BAD PTR\n", stackPtr);
        sprintf(rs_debugger_buffer + j, "0x%08x: BAD PTR\n", stackPtr);
        break;
      }
      u32* asPtr = (u32*)stackPtr;

      OSReport("0x%08x:   0x%08x    0x%08x\n", stackPtr, *asPtr, asPtr[1]);
      bufferIndex +=
          sprintf(rs_debugger_buffer + j, "0x%08x: 0x%08x 0x%08x\n", stackPtr, *asPtr, asPtr[1]);
      stackPtr = *asPtr;
    }
    OSReport("\nInstruction at 0x%x (read from SRR0) attempted to access invalid address 0x%x "
             "(read from DAR)\n",
             context->srr0, arg2);

    if (DAT_805a9248 == '\0') {
      GXColor fg; // = &DAT_80000000;
      GXColor bg; // = 0xffffff00;
      OSFatal(fg, bg, rs_debugger_buffer);
    }
  }
}

void SetErrorHandlers() {
  OSSetErrorHandler(2, (OSErrorHandler*)ErrorHandler);
  OSSetErrorHandler(3, (OSErrorHandler*)ErrorHandler);
  OSSetErrorHandler(5, (OSErrorHandler*)ErrorHandler);
  OSSetErrorHandler(15, (OSErrorHandler*)ErrorHandler);
}
