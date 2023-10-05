
#include "Kyoto/Basics/RAssertDolphin.hpp"

#include "dolphin/ai.h"
#include "dolphin/os/OSMemory.h"
#include "dolphin/pad.h"
#include "dolphin/vi.h"

#include <stdarg.h>
#include <stdio.h>

static bool CallFatal = false;
static char rs_debugger_buffer[1024];
static int rs_debugger_buffer_size;
static const GXColor bg = {128, 0, 0, 0};
static const GXColor fg = {255, 255, 255, 0};
static const uchar ExitButtons[4] = {PAD_BUTTON_RIGHT, PAD_BUTTON_LEFT, PAD_BUTTON_DOWN,
                                     PAD_BUTTON_UP};

static void hack() {
  static const char* tmp1 = "%s\0\n";
  static const char* tmp2 = "0x%08x: 0x%08x 0x%08x";
}

void ErrorHandler(OSError code, OSContext* context, int dsisr, int dar) {
  OSContext newContext;
  uint loopExitCriteria;
  PADStatus pads[4];
  uchar local_60[4];
  u32* gpr;
  uint i;
  uint len;

  if (code == 15 && ((dsisr & 0x10) != 0 || ((uint)dar > 0x1800000))) {
    return;
  }

  OSProtectRange(3, 0, 0, 3);
  loopExitCriteria = 0;
  PADControlMotor(0, 0);
  VISetBlack(1);
  VIFlush();

#if VERSION >= 1
  OSClearContext(&newContext);
  OSSetCurrentContext(&newContext);
  OSEnableInterrupts();
#endif

  while (loopExitCriteria < 4) {
    PADRead(pads);

#if VERSION >= 1
    while (pads[1].err == PAD_ERR_NO_CONTROLLER) {
      PADReset(PAD_CHAN1_BIT);
      PADRead(pads);
    }
#endif

    if (pads[1].err == PAD_ERR_NONE) {
      *(uint*)local_60 = *(uint*)ExitButtons;
      if ((pads[1].button & 0xc10) == 0xc10) {
        if ((pads[1].button & 0xf) != 0) {
          if ((pads[1].button & local_60[loopExitCriteria]) != 0) {
            loopExitCriteria += 1;

          } else if ((loopExitCriteria != 0) &&
                     ((pads[1].button & local_60[loopExitCriteria - 1]) == 0)) {
            loopExitCriteria = 0;
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
  OSReport("%s\n", BuildTime);
  OSReport("------------------------- Context 0x%08x -------------------------\n", context);

  for (i = 0; i < 16; ++i) {
    OSReport("r%-2d  = 0x%08x (%14d)  r%-2d  = 0x%08x (%14d)\n", i, context->gpr[i],
             context->gpr[i], i + 0x10, context->gpr[i + 0x10], context->gpr[i + 0x10]);
  }

  OSReport("LR   = 0x%08x                   CR   = 0x%08x\n", context->lr, context->cr);
  OSReport("SRR0 = 0x%08x                   SRR1 = 0x%08x\n", context->srr0, context->srr1);
  OSReport("DSISR= 0x%08x                   DAR  = 0x%08x\n", dsisr, dar);

  len = rs_debugger_buffer_size;
  if (rs_debugger_buffer_size != 0) {
    len += sprintf(rs_debugger_buffer + rs_debugger_buffer_size, " - Production\n");
  } else {
    len += sprintf(rs_debugger_buffer, "Exception %d - Production\n", code);
  }

  len += sprintf(rs_debugger_buffer + len, "%s\n", BuildTime);
  len += sprintf(rs_debugger_buffer + len, "IP: 0x%8.8x  Mem: 0x%8.8x", context->srr0, dar);

  if (code == 15) {
    len += sprintf(rs_debugger_buffer + len, " - %d", dsisr);
  }

  len += sprintf(rs_debugger_buffer + len, "\n\n");

  OSReport("\nAddress:      Back Chain    LR Save\n");
  gpr = (u32*)context->gpr[1];
  for (i = 0; gpr != NULL && gpr != (void*)0xFFFFFFFF && i++ < 16;) {
    if (gpr > (void*)0x80000400 && gpr < (void*)0x81800000) {
      OSReport("0x%08x:   0x%08x    0x%08x\n", gpr, *gpr, gpr[1]);
      len += sprintf(rs_debugger_buffer + len, "0x%08x: 0x%08x 0x%08x\n", gpr, *gpr, gpr[1]);
    } else {
      OSReport("0x%08x:   BAD PTR\n", gpr);
      sprintf(rs_debugger_buffer + len, "0x%08x: BAD PTR\n", gpr);
      break;
    }
    gpr = (u32*)*gpr;
  }

  OSReport("\nInstruction at 0x%x (read from SRR0) attempted to access invalid address 0x%x (read "
           "from DAR)\n",
           context->srr0, dar);
  if (!CallFatal) {
    OSFatal(fg, bg, rs_debugger_buffer);
  }
}

void SetErrorHandlers() {
  OSSetErrorHandler(2, (OSErrorHandler)ErrorHandler);
  OSSetErrorHandler(3, (OSErrorHandler)ErrorHandler);
  OSSetErrorHandler(5, (OSErrorHandler)ErrorHandler);
  OSSetErrorHandler(15, (OSErrorHandler)ErrorHandler);
}

void rs_debugger_printf(const char* format, ...) {
  va_list arg;

  va_start(arg, format);
  rs_debugger_buffer_size = vsprintf(rs_debugger_buffer, format, arg);
  va_end(arg);

  OSContext context;
  OSSaveContext(&context);
  ErrorHandler(0xff, &context, 0, 0xd1dd0d1e);
}
