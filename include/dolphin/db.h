#ifndef _DOLPHIN_DB
#define _DOLPHIN_DB

#include "types.h"

#ifdef __cplusplus
extern "C" {
#endif

#define ExceptionHookDestination 0x80000048
#define IsDebuggerPresent 0x80000040

// static int __DBInterface;

struct DBInterface {
  u8 filler0[4];
  u32 unk4;
};

static struct DBInterface* __DBInterface;
static int DBVerbose;

void DBInit(void);
void DBInitComm(int* inputFlagPtr, int* mtrCallback);
static void __DBExceptionDestination(void);

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_DB
