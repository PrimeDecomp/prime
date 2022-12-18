
#ifndef _DOLPHIN_OSEXCEPTION
#define _DOLPHIN_OSEXCEPTION

#include <dolphin/os/OSContext.h>
#include <dolphin/types.h>

#ifdef __cplusplus
extern "C" {
#endif
#define __OS_EXCEPTION_FLOATING_POINT       7

typedef u8 __OSException;
typedef void (*__OSExceptionHandler)(__OSException exception, OSContext* context);

#define OS_EXCEPTION_SAVE_GPRS(context)                                                            \
  stw r0, OS_CONTEXT_R0(context);                                                                  \
  stw r1, OS_CONTEXT_R1(context);                                                                  \
  stw r2, OS_CONTEXT_R2(context);                                                                  \
  stmw r6, OS_CONTEXT_R6(context);                                                                 \
  mfspr r0, GQR1;                                                                                  \
  stw r0, OS_CONTEXT_GQR1(context);                                                                \
  mfspr r0, GQR2;                                                                                  \
  stw r0, OS_CONTEXT_GQR2(context);                                                                \
  mfspr r0, GQR3;                                                                                  \
  stw r0, OS_CONTEXT_GQR3(context);                                                                \
  mfspr r0, GQR4;                                                                                  \
  stw r0, OS_CONTEXT_GQR4(context);                                                                \
  mfspr r0, GQR5;                                                                                  \
  stw r0, OS_CONTEXT_GQR5(context);                                                                \
  mfspr r0, GQR6;                                                                                  \
  stw r0, OS_CONTEXT_GQR6(context);                                                                \
  mfspr r0, GQR7;                                                                                  \
  stw r0, OS_CONTEXT_GQR7(context);

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_OSEXCEPTION
