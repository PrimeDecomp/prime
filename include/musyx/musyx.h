#ifndef _MUSYX_MUSYX
#define _MUSYX_MUSYX

#include "musyx/version.h"

#include <math.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed long s32;
typedef unsigned long u32;
typedef unsigned long long u64;
typedef float f32;
typedef double f64;

#ifndef NULL
#define NULL 0
#endif

#ifndef bool8
typedef unsigned char bool8;
#endif
#ifndef __cplusplus
typedef unsigned long bool;
#define FALSE 0
#define TRUE 1
#endif

#define SND_STUDIO_MAXNUM 8

#define SND_STUDIO_DEFAULT 0
#define SND_STUDIO_NONE 0xFF

#define SYNTH_MAX_VOICES 64

typedef struct SND_ADPCMSTREAM_INFO {
  s16 coefTab[8][2]; // Table of coef. pairs
} SND_ADPCMSTREAM_INFO;

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

#define SND_PLAYPARA_DEFAULT 0x00000000
#define SND_PLAYPARA_TRACKMUTE 0x00000001
#define SND_PLAYPARA_SPEED 0x00000002
#define SND_PLAYPARA_VOLUME 0x00000004
#define SND_PLAYPARA_SEQVOLDEF 0x00000008
#define SND_PLAYPARA_PAUSE 0x00000010

typedef struct SND_PLAYPARA {
  u32 flags;
  u32 trackMute[2];
  u16 speed;
  struct {
    u16 time;
    u8 target;
  } volume;
  u8 numSeqVolDef;
  SND_SEQVOLDEF* seqVolDef;
  u8 numFaded;
  u8* faded;
} SND_PLAYPARA;

typedef struct SND_HOOKS {
  void* (*malloc)(u32 len);
  void (*free)(void* addr);
} SND_HOOKS;

void sndSetHooks(SND_HOOKS* hooks);

typedef struct SND_FVECTOR {
  f32 x;
  f32 y;
  f32 z;
} SND_FVECTOR;

typedef struct SND_FMATRIX {
  f32 m[3][3];
  f32 t[3];
} SND_FMATRIX;

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

typedef struct SND_STUDIO_INPUT {
  // total size: 0x4
  u8 vol;       // offset 0x0, size 0x1
  u8 volA;      // offset 0x1, size 0x1
  u8 volB;      // offset 0x2, size 0x1
  u8 srcStudio; // offset 0x3, size 0x1
} SND_STUDIO_INPUT;

typedef struct SND_ROOM {
  struct SND_ROOM* next;
  struct SND_ROOM* prev;

  u32 flags;
  SND_FVECTOR pos;
  f32 distance;

  u8 studio;

  void (*activateReverb)(u8 studio, void* para);
  void (*deActivateReverb)(u8 studio);
  void* user;

  u32 curMVol;
} SND_ROOM;

typedef struct SND_DOOR {
  struct SND_DOOR* next;
  struct SND_DOOR* prev;

  SND_FVECTOR pos;

  f32 open;
  f32 dampen;
  u8 fxVol;

  u8 destStudio;

  SND_ROOM* a;
  SND_ROOM* b;

  u32 flags;

  s16 filterCoef[4];
  SND_STUDIO_INPUT input;
} SND_DOOR;

#define SND_DOOR_A2B 0x00000000
#define SND_DOOR_B2A 0x00000001

#define SND_DOOR_DEFAULT SND_DOOR_A2B

typedef struct SND_LISTENER {
  struct SND_LISTENER* next;
  struct SND_LISTENER* prev;
  SND_ROOM* room;

  u32 flags;
  SND_FVECTOR pos;
  f32 volPosOff;
  SND_FVECTOR dir;
  SND_FVECTOR heading;
  SND_FVECTOR right;
  SND_FVECTOR up;
  SND_FMATRIX mat;
  f32 surroundDisFront;
  f32 surroundDisBack;
  f32 soundSpeed;
  f32 vol;
} SND_LISTENER;

#define SND_LISTENER_DEFAULT 0x00000000
#define SND_LISTENER_DOPPLERFX 0x00000001

typedef struct SND_EMITTER {
  struct SND_EMITTER* next;
  struct SND_EMITTER* prev;
  SND_ROOM* room;

  SND_PARAMETER_INFO* paraInfo;

  u32 flags;
  SND_FVECTOR pos;
  SND_FVECTOR dir;
  f32 maxDis;
  f32 maxVol;
  f32 minVol;
  f32 volPush;
  SND_VOICEID vid;
  u32 group;
  SND_FXID fxid;

  u8 studio;

  u8 maxVoices;

  u16 VolLevelCnt;
  f32 fade;

} SND_EMITTER;

#define SND_EMITTER_DEFAULTKEY 0xFF
#define SND_EMITTER_DEFAULTVOL 0xFF

#define SND_EMITTER_DEFAULT 0x00000000
#define SND_EMITTER_CONTINOUS 0x00000001
#define SND_EMITTER_CONTINUOUS 0x00000001
#define SND_EMITTER_RESTARTABLE 0x00000002
#define SND_EMITTER_PAUSABLE 0x00000004
#define SND_EMITTER_DOPPLERFX 0x00000008
#define SND_EMITTER_ITD 0x00000010
#define SND_EMITTER_HARDSTART 0x00000020
#define SND_EMITTER_NOSILENTSTART 0x00000040

s32 sndInit(u8 voices, u8 music, u8 sfx, u8 studios, u32 flags, u32 aramSize);
void sndQuit(void);

bool sndIsInstalled();
u32 sndIsIdle();
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

typedef enum {
  SND_STUDIO_TYPE_STD = 0,
  SND_STUDIO_TYPE_RESERVED0 = 1,
  SND_STUDIO_TYPE_RESERVED1 = 2,
  SND_STUDIO_TYPE_RESERVED2 = 3,
} SND_STUDIO_TYPE;

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
bool sndAuxCallbackPrepareReverbHI(SND_AUX_REVERBHI* rev);
bool sndAuxCallbackShutdownReverbHI(SND_AUX_REVERBHI* rev);

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

typedef void (*SND_AUX_CALLBACK)(u8 reason, SND_AUX_INFO* info, void* user);

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

#define SND_CROSSFADE_STOP 0x0       // Stop old song after fadedown
#define SND_CROSSFADE_PAUSE 0x1      // Pause old song after fadedown
#define SND_CROSSFADE_CONTINUE 0x2   // Continue previously paused song as new one
#define SND_CROSSFADE_START 0x0      // Start new song (no continue)
#define SND_CROSSFADE_SYNC 0x4       // Crossfade should start syncronized by sync-controller (104)
#define SND_CROSSFADE_PAUSENEW 0x8   // Pause new song before even starting it
#define SND_CROSSFADE_TRACKMUTE 0x10 // Use trackmute informtion
#define SND_CROSSFADE_SPEED 0x20     // Use speed informtion
#define SND_CROSSFADE_MUTE 0x40      // Old song continues playing & gets muted after fade down
#define SND_CROSSFADE_MUTENEW 0x80   // Mute new song after starting it

#define SND_CROSSFADE_DEFAULT 0

typedef struct SND_CROSSFADE {
  SND_SEQID seqId1;
  u16 time1;

  SND_SEQID seqId2;
  u16 time2;
  void* arr2;
  SND_GROUPID gid2;
  SND_SONGID sid2;
  u8 vol2;
  u8 studio2;

  u32 trackMute2[2];
  u16 speed2;

  u8 flags;
} SND_CROSSFADE;

typedef struct SND_3DINFO {
  u8 vol;
  u8 pan;
  u8 span;
  u16 doppler;
} SND_3DINFO;

void sndGet3DParameters(SND_3DINFO* info, SND_FVECTOR* pos, SND_FVECTOR* dir, f32 maxDis, f32 comp,
                        u8 maxVol, u8 minVol, SND_ROOM* room);

typedef struct SND_PROFILE_DATA {
  unsigned long loadStores;
  unsigned long missCycles;
  unsigned long cycles;
  unsigned long instructions;
  unsigned long lastLoadStores;
  unsigned long lastMissCycles;
  unsigned long lastCycles;
  unsigned long lastInstructions;
  unsigned long peekLoadStores;
  unsigned long peekMissCycles;
  unsigned long peekCycles;
  unsigned long peekInstructions;
  unsigned long _loadStores;
  unsigned long _missCycles;
  unsigned long _cycles;
  unsigned long _instructions;
  float avgLoadStores;
  float avgMissCycles;
  float avgCycles;
  float avgInstructions;
  float sumLoadStores;
  float sumMissCycles;
  float sumCycles;
  float sumInstructions;
  unsigned long cnt;
  unsigned long paused;
} SND_PROFILE_DATA;

typedef struct SND_PROFILE_INFO {
  SND_PROFILE_DATA dspCtrl;
  SND_PROFILE_DATA auxProcessing;
  SND_PROFILE_DATA sequencer;
  SND_PROFILE_DATA synthesizer;
  SND_PROFILE_DATA emitters;
  SND_PROFILE_DATA streaming;
  unsigned char numMusicVoices;
  unsigned char numSFXVoices;
} SND_PROFILE_INFO;

typedef void (*SND_PROF_USERCALLBACK)(struct SND_PROFILE_INFO*);
extern SND_PROF_USERCALLBACK sndProfUserCallback;

#define SND_MIDICTRL_MODULATION 0x01
#define SND_MIDICTRL_VOLUME 0x07
#define SND_MIDICTRL_PANNING 0x0A
#define SND_MIDICTRL_PEDAL 0x40
#define SND_MIDICTRL_PORTAMENTO 0x41
#define SND_MIDICTRL_REVERB 0x5B
#define SND_MIDICTRL_CHORUS 0x5D

#define SND_MIDICTRL_PITCHBEND 0x80
#define SND_MIDICTRL_SPANNING 0x83
#define SND_MIDICTRL_DOPPLER 0x84

#define SND_SEQVOL_CONTINUE 0
#define SND_SEQVOL_STOP 1
#define SND_SEQVOL_PAUSE 2
#define SND_SEQVOL_MUTE 3
#define SND_SEQVOL_MODEMASK 0xF

#define SND_ID_ERROR 0xFFFFFFFF // ID is invalid

#define SND_MAX_SEQINSTANCES 8
#define SND_SEQ_ERROR_ID 0xFFFFFFFF
#define SND_SEQ_CROSSFADE_ID 0x80000000

#define SND_PAUSEVOL_NORMAL 127

#ifdef __cplusplus
}
#endif
#endif // _MUSYX_MUSYX
