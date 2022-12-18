#ifndef _MUSYX_MUSYX_PRIV
#define _MUSYX_MUSYX_PRIV

#include "musyx/musyx.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _SynthInfo {
  u32 freq;
  u32 _4;
  u8 unk[0x208];
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
  u32 _74;
  u32 _78;
  u32 _7c;
  u32 _80;
  u32 _84;
  u32 _88;
  u32 _8c;
  u32 sampleType;
  u32 _94;
  u32 _98;
  u32 _9c;
  u32 _a0;
  u8 _a4;
  u8 _a5;
  u8 _a6;
  u8 _a7;
  u32 _a8;
  u32 _ac;
  u32 _b0;
  u32 _b4;
  u32 _b8;
  u32 _bc;
  u16 _c0;
  u16 _c2;
  u32 _c4;
  u32 _c8;
  u32 _cc;
  u32 _d0;
  u32 _d4;
  u32 _d8;
  u32 _dc;
  u32 _e0;
  u8 _e4;
  u8 _e5;
  u8 _e6;
  u8 _e7;
  u32 _e8;
  u8 status;
  u8 _ed;
  u8 breakSet;
  u8 _ef;
  u32 itdFlags;
} DSPVoice;

typedef struct SND_VS {
  u8 _0;
  u8 _1;
  u8 _2;
  u8 _3;
  u8 unk1[0x908 - 0x4];
  u8 _908[64];
  u16 _948;
  u32 _94c;
} SND_VS;

extern SND_VS vs;

extern DSPVoice* dspVoice;
typedef s32 (*SND_COMPARE)(u16*, u8*);

void dataInit(u32, s32);                                       /* extern */
void dataInitStack();                                          /* extern */
s32 hwInit(u32* rate, u8 numVoices, u8 numStudios, u32 flags); /* extern */
void hwEnableIrq();
void hwDisableIrq();
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

void* salMalloc(u32 len);
void salFree(void* addr);

/* Stream */
typedef s32 (*SND_STREAM_UPDATE_CALLBACK)(void * buffer1, u32 len1, void * buffer2, u32 len2, void* user);
typedef struct SND_STREAM_INFO {
  u32 x0_;
  u32 x4_;
  u32 x8_;
  u8 xc_;
  char data2[0x10 - 0xd];
  SND_STREAM_UPDATE_CALLBACK updateCb;
  char data3[0x4C - 0x14];
  SND_VOICEID voiceId;
  void* user;
  char data4[0x64 - 0x54];
} SND_STREAM_INFO;


/* TODO: Figure out what `unk` is */
bool hwAddInput(u8 studio, void* unk);
bool hwRemoveInput(u8 studio, void* unk);

extern u32 dspCmdList;
extern u16 dspCmdFirstSize;
#ifdef __cplusplus
}
#endif
#endif // _MUSYX_MUSYX_PRIV
