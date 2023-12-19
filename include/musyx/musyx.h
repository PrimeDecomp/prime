#ifndef _MUSYX_MUSYX
#define _MUSYX_MUSYX

#include "musyx/platform.h"
#include "musyx/version.h"

#include <math.h>
#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

#if MUSY_TARGET == MUSY_TARGET_DOLPHIN
typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed long s32;
typedef unsigned long u32;
typedef unsigned long long u64;
typedef float f32;
typedef double f64;
#elif MUSY_TARGET == MUSY_TARGET_PC
typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef unsigned long long u64;
typedef float f32;
typedef double f64;
#endif

#ifndef NULL
#define NULL 0
#endif

#ifndef bool8
typedef unsigned char bool8;
#endif
#ifndef __cplusplus
#if __STDC_VERSION__ <= 199901L
typedef unsigned long bool;
#endif

#ifndef FALSE
#define FALSE 0
#endif
#ifndef TRUE
#define TRUE 1
#endif
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
  SND_OUTPUTMODE_SURROUND
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
  u32 flags;        // Enable features by using these flags
  u32 trackMute[2]; // Initial mute settings
  u16 speed;        // Initial speed factor (0x100 = 1:1)
  struct {          // Start volume information
    u16 time;
    u8 target;
  } volume;
  u8 numSeqVolDef;          // Number of non-standart volume group tracks
  SND_SEQVOLDEF* seqVolDef; // List of tracks and the volume groups to be assigned to them
  u8 numFaded;              // Number of entries to the fade list
  u8* faded; // Array of u8s containing the volume group IDs that should be affected by the initial
             // volume setting (default will always be affected)
} SND_PLAYPARA;

#define SND_CROSSFADE_STOP 0       // Stop old song after fadedown
#define SND_CROSSFADE_PAUSE 1      // Pause old song after fadedown
#define SND_CROSSFADE_CONTINUE 2   // Continue previously paused song as new one
#define SND_CROSSFADE_START 0      // Start new song (no continue)
#define SND_CROSSFADE_SYNC 4       // Crossfade should start syncronized by sync-controller (104)
#define SND_CROSSFADE_PAUSENEW 8   // Pause new song before even starting it
#define SND_CROSSFADE_TRACKMUTE 16 // Use trackmute informtion
#define SND_CROSSFADE_SPEED 32     // Use speed informtion
#define SND_CROSSFADE_MUTE 64      // Old song continues playing & gets muted after fade down
#define SND_CROSSFADE_MUTENEW 128  // Mute new song after starting it

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

  u32 trackMute2[2]; // Mute bits (see sndMute())
  u16 speed2;        // Initial speed (of new song)

  u8 flags;
} SND_CROSSFADE;

#define SND_ID_ERROR 0xFFFFFFFF // ID is invalid

#define SND_USERMUSIC_VOLGROUPS 0xFA
#define SND_USERFX_VOLGROUPS 0xFB
#define SND_USERALL_VOLGROUPS 0xFC
#define SND_MUSIC_VOLGROUPS 0xFD
#define SND_FX_VOLGROUPS 0xFE
#define SND_ALL_VOLGROUPS 0xFF

#define SND_MAX_USER_VOLGROUP 20

bool sndPushGroup(void* prj_data, SND_GROUPID gid, void* samples, void* sampdir, void* pool);
bool sndPopGroup(void);

void sndSetSampleDataUploadCallback(void* (*callback)(u32 offset, u32 bytes), u32 chunkSize);

typedef struct SND_HOOKS {
  void* (*malloc)(size_t addr);
  void (*free)(void* addr);
} SND_HOOKS;

void sndSetHooks(SND_HOOKS* hooks);

// Misc flags to influence the way the sound system works internally
// (support may vary from platform to platform)

#define SND_FLAGS_DEFAULT 0x00000000
#define SND_FLAGS_DEFAULT_STUDIO_DPL2 0x00000001 // Use DPL2 encoding for default studio
#define SND_FLAGS_EMITTERGROUPSUSEMAXVOICES                                                        \
  0x00000002 // define this to enable usage of max. voices from FX table for emitter group start
             // management

// Platform dependend flags : PC

#define SND_FLAGS_PC_USE_TIMER                                                                     \
  0x00000000 // Use timer driven update system (less performance hit, larger latency)
#define SND_FLAGS_PC_USE_THREAD                                                                    \
  0x00010000 // Use thread driven update system (larger performance hit, shorter latency)
#define SND_FLAGS_PC_USE_PRIMARY 0x00020000 // Use a primary sound buffer for mixing (Win95/98 only)

#define SND_FLAGS_PC_LATENCY0 0x00000000 // Latency values (see documentation)
#define SND_FLAGS_PC_LATENCY1 0x10000000
#define SND_FLAGS_PC_LATENCY2 0x20000000
#define SND_FLAGS_PC_LATENCY3 0x30000000
#define SND_FLAGS_PC_LATENCY4 0x40000000
#define SND_FLAGS_PC_LATENCY5 0x50000000
#define SND_FLAGS_PC_LATENCY6 0x60000000
#define SND_FLAGS_PC_LATENCY7 0x70000000

s32 sndInit(u8 voices, u8 music, u8 sfx, u8 studios, u32 flags, u32 aramSize);
void sndQuit(void);

bool sndIsInstalled(void);
bool sndIsIdle(void);
SND_PLAYBACKINFO* sndGetPlayBackInfo(void);

void sndSetMaxVoices(u8 music, u8 sfx);

void sndVolume(u8 volume, u16 time, u8 volGroup);
void sndMasterVolume(u8 volume, u16 time, u8 music, u8 fx);
void sndOutputMode(SND_OUTPUTMODE mode);
void sndSilence(void);

#define SND_PAUSEVOL_NORMAL 127

void sndPauseVolume(u8 mute_vol, u16 time, u8 volGroup);

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
#define SND_SEQVOL_CONTINUE 0
#define SND_SEQVOL_STOP 1
#define SND_SEQVOL_PAUSE 2
#define SND_SEQVOL_MUTE 3

#define sndSeqPlay(sgid, sid, arrfile, para)                                                       \
  sndSeqPlayEx(sgid, sid, arrfile, para, SND_STUDIO_DEFAULT)
SND_SEQID sndSeqPlayEx(SND_GROUPID sgid, SND_SONGID sid, void* arrfile, SND_PLAYPARA* para,
                       u8 studio);

void sndSeqStop(SND_SEQID seqId);
void sndSeqPause(SND_SEQID seqId);
void sndSeqContinue(SND_SEQID seqId);
void sndSeqMute(SND_SEQID seqId, u32 mask1, u32 mask2);
void sndSeqSpeed(SND_SEQID seqId, u16 speed);
bool sndSeqLoop(SND_SEQID seqId, bool on);
bool sndSeqLoopEx(SND_SEQID seqId, u8 track, bool on);
u16 sndSeqGetLoopCnt(SND_SEQID seqId);
u16 sndSeqGetLoopCntEx(SND_SEQID seqId, u8 track);
bool sndSeqGetValid(SND_SEQID seqId);
u8 sndSeqGetMidiCtrl(SND_SEQID seqId, u8 channel, u8 ctrl);
u16 sndSeqGetMidiCtrl14(SND_SEQID seqId, u8 channel, u8 ctrl);
bool sndSeqSetMidiCtrl(SND_SEQID seqId, u8 channel, u8 ctrl, u8 value);
bool sndSeqSetMidiCtrl14(SND_SEQID seqId, u8 channel, u8 ctrl, u16 value);

void sndSeqVolume(u8 volume, u16 time, SND_SEQID seqId, u8 mode);
u8 sndSeqGetVolGroup(SND_SEQID seqId);
bool sndSeqAssignVolGroup2Track(SND_SEQID seqId, u8 track, u8 vGroup);
void sndSeqCrossFade(SND_CROSSFADE* ci, SND_SEQID* new_seqId);
bool sndSeqCrossFadeDone(SND_SEQID* new_seqId);

typedef struct SND_PARAMETER {
  u8 ctrl;
  union _paraData {
    u8 value7;
    u16 value14;
  } paraData;
} SND_PARAMETER;

typedef struct SND_PARAMETER_INFO {
  u8 numPara; // How many MIDI controller values (ID,value - value may be 8-bit or 16-bit!)
  SND_PARAMETER* paraArray; // Parameter data...
} SND_PARAMETER_INFO;

#define SND_FX_DEFVOL 0xFF
#define SND_FX_DEFPAN 0xFF

#define sndFXStart(fid, vol, pan) sndFXStartEx(fid, vol, pan, SND_STUDIO_DEFAULT)
SND_VOICEID sndFXStartEx(SND_FXID fid, u8 vol, u8 pan, u8 studio);
SND_VOICEID sndFXStartPara(SND_FXID fid, u8 vol, u8 pan, u8 studio, u8 numPara, ...);
SND_VOICEID sndFXStartParaInfo(SND_FXID fid, u8 vol, u8 pan, u8 studio,
                               SND_PARAMETER_INFO* paraInfo);
SND_VOICEID sndFXCheck(SND_VOICEID vid);
bool sndFXKeyOff(SND_VOICEID vid);
bool sndFXCtrl(SND_VOICEID vid, u8 ctrl, u8 value);
bool sndFXCtrl14(SND_VOICEID vid, u8 ctrl, u16 value);

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

#define sndFXPitchBend(vid, pb) sndFXCtrl14(vid, SND_MIDICTRL_PITCHBEND, pb)
#define sndFXModulation(vid, modu) sndFXCtrl14(vid, SND_MIDICTRL_MODULATION, modu)
#define sndFXDoppler(vid, doppler) sndFXCtrl14(vid, SND_MIDICTRL_DOPPLER, doppler)

#define sndFXReverb(vid, reverb) sndFXCtrl(vid, SND_MIDICTRL_REVERB, reverb)
#define sndFXChorus(vid, chorus) sndFXCtrl(vid, SND_MIDICTRL_CHORUS, chorus)
#define sndFXPedal(vid, pedal) sndFXCtrl(vid, SND_MIDICTRL_PEDAL, pedal)
#define sndFXVolume(vid, vol) sndFXCtrl(vid, SND_MIDICTRL_VOLUME, vol)
#define sndFXPanning(vid, pan) sndFXCtrl(vid, SND_MIDICTRL_PANNING, pan)
#define sndFXSurroundPanning(vid, span) sndFXCtrl(vid, SND_MIDICTRL_SPANNING, span)

bool sndFXAssignVolGroup2FXId(SND_FXID fid, u8 vGroup);

// --------------------------------------------------------

s32 sndReadFlag(u8 num);
s32 sndWriteFlag(u8 num, s32 value);

bool sndSendMessage(SND_VOICEID vid, s32 mesg);
void sndSetReceiveMessageCallback(void (*callback)(SND_VOICEID vid, s32 mesg));

// --------------------------------------------------------

// Flags
#define SND_STREAM_DEFAULT 0x00000000       // Default stream buffer (PCM16)
#define SND_STREAM_ADPCM 0x00000001         // ADPCM stream buffer
#define SND_STREAM_INACTIVE 0x00010000      // Allocate stream, but do not start it yet
#define SND_STREAM_MANUALARAMUPD 0x00020000 // Application will provide manual ARAM buffer updates

#define SND_STREAM_ADPCM_BLKBYTES 8 // Bytes per ADPCM block
#define SND_STREAM_ADPCM_BLKSIZE 14 // Samples per ADPCM block

// ADPCM info structure
typedef struct SND_ADPCMSTREAM_INFO {
  s16 coefTab[8][2]; // Table of coef. pairs
} SND_ADPCMSTREAM_INFO;

#define sndStreamAlloc(prio, buffer, size, frq, vol, pan, span, fxvol, updateFunction, user)       \
  sndStreamAllocEx(prio, buffer, size, frq, vol, pan, span, fxvol, 0, SND_STUDIO_DEFAULT,          \
                   SND_STREAM_DEFAULT, updateFunction, user, NULL)
SND_STREAMID sndStreamAllocEx(u8 prio, void* buffer, u32 samples, u32 frq, u8 vol, u8 pan, u8 span,
                              u8 auxa, u8 auxb, u8 studio, u32 flags,
                              u32 (*updateFunction)(void* buffer1, u32 len1, void* buffer2,
                                                    u32 len2, u32 user),
                              u32 user, SND_ADPCMSTREAM_INFO* adpcmInfo);
SND_STREAMID sndStreamAllocStereo(u8 prio, void* lBuffer, void* rBuffer, u32 samples, u32 frq,
                                  u8 vol, u8 pan, u8 span, u8 auxa, u8 auxb, u8 studio, u32 flags,
                                  u32 (*updateFunction)(void* buffer1, u32 len1, void* buffer2,
                                                        u32 len2, u32 user),
                                  u32 lUser, u32 rUser, SND_ADPCMSTREAM_INFO* adpcmInfoL,
                                  SND_ADPCMSTREAM_INFO* adpcmInfoR);
u32 sndStreamAllocLength(u32 num, u32 flags);
void sndStreamFree(SND_STREAMID stid);
void sndStreamMixParameter(SND_STREAMID stid, u8 vol, u8 pan, u8 span, u8 fxvol);
void sndStreamMixParameterEx(SND_STREAMID stid, u8 vol, u8 pan, u8 span, u8 auxa, u8 auxb);
void sndStreamADPCMParameter(SND_STREAMID stid, SND_ADPCMSTREAM_INFO* adpcmInfo);
void sndStreamFrq(SND_STREAMID stid, u32 frq);
bool sndStreamActivate(SND_STREAMID stid);
void sndStreamDeactivate(SND_STREAMID stid);
void sndStreamARAMUpdate(SND_STREAMID stid, u32 off1, u32 len1, u32 off2, u32 len2);
u32 sndStreamCallbackFrq(u32 msTime);

// --------------------------------------------------------

#define SND_VIRTUALSAMPLE_DEFAULT 0x00000000

bool sndVirtualSampleAllocateBuffers(u8 numInstances, u32 numSamples, u32 flags);
void sndVirtualSampleFreeBuffers(void);

typedef u16 SND_VSID;   // Virtual sample ID
typedef u16 SND_INSTID; // Virtual sample instance ID

typedef struct SND_VIRTUALSAMPLE_INFO {
  SND_VSID smpID;    // ID of sample to be streamed
  SND_INSTID instID; // ID of this instance of the stream

  union vsData {
    struct vsUpdate { // Buffer update info
      u32 off1;
      u32 len1;
      u32 off2;
      u32 len2;
    } update;
  } data;
} SND_VIRTUALSAMPLE_INFO;

#define SND_VIRTUALSAMPLE_REASON_INIT 0   // Virtual sample just started playback
#define SND_VIRTUALSAMPLE_REASON_UPDATE 1 // Virtual sample is within stream buffer and needs data
#define SND_VIRTUALSAMPLE_REASON_STOP 2   // Virtual sample just has been stopped
#define SND_VIRTUALSAMPLE_REASON_ARAMDMADONE                                                       \
  3 // Last ARAM update initiated for this virtual sample has finished

void sndVirtualSampleSetCallback(u32 (*callback)(u8 reason, const SND_VIRTUALSAMPLE_INFO* info));

void sndVirtualSampleARAMUpdate(SND_INSTID instID, void* base, u32 off1, u32 len1, u32 off2,
                                u32 len2);

void sndVirtualSampleEndPlayback(SND_INSTID instID, bool sampleEndedNormally);

#define SND_AUX_BLOCKSIZE 160 // Size of block passed to the AUX FX hanler (in samples)

#define SND_AUX_REASON_BUFFERUPDATE 0
#define SND_AUX_REASON_PARAMETERUPDATE 1

#define SND_MIDI_NONE 0xFF

#define SND_AUX_NUMPARAMETERS 4

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

void sndSetAuxProcessingCallbacks(u8 studio,
                                  void (*auxA)(u8 reason, SND_AUX_INFO* info, void* user),
                                  void* userA, u8 midiA, SND_SEQID seqIDA,
                                  void (*auxB)(u8 reason, SND_AUX_INFO* info, void* user),
                                  void* userB, u8 midiB, SND_SEQID seqIDB);

#define SND_AUXA_PARAMETERS 0
#define SND_AUXB_PARAMETERS 1

void sndUpdateAuxParameter(u8 studio, u16 para[SND_AUX_NUMPARAMETERS], u8 auxBus);

typedef enum {
  SND_STUDIO_TYPE_STD = 0,
  SND_STUDIO_TYPE_DPL2,
  SND_STUDIO_TYPE_RESERVED1,
  SND_STUDIO_TYPE_RESERVED2
} SND_STUDIO_TYPE;

#define sndActivateStudio(studio, isMaster)                                                        \
  sndActivateStudioEx(studio, isMaster, SND_STUDIO_TYPE_STD)
void sndActivateStudioEx(u8 studio, bool isMaster, SND_STUDIO_TYPE type);
void sndChangeStudioMasterMix(u8 studio, bool isMaster);
void sndDeactivateStudio(u8 studio);
void sndSetITDDefault(u8 studio, bool musicITD, bool sfxITD);

// Standard Quality Reverb AUX FX

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

typedef void (*SND_AUX_CALLBACK)(u8 reason, SND_AUX_INFO* info, void* user);
void sndAuxCallbackReverbSTD(u8 reason, SND_AUX_INFO* info, void* user);
bool sndAuxCallbackPrepareReverbSTD(SND_AUX_REVERBSTD* rev);
bool sndAuxCallbackShutdownReverbSTD(SND_AUX_REVERBSTD* rev);
bool sndAuxCallbackUpdateSettingsReverbSTD(SND_AUX_REVERBSTD* rev);

// High Quality Reverb AUX FX
//
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
bool sndAuxCallbackUpdateSettingsReverbHI(SND_AUX_REVERBHI* rev);

// Delay AUX FX
//
typedef struct SND_AUX_DELAY {
  u32 currentSize[3];
  u32 currentPos[3];
  u32 currentFeedback[3];
  u32 currentOutput[3];

  s32* left;
  s32* right;
  s32* sur;

  // - - - - - - - - - - -

  u32 delay[3];    // Delay buffer length in ms per channel
  u32 feedback[3]; // Feedback volume in % per channel
  u32 output[3];   // Output volume in % per channel
} SND_AUX_DELAY;

void sndAuxCallbackDelay(u8 reason, SND_AUX_INFO* info, void* user);
bool sndAuxCallbackPrepareDelay(SND_AUX_DELAY* delay);
bool sndAuxCallbackShutdownDelay(SND_AUX_DELAY* delay);
bool sndAuxCallbackUpdateSettingsDelay(SND_AUX_DELAY* delay);

// Chorus AUX FX

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

#define _SND_CHORUS_NUM_BLOCKS 3

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

  u32 baseDelay; // Base delay of chorus effect in ms
  u32 variation; // Variation of base delay in ms
  u32 period;    // Period of variational oscilation in ms
} SND_AUX_CHORUS;

void sndAuxCallbackChorus(u8 reason, SND_AUX_INFO* info, void* user);
bool sndAuxCallbackPrepareChorus(SND_AUX_CHORUS* ch);
bool sndAuxCallbackShutdownChorus(SND_AUX_CHORUS* ch);
bool sndAuxCallbackUpdateSettingsChorus(SND_AUX_CHORUS* ch);

// Studio linkage
typedef struct SND_STUDIO_INPUT {
  u8 vol;
  u8 volA;
  u8 volB;
  u8 srcStudio;
} SND_STUDIO_INPUT;

bool sndAddStudioInput(u8 studio, SND_STUDIO_INPUT* in_desc);
bool sndRemoveStudioInput(u8 studio, SND_STUDIO_INPUT* in_desc);

// 3D API

typedef struct SND_FVECTOR {
  f32 x;
  f32 y;
  f32 z;
} SND_FVECTOR;

typedef struct SND_FMATRIX {
  f32 m[3][3];
  f32 t[3];
} SND_FMATRIX;

typedef struct SND_ROOM {
  struct SND_ROOM* next;
  struct SND_ROOM* prev;

  u32 flags;
  SND_FVECTOR pos; // World "position" of room
  f32 distance;    // Average distance to listeners (squared)

  u8 studio;

  void (*activateReverb)(u8 studio, void* para); // Callbacks to activate/deactivate "reverb" (AuxA)
  void (*deActivateReverb)(u8 studio);           // (NULL -> none)
  void* user;                                    // Pointer to user data (e.g. "reverb" parameters)

  u32 curMVol; // Current master mix volume (7.16)
} SND_ROOM;

typedef struct SND_DOOR {
  struct SND_DOOR* next;
  struct SND_DOOR* prev;

  SND_FVECTOR pos; // Position of door

  f32 open;   // State (0=closed, 1=open)
  f32 dampen; // Dampening when closed (0=none, 1=full)
  u8 fxVol;   // FX mix volume of this door (0-127)

  u8 destStudio; // When active: Studio the input is linked to

  SND_ROOM* a; // Rooms to be linked
  SND_ROOM* b;

  u32 flags; // Flags

  s16 filterCoef[4];      // Coefs of the 4 tab FIR filter (0x7FFF = 1.0)
  SND_STUDIO_INPUT input; // Input info (when active)
} SND_DOOR;

#define SND_DOOR_A2B 0x00000000 // Door leads from A to B
#define SND_DOOR_B2A 0x00000001 // Door leads from B to A

#define SND_DOOR_DEFAULT SND_DOOR_A2B

typedef struct SND_LISTENER {
  struct SND_LISTENER* next;
  struct SND_LISTENER* prev;
  SND_ROOM* room;

  u32 flags;
  SND_FVECTOR pos;
  f32 volPosOff;   // (reserved for future use)
  SND_FVECTOR dir; // Speed in units/second
  SND_FVECTOR heading;
  SND_FVECTOR right;
  SND_FVECTOR up;
  SND_FMATRIX mat;
  f32 surroundDisFront;
  f32 surroundDisBack;
  f32 soundSpeed;
  f32 vol;
} SND_LISTENER;

#define SND_LISTENER_DEFAULT 0x00000000 // No special features are activated
#define SND_LISTENER_DOPPLERFX                                                                     \
  0x00000001 // Listener is supposed to be moving fast enough to display Dopller effects

typedef struct SND_EMITTER {
  struct SND_EMITTER* next;
  struct SND_EMITTER* prev;
  SND_ROOM* room;

  SND_PARAMETER_INFO* paraInfo;

  u32 flags;
  SND_FVECTOR pos;
  SND_FVECTOR dir; // Speed in units/second
  f32 maxDis;
  f32 maxVol;
  f32 minVol;
  f32 volPush; // -1.0f = 1/square -> 0.0 = linear -> 1.0 = square
  SND_VOICEID vid;
  u32 group; // Group ID (by default FXID | 0x80000000) used to do volume priorities for continous
             // emitters
  SND_FXID fxid;

  u8 studio;

  u8 maxVoices; // Max. voices of the assigned FX

  u16 VolLevelCnt; // Used during continous emitter allocation process
  f32 fade;        // Used to fade-in of continous emitters

} SND_EMITTER;

#define SND_EMITTER_DEFAULTKEY 0xFF
#define SND_EMITTER_DEFAULTVOL 0xFF

#define SND_EMITTER_DEFAULT 0x00000000 // No special features are activated
#define SND_EMITTER_CONTINOUS                                                                      \
  0x00000001 // Parameters should be updated over time (they will be set just once if not set)
#define SND_EMITTER_CONTINUOUS                                                                     \
  0x00000001 // Parameters should be updated over time (they will be set just once if not set)
#define SND_EMITTER_RESTARTABLE                                                                    \
  0x00000002 // If the used voice is reallocated, the sound should be restarted as soon as possible
#define SND_EMITTER_PAUSABLE                                                                       \
  0x00000004 // The sound may be stopped if it is no longer audible (and restarted if the above flag
             // is set as soon as it's audibel again)
#define SND_EMITTER_DOPPLERFX                                                                      \
  0x00000008 // Emitter is supposed to be moving fast enough to display Doppler effects
#define SND_EMITTER_ITD                                                                            \
  0x00000010 // Enable ITD per default. The macro controlling the voice may still overwrite this
             // setting
#define SND_EMITTER_HARDSTART                                                                      \
  0x00000020 // By default continous emitters are quickly faded in at startup to avoid pop sounds at
             // restart. This disables this behavior
#define SND_EMITTER_NOSILENTSTART                                                                  \
  0x00000040 // Do not start emitter if the volume would be zero (it will be removed from the active
             // list in this case)

//
// Setup / Change logical rooms
//
void sndSetup3DStudios(u8 first, u8 num);

bool sndAddRoom(SND_ROOM* room, SND_FVECTOR* pos, void (*activateReverb)(u8 studio, void* para),
                void (*deActivateReverb)(u8 studio));
bool sndRemoveRoom(SND_ROOM* room);
bool sndUpdateRoom(SND_ROOM* room, SND_FVECTOR* pos);

bool sndAddDoor(SND_DOOR* door, SND_ROOM* a, SND_ROOM* b, SND_FVECTOR* pos, f32 dampen, f32 open,
                u8 fxVol, s16 filterCoef[4], u32 flags);
bool sndRemoveDoor(SND_DOOR* door);

//
// Functions to add emitters to logical rooms
//
SND_VOICEID sndAddEmitter(SND_EMITTER* em, SND_FVECTOR* pos, SND_FVECTOR* dir, f32 maxDis, f32 comp,
                          u32 flags, SND_FXID fxid, u8 maxVol, u8 minVol, SND_ROOM* room);
SND_VOICEID sndAddEmitterEx(SND_EMITTER* em_buffer, SND_FVECTOR* pos, SND_FVECTOR* dir, f32 maxDis,
                            f32 comp, u32 flags, SND_FXID fxid, u16 groupid, u8 maxVol, u8 minVol,
                            SND_ROOM* room);
SND_VOICEID sndAddEmitterPara(SND_EMITTER* em, SND_FVECTOR* pos, SND_FVECTOR* dir, f32 maxDis,
                              f32 comp, u32 flags, SND_FXID fxid, u8 maxVol, u8 minVol,
                              SND_ROOM* room, SND_PARAMETER_INFO* para);
SND_VOICEID sndAddEmitterParaEx(SND_EMITTER* em_buffer, SND_FVECTOR* pos, SND_FVECTOR* dir,
                                f32 maxDis, f32 comp, u32 flags, SND_FXID fxid, u16 groupid,
                                u8 maxVol, u8 minVol, SND_ROOM* room, SND_PARAMETER_INFO* para);

//
// Listener related functions
//
bool sndAddListener(SND_LISTENER* li, SND_FVECTOR* pos, SND_FVECTOR* dir, SND_FVECTOR* heading,
                    SND_FVECTOR* up, f32 front_sur, f32 back_sur, f32 soundSpeed, u32 flags, u8 vol,
                    SND_ROOM* room);
bool sndAddListenerEx(SND_LISTENER* li, SND_FVECTOR* pos, SND_FVECTOR* dir, SND_FVECTOR* heading,
                      SND_FVECTOR* up, f32 front_sur, f32 back_sur, f32 soundSpeed,
                      f32 volPosOffset, u32 flags, u8 vol, SND_ROOM* room);
bool sndUpdateListener(SND_LISTENER* li, SND_FVECTOR* pos, SND_FVECTOR* dir, SND_FVECTOR* heading,
                       SND_FVECTOR* up, u8 vol, SND_ROOM* room);
bool sndRemoveListener(SND_LISTENER* li);
//
// Functions to add emitters directly to a studio
//
SND_VOICEID sndAddEmitter2Studio(SND_EMITTER* em, SND_FVECTOR* pos, SND_FVECTOR* dir, f32 maxDis,
                                 f32 comp, u32 flags, SND_FXID fxid, u8 maxVol, u8 minVol,
                                 u8 studio);
SND_VOICEID sndAddEmitter2StudioEx(SND_EMITTER* em_buffer, SND_FVECTOR* pos, SND_FVECTOR* dir,
                                   f32 maxDis, f32 comp, u32 flags, SND_FXID fxid, u16 groupid,
                                   u8 maxVol, u8 minVol, u8 studio);
SND_VOICEID sndAddEmitter2StudioPara(SND_EMITTER* em, SND_FVECTOR* pos, SND_FVECTOR* dir,
                                     f32 maxDis, f32 comp, u32 flags, SND_FXID fxid, u8 maxVol,
                                     u8 minVol, u8 studio, SND_PARAMETER_INFO* para);
SND_VOICEID sndAddEmitter2StudioParaEx(SND_EMITTER* em_buffer, SND_FVECTOR* pos, SND_FVECTOR* dir,
                                       f32 maxDis, f32 comp, u32 flags, SND_FXID fxid, u16 groupid,
                                       u8 maxVol, u8 minVol, u8 studio, SND_PARAMETER_INFO* para);
//
// Maintain emitters
//
bool sndUpdateEmitter(SND_EMITTER* em, SND_FVECTOR* pos, SND_FVECTOR* dir, u8 maxVol,
                      SND_ROOM* room);

bool sndRemoveEmitter(SND_EMITTER* em);

//
// Misc. 3D functions
//
bool sndCheckEmitter(SND_EMITTER* em);
SND_VOICEID sndEmitterVoiceID(SND_EMITTER* em);

typedef struct SND_3DINFO {
  u8 vol;
  u8 pan;
  u8 span;
  u16 doppler;
} SND_3DINFO;

void sndGet3DParameters(SND_3DINFO* info, SND_FVECTOR* pos, SND_FVECTOR* dir, f32 maxDis, f32 comp,
                        u8 maxVol, u8 minVol, SND_ROOM* room);

// ------------------------- Debug Functions -----------------------

u8 sndDbgGetActiveVoices(void);
void* sndConvert32BitSDIRTo64BitSDIR(void* sdir_int);

#ifdef __cplusplus
}
#endif
#endif // _MUSYX_MUSYX
