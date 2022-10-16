#ifndef _DOLPHIN_GBAPRIV
#define _DOLPHIN_GBAPRIV

#include "types.h"

#include <dolphin/gba.h>
#include <dolphin/os.h>

#ifdef __cplusplus
extern "C" {
#endif
typedef struct GBASecParams {
  u8 data[0x40];
} GBASecParams;

typedef struct GBA {
  u8 command;
  u8 src[4];
  u8 _05;
  u8 _06;
  s8 _07;
  s8 _08;
  s8 _09;
  s8 _0a;
  s8 _0b;
  s32 _0c;
  s32 _10;
  u8* status;
  u8* buffer;
  GBACallback callback;
  s32 result;
  OSThreadQueue thread_queue;
  OSTime poll_time;
  char data1[0x40u - 0x38u];
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

void __GBASyncCallback(s32 chan, s32 ret);
s32 __GBASync(s32 chan);

#ifdef __cplusplus
}
#endif

#endif // _DOLPHIN_GBAPRIV
