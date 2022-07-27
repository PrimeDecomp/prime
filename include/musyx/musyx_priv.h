#ifndef MUSYX_PRIV_H
#define MUSYX_PRIV_H

#include "musyx/musyx.h"

#ifdef __cplusplus
extern "C" {
#endif
typedef s32 (*SND_COMPARE)(u16*, u8*);

void dataInit(u32, s32);       /* extern */
void dataInitStack();          /* extern */
s32 hwInit(s32*, u8, u8, s32); /* extern */
void s3dInit(s32);             /* extern */
void seqInit();                /* extern */
void streamInit();             /* extern */
void synthInit(u32, u8);       /* extern */
void vsInit();                 /* extern */
void hwExit();
void dataExit();
void s3dExit();
void synthExit();
u32 synthGetTicksPerSecond(u32 seconds);
u16 sndRand(void);
s16 sndSin(u32 __x);
u8* sndBSearch(u16 *key,u8 *subTab,s32 mainTab,s32 len,SND_COMPARE cmp);
void sndConvertMs(u32* time);
void sndConvertTicks(u32* out, u32 seconds);
u32 sndConvert2Ms(u32 time);

extern SND_HOOKS salHooks;
#ifdef __cplusplus
}
#endif
#endif
