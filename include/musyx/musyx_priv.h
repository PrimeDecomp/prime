#ifndef MUSYX_PRIV_H
#define MUSYX_PRIV_H

#include "musyx/musyx.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _SynthInfo {
  u32 freq;
  u8 unk[0x20c];
  u8 voices;
  u8 music;
  u8 sfx;
  u8 studios;
} SynthInfo;

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
u8* sndBSearch(u16* key, u8* subTab, s32 mainTab, s32 len, SND_COMPARE cmp);
void sndConvertMs(u32* time);
void sndConvertTicks(u32* out, u32 seconds);
u32 sndConvert2Ms(u32 time);

void hwDeactivateStudio(u8);
u32 hwIsActive(s32);

extern SND_HOOKS salHooks;

/* Math */
void salApplyMatrix(const SND_FMATRIX* a, const SND_FVECTOR* b, SND_FVECTOR* out);
float salNormalizeVector(SND_FVECTOR* vec);
void salCrossProduct(SND_FVECTOR* out, const SND_FVECTOR* a, const SND_FVECTOR* b);
void salInvertMatrix(SND_FMATRIX* out, const SND_FMATRIX* in);

/* hardware */
/* TODO: Figure out what `unk` is */
bool hwAddInput(u8 studio, void* unk);
bool hwRemoveInput(u8 studio, void* unk);
#ifdef __cplusplus
}
#endif
#endif
