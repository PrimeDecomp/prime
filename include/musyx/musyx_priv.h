#ifndef _MUSYX_MUSYX_PRIV
#define _MUSYX_MUSYX_PRIV

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

typedef struct DSPVoice {
  char data1[0x18];
  u32 _18;
  u32 priority;
  u32 _20;
  u32 flags[5];
  char data2[0x70 - 0x38];
  u16 sampleId;
  u16 _72;
  char data3[0x90 - 0x74];
  u32 sampleType;
  char data4[0xec - 0x94];
  u8 active;
  char data5[0xf0 - 0xed];
  u32 itdFlags;
} DSPVoice;

extern DSPVoice* dspVoice;
typedef s32 (*SND_COMPARE)(u16*, u8*);

void dataInit(u32, s32);                                       /* extern */
void dataInitStack();                                          /* extern */
s32 hwInit(u32* rate, u8 numVoices, u8 numStudios, u32 flags); /* extern */
void s3dInit(s32);                                             /* extern */
void seqInit();                                                /* extern */
void streamInit();                                             /* extern */
void synthInit(u32, u8);                                       /* extern */
void vsInit();                                                 /* extern */
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
bool hwIsActive(s32);

extern SND_HOOKS salHooks;
extern u8 sndActive;
extern s8 synthIdleWaitActive;
extern SynthInfo synthInfo;
typedef s32 (*SND_MESSAGE_CALLBACK)(s32, u32);
typedef void (*SND_SOME_CALLBACK)();

extern SND_MESSAGE_CALLBACK salMessageCallback;
/* Math */
void salApplyMatrix(const SND_FMATRIX* a, const SND_FVECTOR* b, SND_FVECTOR* out);
float salNormalizeVector(SND_FVECTOR* vec);
void salCrossProduct(SND_FVECTOR* out, const SND_FVECTOR* a, const SND_FVECTOR* b);
void salInvertMatrix(SND_FMATRIX* out, const SND_FMATRIX* in);

/* hardware */
u32 salInitAi(SND_SOME_CALLBACK, u32, u32*);
u32 salInitDsp(u32);
u32 salInitDspCtrl(u32, u32, u16);
u32 salStartAi();

/* TODO: Figure out what `unk` is */
bool hwAddInput(u8 studio, void* unk);
bool hwRemoveInput(u8 studio, void* unk);
#ifdef __cplusplus
}
#endif
#endif // _MUSYX_MUSYX_PRIV
