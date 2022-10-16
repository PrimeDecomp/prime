#ifndef _DOLPHIN_GBAPRIV
#define _DOLPHIN_GBAPRIV

#include "types.h"

#include <dolphin/gba.h>
#include <dolphin/os.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void (*GBATransferCallback)(s32 chan);

typedef struct GBASecParams {
  u8 data[0x40];
} GBASecParams;

typedef struct GBA {
  u8 command;
  u8 src[4];
  u8 dst[4];
  u8 _09;
  s8 _0a;
  s8 _0b;
  s32 _0c;
  s32 _10;
  u8* status;
  u8* buffer;
  GBACallback callback;
  s32 result;
  OSThreadQueue thread_queue;
  OSTime delay;
  GBATransferCallback _38;
  s32 _3c;
  s32 palette_color;
  s32 palette_speed;
  u8* program;
  s32 program_length;
  s32 jboot_status;
  GBACallback jboot_callback;
  char data2[0x74u - 0x58u];
  u8* challenge_cipher;
  char data3[0xf8 - 0x78u];
  GBASecParams* param;
  char data4[0x100u - 0xfcu];
} GBA;

extern GBA __GBA[4];
extern BOOL __GBAReset;

void __GBAHandler(s32 chan, u32 sr, OSContext* context);
void __GBASyncCallback(s32 chan, s32 ret);
s32 __GBASync(s32 chan);
OSTime __GBASetDelay(s32 chan, OSTime delay);
s32 __GBATransfer(s32 chan, s32 w1, s32 w2, GBATransferCallback callback);

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_GBAPRIV
