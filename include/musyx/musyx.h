#ifndef _MUSYX_MUSYX
#define _MUSYX_MUSYX

#ifdef __cplusplus
extern "C" {
#endif

typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed long s32;
typedef unsigned long u32;
typedef float f32;
typedef double f64;

#ifndef NULL
#define NULL 0
#endif

#ifndef bool8
typedef unsigned char bool8;
#endif
#ifndef bool
typedef signed long bool;
#define FALSE 0
#define TRUE 1
#endif

#define SND_STUDIO_MAXNUM 8

#define SND_STUDIO_DEFAULT 0
#define SND_STUDIO_NONE 0xFF

#define SYNTH_MAX_VOICES 64

typedef u32 SND_SEQID;
typedef u32 SND_VOICEID;
typedef u32 SND_STREAMID;
typedef u16 SND_GROUPID;
typedef u16 SND_SONGID;
typedef u16 SND_FXID;

typedef enum {
  SND_OUTPUTMODE_MONO = 0,
  SND_OUTPUTMODE_STEREO,
  SND_OUTPUTMODE_SURROUND,
} SND_OUTPUTMODE;

typedef struct SND_PLAYBACKINFO {
  u32 frq;
  u8 stereo;
  u8 bits;
  s8 deviceName[256];
  s8 versionText[256];
} SND_PLAYBACKINFO;

typedef struct SND_SEQVOLDEF {
  u8 track;
  u8 volGroup;
} SND_SEQVOLDEF;

typedef struct SND_HOOKS {
  void* (*malloc)(u32 len);
  void (*free)(void* addr);
} SND_HOOKS;

typedef struct SND_FVECTOR {
  f32 x;
  f32 y;
  f32 z;
} SND_FVECTOR;

typedef struct SND_FMATRIX {
  f32 m[3][3];
  f32 t[3];
} SND_FMATRIX;

s32 sndInit(u8 voices, u8 music, u8 sfx, u8 studios, u32 flags, u32 aramSize);
void sndQuit(void);

bool sndIsInstalled();
bool sndIsIdle();
SND_PLAYBACKINFO* sndGetPlayBackInfo();

void sndSetMaxVoices(u8 music, u8 sfx);

#define SND_USERMUSIC_VOLGROUPS 0xFA
#define SND_USERFX_VOLGROUPS 0xFB
#define SND_USERALL_VOLGROUPS 0xFC
#define SND_MUSIC_VOLGROUPS 0xFD
#define SND_FX_VOLGROUPS 0xFE
#define SND_ALL_VOLGROUPS 0xFF

#define SND_MAX_USER_VOLGROUP 20

void sndVolume(u8 volume, u16 time, u8 volGroup);
void sndMasterVolume(u8 volume, u16 time, u8 music, u8 fx);
void sndOutputMode(SND_OUTPUTMODE mode);
void sndSilence();

#define SND_AUX_NUMPARAMETERS 4

#define SND_AUX_REASON_BUFFERUPDATE 0
#define SND_AUX_REASON_PARAMETERUPDATE 1

typedef struct SND_AUX_INFO {
  union SND_AUX_DATA {
    struct SND_AUX_BUFFERUPDATE {
      s32* left;
      s32* right;
      s32* surround;
    } bufferUpdate;
    struct SND_AUX_PARAMETERUPDATE {
      u16 para[SND_AUX_NUMPARAMETERS];
    } parameterUpdate;
  } data;
} SND_AUX_INFO;

typedef struct _SND_REVHI_DELAYLINE {
  s32 inPoint;
  s32 outPoint;
  s32 length;
  f32* inputs;
  f32 lastOutput;
} _SND_REVHI_DELAYLINE;

typedef struct _SND_REVHI_WORK {
  _SND_REVHI_DELAYLINE AP[9];
  _SND_REVHI_DELAYLINE C[9];
  f32 allPassCoeff;
  f32 combCoef[9];
  f32 lpLastout[3];
  f32 level;
  f32 damping;
  s32 preDelayTime;
  f32 crosstalk;
  f32* preDelayLine[3];
  f32* preDelayPtr[3];
} _SND_REVHI_WORK;

typedef struct SND_AUX_REVERBHI {
  _SND_REVHI_WORK rv;
  bool8 tempDisableFX;

  f32 coloration;
  f32 mix;
  f32 time;
  f32 damping;
  f32 preDelay;
  f32 crosstalk;
} SND_AUX_REVERBHI;

void sndAuxCallbackReverbHI(u8 reason, SND_AUX_INFO* info, void* user);
s32 sndAuxCallbackPrepareReverbHI(SND_AUX_REVERBHI* rev);
s32 sndAuxCallbackShutdownReverbHI(SND_AUX_REVERBHI* rev);

typedef struct SND_AUX_DELAY {
  u32 currentSize[3];
  u32 currentPos[3];
  u32 currentFeedback[3];
  u32 currentOutput[3];

  s32* left;
  s32* right;
  s32* sur;

  u32 delay[3];    // Delay buffer length in ms per channel
  u32 feedback[3]; // Feedback volume in % per channel
  u32 output[3];   // Output volume in % per channel
} SND_AUX_DELAY;

void sndAuxCallbackDelay(u8 reason, SND_AUX_INFO* info, void* user);
bool sndAuxCallbackUpdateSettingsDelay(SND_AUX_DELAY* delay);
bool sndAuxCallbackPrepareDelay(SND_AUX_DELAY* rev);
bool sndAuxCallbackShutdownDelay(SND_AUX_DELAY* rev);
bool sndAuxCallbackUpdateSettingsReverbHI(SND_AUX_REVERBHI* rev);

typedef struct _SND_REVSTD_DELAYLINE {
  s32 inPoint;
  s32 outPoint;
  s32 length;
  f32* inputs;
  f32 lastOutput;
} _SND_REVSTD_DELAYLINE;

typedef struct _SND_REVSTD_WORK {
  _SND_REVSTD_DELAYLINE AP[6];
  _SND_REVSTD_DELAYLINE C[6];
  f32 allPassCoeff;
  f32 combCoef[6];
  f32 lpLastout[3];
  f32 level;
  f32 damping;
  s32 preDelayTime;
  f32* preDelayLine[3];
  f32* preDelayPtr[3];
} _SND_REVSTD_WORK;

typedef struct SND_AUX_REVERBSTD {
  _SND_REVSTD_WORK rv;
  bool8 tempDisableFX;

  f32 coloration;
  f32 mix;
  f32 time;
  f32 damping;
  f32 preDelay;
} SND_AUX_REVERBSTD;

void sndAuxCallbackReverbSTD(u8 reason, SND_AUX_INFO* info, void* user);
bool sndAuxCallbackPrepareReverbSTD(SND_AUX_REVERBSTD* rev);
bool sndAuxCallbackShutdownReverbSTD(SND_AUX_REVERBSTD* rev);
bool sndAuxCallbackUpdateSettingsReverbSTD(SND_AUX_REVERBSTD* rev);

typedef struct SND_PARAMETER {
  u8 ctrl;
  union {
    u8 value7;
    u16 value14;
  } paraData;
} SND_PARAMETER;

typedef struct SND_PARAMETER_INFO {
  u8 numPara;
  SND_PARAMETER* paraArray;

} SND_PARAMETER_INFO;

#define sndFXStart(fid, vol, pan) sndFXStartEx(fid, vol, pan, SND_STUDIO_DEFAULT)
SND_VOICEID sndFXStartEx(SND_FXID fid, u8 vol, u8 pan, u8 studio);
SND_VOICEID sndFXStartPara(SND_FXID fid, u8 vol, u8 pan, u8 studio, u8 numPara, ...);
SND_VOICEID sndFXStartParaInfo(SND_FXID fid, u8 vol, u8 pan, u8 studio,
                               SND_PARAMETER_INFO* paraInfo);
SND_VOICEID sndFXCheck(SND_VOICEID vid);
bool sndFXKeyOff(SND_VOICEID vid);
bool sndFXCtrl(SND_VOICEID vid, u8 ctrl, u8 value);
bool sndFXCtrl14(SND_VOICEID vid, u8 ctrl, u16 value);
#define _SND_CHORUS_NUM_BLOCKS 3
typedef struct _SND_CHORUS_SRCINFO {
  s32* dest;
  s32* smpBase;
  s32* old;
  u32 posLo;
  u32 posHi;
  u32 pitchLo;
  u32 pitchHi;
  u32 trigger;
  u32 target;
} _SND_CHORUS_SRCINFO;

typedef struct _SND_CHORUS_WORK {
  s32* lastLeft[_SND_CHORUS_NUM_BLOCKS];
  s32* lastRight[_SND_CHORUS_NUM_BLOCKS];
  s32* lastSur[_SND_CHORUS_NUM_BLOCKS];
  u8 currentLast;
  s32 oldLeft[4];
  s32 oldRight[4];
  s32 oldSur[4];

  u32 currentPosLo;
  u32 currentPosHi;

  s32 pitchOffset;
  u32 pitchOffsetPeriodCount;
  u32 pitchOffsetPeriod;

  _SND_CHORUS_SRCINFO src;
} _SND_CHORUS_WORK;

typedef struct SND_AUX_CHORUS {
  _SND_CHORUS_WORK work;
  u32 baseDelay;
  u32 variation;
  u32 period;
} SND_AUX_CHORUS;

void sndAuxCallbackChorus(u8 reason, SND_AUX_INFO* info, void* user);
bool sndAuxCallbackPrepareChorus(SND_AUX_CHORUS* ch);
bool sndAuxCallbackShutdownChorus(SND_AUX_CHORUS* ch);
bool sndAuxCallbackUpdateSettingsChorus(SND_AUX_CHORUS* ch);
#ifdef __cplusplus
}
#endif
#endif // _MUSYX_MUSYX
