#ifndef _MUSYX_MUSYX_PRIV
#define _MUSYX_MUSYX_PRIV

#include "musyx/assert.h"
#include "musyx/musyx.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct SND_STUDIO_INPUT {
  // total size: 0x4
  unsigned char vol;       // offset 0x0, size 0x1
  unsigned char volA;      // offset 0x1, size 0x1
  unsigned char volB;      // offset 0x2, size 0x1
  unsigned char srcStudio; // offset 0x3, size 0x1
} SND_STUDIO_INPUT;

typedef struct SYNTH_VOICELIST {
  // total size: 0x4
  u8 prev;  // offset 0x0, size 0x1
  u8 next;  // offset 0x1, size 0x1
  u16 user; // offset 0x2, size 0x2
} SYNTH_VOICELIST;
extern SYNTH_VOICELIST voicePrioSortVoices[64];
extern u8 voicePrioSortVoicesRoot[256];
extern SYNTH_VOICELIST voicePrioSortVoices[64];

typedef struct SYNTH_ROOTLIST {
  // total size: 0x4
  unsigned short next; // offset 0x0, size 0x2
  unsigned short prev; // offset 0x2, size 0x2
} SYNTH_ROOTLIST;

extern SYNTH_ROOTLIST voicePrioSortRootList[256];

typedef struct synthInfo {
  u32 mixFrq;
  u32 numSamples;
  SND_PLAYBACKINFO pbInfo;
  u8 voiceNum;
  u8 maxMusic;
  u8 maxSFX;
  u8 studioNum;
} SynthInfo;

typedef struct ADSR_VARS {
  u8 mode;
  u8 state;
  u32 cnt;
  s32 currentVolume;
  s32 currentIndex;
  s32 currentDelta;

  union data {
    struct _dls {
      u32 aTime;
      u32 dTime;
      u16 sLevel;
      u32 rTime;
      u16 cutOff;
      u8 aMode;
    } dls;

    struct _linear {
      u32 aTime;
      u32 dTime;
      u16 sLevel;
      u32 rTime;
    } linear;
  } data;
} ADSR_VARS;

typedef struct _PBMIX {
  // total size: 0x24
  unsigned short vL;          // offset 0x0, size 0x2
  unsigned short vDeltaL;     // offset 0x2, size 0x2
  unsigned short vR;          // offset 0x4, size 0x2
  unsigned short vDeltaR;     // offset 0x6, size 0x2
  unsigned short vAuxAL;      // offset 0x8, size 0x2
  unsigned short vDeltaAuxAL; // offset 0xA, size 0x2
  unsigned short vAuxAR;      // offset 0xC, size 0x2
  unsigned short vDeltaAuxAR; // offset 0xE, size 0x2
  unsigned short vAuxBL;      // offset 0x10, size 0x2
  unsigned short vDeltaAuxBL; // offset 0x12, size 0x2
  unsigned short vAuxBR;      // offset 0x14, size 0x2
  unsigned short vDeltaAuxBR; // offset 0x16, size 0x2
  unsigned short vAuxBS;      // offset 0x18, size 0x2
  unsigned short vDeltaAuxBS; // offset 0x1A, size 0x2
  unsigned short vS;          // offset 0x1C, size 0x2
  unsigned short vDeltaS;     // offset 0x1E, size 0x2
  unsigned short vAuxAS;      // offset 0x20, size 0x2
  unsigned short vDeltaAuxAS; // offset 0x22, size 0x2
} _PBMIX;

typedef struct _PBITD {
  // total size: 0xE
  unsigned short flag;         // offset 0x0, size 0x2
  unsigned short bufferHi;     // offset 0x2, size 0x2
  unsigned short bufferLo;     // offset 0x4, size 0x2
  unsigned short shiftL;       // offset 0x6, size 0x2
  unsigned short shiftR;       // offset 0x8, size 0x2
  unsigned short targetShiftL; // offset 0xA, size 0x2
  unsigned short targetShiftR; // offset 0xC, size 0x2
} _PBITD;

typedef struct _PBUPDATE {
  // total size: 0xE
  unsigned short updNum[5]; // offset 0x0, size 0xA
  unsigned short dataHi;    // offset 0xA, size 0x2
  unsigned short dataLo;    // offset 0xC, size 0x2
} _PBUPDATE;

typedef struct _PBDPOP {
  // total size: 0x12
  unsigned short aL;     // offset 0x0, size 0x2
  unsigned short aAuxAL; // offset 0x2, size 0x2
  unsigned short aAuxBL; // offset 0x4, size 0x2
  unsigned short aR;     // offset 0x6, size 0x2
  unsigned short aAuxAR; // offset 0x8, size 0x2
  unsigned short aAuxBR; // offset 0xA, size 0x2
  unsigned short aS;     // offset 0xC, size 0x2
  unsigned short aAuxAS; // offset 0xE, size 0x2
  unsigned short aAuxBS; // offset 0x10, size 0x2
} _PBDPOP;

typedef struct _PBVE {
  // total size: 0x4
  unsigned short currentVolume; // offset 0x0, size 0x2
  unsigned short currentDelta;  // offset 0x2, size 0x2
} _PBVE;

typedef struct _PBFIR {
  // total size: 0x6
  unsigned short numCoefs; // offset 0x0, size 0x2
  unsigned short coefsHi;  // offset 0x2, size 0x2
  unsigned short coefsLo;  // offset 0x4, size 0x2
} _PBFIR;

typedef struct _PBADDR {
  // total size: 0x10
  unsigned short loopFlag;         // offset 0x0, size 0x2
  unsigned short format;           // offset 0x2, size 0x2
  unsigned short loopAddressHi;    // offset 0x4, size 0x2
  unsigned short loopAddressLo;    // offset 0x6, size 0x2
  unsigned short endAddressHi;     // offset 0x8, size 0x2
  unsigned short endAddressLo;     // offset 0xA, size 0x2
  unsigned short currentAddressHi; // offset 0xC, size 0x2
  unsigned short currentAddressLo; // offset 0xE, size 0x2
} _PBADDR;

typedef struct _PBADPCM {
  // total size: 0x28
  unsigned short a[8][2];    // offset 0x0, size 0x20
  unsigned short gain;       // offset 0x20, size 0x2
  unsigned short pred_scale; // offset 0x22, size 0x2
  unsigned short yn1;        // offset 0x24, size 0x2
  unsigned short yn2;        // offset 0x26, size 0x2
} _PDADPCM;

typedef struct _PBSRC {
  // total size: 0xE
  unsigned short ratioHi;            // offset 0x0, size 0x2
  unsigned short ratioLo;            // offset 0x2, size 0x2
  unsigned short currentAddressFrac; // offset 0x4, size 0x2
  unsigned short last_samples[4];    // offset 0x6, size 0x8
} _PBSRC;

typedef struct _PBADPCMLOOP {
  // total size: 0x6
  unsigned short loop_pred_scale; // offset 0x0, size 0x2
  unsigned short loop_yn1;        // offset 0x2, size 0x2
  unsigned short loop_yn2;        // offset 0x4, size 0x2
} _PBADPCMLOOP;

typedef struct _PB {
  // total size: 0xBC
  unsigned short nextHi;         // offset 0x0, size 0x2
  unsigned short nextLo;         // offset 0x2, size 0x2
  unsigned short currHi;         // offset 0x4, size 0x2
  unsigned short currLo;         // offset 0x6, size 0x2
  unsigned short srcSelect;      // offset 0x8, size 0x2
  unsigned short coefSelect;     // offset 0xA, size 0x2
  unsigned short mixerCtrl;      // offset 0xC, size 0x2
  unsigned short state;          // offset 0xE, size 0x2
  unsigned short loopType;       // offset 0x10, size 0x2
  struct _PBMIX mix;             // offset 0x12, size 0x24
  struct _PBITD itd;             // offset 0x36, size 0xE
  struct _PBUPDATE update;       // offset 0x44, size 0xE
  struct _PBDPOP dpop;           // offset 0x52, size 0x12
  struct _PBVE ve;               // offset 0x64, size 0x4
  struct _PBFIR fir;             // offset 0x68, size 0x6
  struct _PBADDR addr;           // offset 0x6E, size 0x10
  struct _PBADPCM adpcm;         // offset 0x7E, size 0x28
  struct _PBSRC src;             // offset 0xA6, size 0xE
  struct _PBADPCMLOOP adpcmLoop; // offset 0xB4, size 0x6
  unsigned short streamLoopCnt;  // offset 0xBA, size 0x2
} _PB;

typedef struct SAMPLE_INFO {
  // total size: 0x20
  u32 info;        // offset 0x0, size 0x4
  void* addr;      // offset 0x4, size 0x4
  void* extraData; // offset 0x8, size 0x4
  u32 offset;      // offset 0xC, size 0x4
  u32 length;      // offset 0x10, size 0x4
  u32 loop;        // offset 0x14, size 0x4
  u32 loopLength;  // offset 0x18, size 0x4
  u8 compType;     // offset 0x1C, size 0x1
} SAMPLE_INFO;

typedef struct GROUP_DATA {
  // total size: 0x28
  unsigned long nextOff;   // offset 0x0, size 0x4
  unsigned short id;       // offset 0x4, size 0x2
  unsigned short type;     // offset 0x6, size 0x2
  unsigned long macroOff;  // offset 0x8, size 0x4
  unsigned long sampleOff; // offset 0xC, size 0x4
  unsigned long curveOff;  // offset 0x10, size 0x4
  unsigned long keymapOff; // offset 0x14, size 0x4
  unsigned long layerOff;  // offset 0x18, size 0x4
  union {
    struct fx {
      // total size: 0x4
      unsigned long tableOff; // offset 0x0, size 0x4
    } fx;
    struct song {
      // total size: 0xC
      unsigned long normpageOff;  // offset 0x0, size 0x4
      unsigned long drumpageOff;  // offset 0x4, size 0x4
      unsigned long midiSetupOff; // offset 0x8, size 0x4
    } song;
  } data; // offset 0x1C, size 0xC
} GROUP_DATA;

typedef struct SAMPLE_HEADER {
  // total size: 0x10
  unsigned long info;       // offset 0x0, size 0x4
  unsigned long length;     // offset 0x4, size 0x4
  unsigned long loopOffset; // offset 0x8, size 0x4
  unsigned long loopLength; // offset 0xC, size 0x4
} SAMPLE_HEADER;

typedef struct SDIR_DATA {
  // total size: 0x20
  unsigned short id;           // offset 0x0, size 0x2
  unsigned short ref_cnt;      // offset 0x2, size 0x2
  unsigned long offset;        // offset 0x4, size 0x4
  void* addr;                  // offset 0x8, size 0x4
  struct SAMPLE_HEADER header; // offset 0xC, size 0x10
  unsigned long extraData;     // offset 0x1C, size 0x4
} SDIR_DATA;

typedef struct SDIR_TAB {
  // total size: 0xC
  struct SDIR_DATA* data; // offset 0x0, size 0x4
  void* base;             // offset 0x4, size 0x4
  unsigned short numSmp;  // offset 0x8, size 0x2
  unsigned short res;     // offset 0xA, size 0x2
} SDIR_TAB;

typedef struct DATA_TAB {
  // total size: 0x8
  void* data;              // offset 0x0, size 0x4
  unsigned short id;       // offset 0x4, size 0x2
  unsigned short refCount; // offset 0x6, size 0x2
} DATA_TAB;

typedef struct LAYER_TAB {
  // total size: 0xC
  void* data;              // offset 0x0, size 0x4
  unsigned short id;       // offset 0x4, size 0x2
  unsigned short num;      // offset 0x6, size 0x2
  unsigned short refCount; // offset 0x8, size 0x2
  unsigned short reserved; // offset 0xA, size 0x2
} LAYER_TAB;

typedef struct MAC_MAINTAB {
  // total size: 0x4
  unsigned short num;         // offset 0x0, size 0x2
  unsigned short subTabIndex; // offset 0x2, size 0x2
} MAC_MAINTAB;

typedef struct MAC_SUBTAB {
  // total size: 0x8
  void* data;              // offset 0x0, size 0x4
  unsigned short id;       // offset 0x4, size 0x2
  unsigned short refCount; // offset 0x6, size 0x2
} MAC_SUBTAB;

typedef struct GSTACK {
  // total size: 0xC
  struct GROUP_DATA* gAddr;   // offset 0x0, size 0x4
  struct SDIR_DATA* sdirAddr; // offset 0x4, size 0x4
  void* prjAddr;              // offset 0x8, size 0x4
} GSTACK;

typedef struct VSampleInfo {
  // total size: 0xC
  void* loopBufferAddr; // offset 0x0, size 0x4
  u32 loopBufferLength; // offset 0x4, size 0x4
  u8 inLoopBuffer;      // offset 0x8, size 0x1
} VSampleInfo;

typedef struct DSPvoice {
  struct _PB* pb;
  void* patchData;
  void* itdBuffer;
  struct DSPvoice* next;
  struct DSPvoice* prev;
  struct DSPvoice* nextAlien;
  u32 mesgCallBackUserValue;
  u32 prio;
  u32 currentAddr;
  u32 changed[5];
  u32 pitch[5];
  u16 volL;
  u16 volR;
  u16 volS;
  u16 volLa;
  u16 volRa;
  u16 volSa;
  u16 volLb;
  u16 volRb;
  u16 volSb;
  u16 lastVolL;
  u16 lastVolR;
  u16 lastVolS;
  u16 lastVolLa;
  u16 lastVolRa;
  u16 lastVolSa;
  u16 lastVolLb;
  u16 lastVolRb;
  u16 lastVolSb;
  u16 smp_id;
  SAMPLE_INFO smp_info;
  VSampleInfo vSampleInfo;
  u8 streamLoopPS;
  ADSR_VARS adsr;
  u16 srcTypeSelect;
  u16 srcCoefSelect;
  u16 itdShiftL;
  u16 itdShiftR;
  u8 singleOffset;
  struct {
    u32 posHi;
    u32 posLo;
    u32 pitch;
  } playInfo;

  struct {
    u8 pitch;
    u8 vol;
    u8 volA;
    u8 volB;
  } lastUpdate;

  u32 virtualSampleID;
  u8 state;
  u8 postBreak;
  u8 startupBreak;
  u8 studio;
  u32 flags;
} DSPvoice;

typedef struct VID_LIST {
  struct VID_LIST* next;
  struct VID_LIST* prev;
  u32 vid;
  u32 root;
} VID_LIST;

typedef enum {
  MAC_STATE_RUNNABLE = 0,
  MAC_STATE_YIELDED,
  MAC_STATE_STOPPED,
} MAC_STATE;

typedef struct MSTEP {
  u32 para[2];
} MSTEP;

typedef struct CALLSTACK {
  struct MSTEP* addr;
  struct MSTEP* curAddr;
} CALLSTACK;

typedef struct SYNTH_QUEUE {
  struct SYNTH_QUEUE* next;
  struct SYNTH_QUEUE* prev;
  u8 voice;
  u8 jobTabIndex;
} SYNTH_QUEUE;

typedef enum {
  SYNTH_JOBTYPE_LOW = 0,
  SYNTH_JOBTYPE_ZERO = 1,
  SYNTH_JOBTYPE_EVENT = 2,
} SYNTH_JOBTYPE;

typedef struct {
  // total size: 0xC
  SYNTH_QUEUE* lowPrecision; // offset 0x0, size 0x4
  SYNTH_QUEUE* event;        // offset 0x4, size 0x4
  SYNTH_QUEUE* zeroOffset;   // offset 0x8, size 0x4
} SYNTH_JOBTAB;

typedef struct SYNTH_LFO {
  u32 time;
  u32 period;
  s16 value;
  s16 lastValue;
} SYNTH_LFO;

typedef struct SYNTHMasterFader {
  // total size: 0x30
  float volume;          // offset 0x0, size 0x4
  float target;          // offset 0x4, size 0x4
  float start;           // offset 0x8, size 0x4
  float time;            // offset 0xC, size 0x4
  float deltaTime;       // offset 0x10, size 0x4
  float pauseVol;        // offset 0x14, size 0x4
  float pauseTarget;     // offset 0x18, size 0x4
  float pauseStart;      // offset 0x1C, size 0x4
  float pauseTime;       // offset 0x20, size 0x4
  float pauseDeltaTime;  // offset 0x24, size 0x4
  unsigned long seqId;   // offset 0x28, size 0x4
  unsigned char seqMode; // offset 0x2C, size 0x1
  unsigned char type;    // offset 0x2D, size 0x1
} SYNTHMasterFader;

typedef struct CTRL_SOURCE {
  u8 midiCtrl;
  u8 combine;
  long scale;
} CTRL_SOURCE;

typedef struct CTRL_DEST {
  CTRL_SOURCE source[4];
  u16 oldValue;
  u8 numSource;
} CTRL_DEST;

typedef struct SND_VIRTUALSAMPLE_INFO {
  // total size: 0x14
  unsigned short smpID;  // offset 0x0, size 0x2
  unsigned short instID; // offset 0x2, size 0x2
  union vsData {
    struct vsUpdate {
      // total size: 0x10
      unsigned long off1; // offset 0x0, size 0x4
      unsigned long len1; // offset 0x4, size 0x4
      unsigned long off2; // offset 0x8, size 0x4
      unsigned long len2; // offset 0xC, size 0x4
    } update;
  } data;
} SND_VIRTUALSAMPLE_INFO;

typedef struct VS_BUFFER {
  // total size: 0x24
  unsigned char state;            // offset 0x0, size 0x1
  unsigned char hwId;             // offset 0x1, size 0x1
  unsigned char smpType;          // offset 0x2, size 0x1
  unsigned char voice;            // offset 0x3, size 0x1
  unsigned long last;             // offset 0x4, size 0x4
  unsigned long finalGoodSamples; // offset 0x8, size 0x4
  unsigned long finalLast;        // offset 0xC, size 0x4
  SND_VIRTUALSAMPLE_INFO info;    // offset 0x10, size 0x14
} VS_BUFFER;

typedef struct _VS {
  // total size: 0x950
  unsigned char numBuffers;   // offset 0x0, size 0x1
  unsigned long bufferLength; // offset 0x4, size 0x4
  VS_BUFFER streamBuffer[64]; // offset 0x8, size 0x900
  unsigned char voices[64];   // offset 0x908, size 0x40
  unsigned short nextInstID;  // offset 0x948, size 0x2
  unsigned long (*callback)(unsigned char,
                            struct SND_VIRTUALSAMPLE_INFO*); // offset 0x94C, size 0x4
} VS;

extern VS vs;

#pragma push
#pragma pack(4)
typedef struct SYNTH_VOICE {
  SYNTH_QUEUE lowPrecisionJob;
  SYNTH_QUEUE zeroOffsetJob; // offset 0xC, size 0xC
  SYNTH_QUEUE eventJob;      // offset 0x18, size 0xC
  u64 lastLowCallTime;
  u64 lastZeroCallTime;
  MSTEP* addr;
  MSTEP* curAddr;
  struct SYNTH_VOICE* nextMacActive;
  struct SYNTH_VOICE* prevMacActive;
  struct SYNTH_VOICE* nextTimeQueueMacro;
  struct SYNTH_VOICE* prevTimeQueueMacro;
  MAC_STATE macState;
  MSTEP* trapEventAddr[3];
  MSTEP* trapEventCurAddr[3];
  u8 trapEventAny;
  CALLSTACK callStack[4];
  u8 callStackEntryNum;
  u8 callStackIndex;
  u64 macStartTime;
  u64 wait;
  u64 waitTime;
  u8 timeUsedByInput;
  u16 loop;
  long local_vars[16];
  u32 child;
  u32 parent;
  u32 id;
  VID_LIST* vidList;
  VID_LIST* vidMasterList;
  u16 allocId;
  u16 macroId;
  u8 keyGroup;
  u32 lastVID;
  u8 prio;
  u16 ageSpeed;
  u32 age;
  u64 cFlags;
  u8 block;
  u8 fxFlag;
  u8 vGroup;
  u8 studio;
  u8 track;
  u8 midi;
  u8 midiSet;
  u8 section;
  u32 sInfo;
  u32 playFrq;
  u16 curNote;
  s8 curDetune;
  u8 orgNote;
  u8 lastNote;
  u8 portType;
  u16 portLastCtrlState;
  u32 portDuration;
  u32 portCurPitch;
  u32 portTime;               // offset 0x13C, size 0x4
  u8 vibKeyRange;             // offset 0x140, size 0x1
  u8 vibCentRange;            // offset 0x141, size 0x1
  u32 vibPeriod;              // offset 0x144, size 0x4
  u32 vibCurTime;             // offset 0x148, size 0x4
  long vibCurOffset;          // offset 0x14C, size 0x4
  s16 vibModAddScale;         // offset 0x150, size 0x2
  u32 volume;                 // offset 0x154, size 0x4
  u32 orgVolume;              // offset 0x158, size 0x4
  float lastVolFaderScale;    // offset 0x15C, size 0x4
  u32 lastPan;                // offset 0x160, size 0x4
  u32 lastSPan;               // offset 0x164, size 0x4
  float treCurScale;          // offset 0x168, size 0x4
  u16 treScale;               // offset 0x16C, size 0x2
  u16 treModAddScale;         // offset 0x16E, size 0x2
  u32 panning[2];             // offset 0x170, size 0x8
  long panDelta[2];           // offset 0x178, size 0x8
  u32 panTarget[2];           // offset 0x180, size 0x8
  u32 panTime[2];             // offset 0x188, size 0x8
  u8 revVolScale;             // offset 0x190, size 0x1
  u8 revVolOffset;            // offset 0x191, size 0x1
  u8 volTable;                // offset 0x192, size 0x1
  u8 itdMode;                 // offset 0x193, size 0x1
  long envDelta;              // offset 0x194, size 0x4
  u32 envTarget;              // offset 0x198, size 0x4
  u32 envCurrent;             // offset 0x19C, size 0x4
  u32 sweepOff[2];            // offset 0x1A0, size 0x8
  long sweepAdd[2];           // offset 0x1A8, size 0x8
  long sweepCnt[2];           // offset 0x1B0, size 0x8
  u8 sweepNum[2];             // offset 0x1B8, size 0x2
  struct SYNTH_LFO lfo[2];    // offset 0x1BC, size 0x18
  u8 lfoUsedByInput[2];       // offset 0x1D4, size 0x2
  u8 pbLowerKeyRange;         // offset 0x1D6, size 0x1
  u8 pbUpperKeyRange;         // offset 0x1D7, size 0x1
  u16 pbLast;                 // offset 0x1D8, size 0x2
  struct ADSR_VARS pitchADSR; // offset 0x1DC, size 0x28
  s16 pitchADSRRange;         // offset 0x204, size 0x2
  u16 curPitch;               // offset 0x206, size 0x2
  struct setup {
    u8 vol;                     // offset 0x0, size 0x1
    u8 pan;                     // offset 0x1, size 0x1
    u8 midi;                    // offset 0x2, size 0x1
    u8 midiSet;                 // offset 0x3, size 0x1
    u8 section;                 // offset 0x4, size 0x1
    u8 track;                   // offset 0x5, size 0x1
    u8 vGroup;                  // offset 0x6, size 0x1
    u8 studio;                  // offset 0x7, size 0x1
    u8 itdMode;                 // offset 0x8, size 0x1
  } setup;                      // offset 0x208, size 0x9
  u32 midiDirtyFlags;           // offset 0x214, size 0x4
  CTRL_DEST inpVolume;          // offset 0x218, size 0x24
  CTRL_DEST inpPanning;         // offset 0x23C, size 0x24
  CTRL_DEST inpSurroundPanning; // offset 0x260, size 0x24
  CTRL_DEST inpPitchBend;       // offset 0x284, size 0x24
  CTRL_DEST inpDoppler;         // offset 0x2A8, size 0x24
  CTRL_DEST inpModulation;      // offset 0x2CC, size 0x24
  CTRL_DEST inpPedal;           // offset 0x2F0, size 0x24
  CTRL_DEST inpPortamento;      // offset 0x314, size 0x24
  CTRL_DEST inpPreAuxA;         // offset 0x338, size 0x24
  CTRL_DEST inpReverb;          // offset 0x35C, size 0x24
  CTRL_DEST inpPreAuxB;         // offset 0x380, size 0x24
  CTRL_DEST inpPostAuxB;        // offset 0x3A4, size 0x24
  CTRL_DEST inpTremolo;         // offset 0x3C8, size 0x24
  u8 mesgNum;                   // offset 0x3EC, size 0x1
  u8 mesgRead;                  // offset 0x3ED, size 0x1
  u8 mesgWrite;                 // offset 0x3EE, size 0x1
  long mesgQueue[4];            // offset 0x3F0, size 0x10
  u16 curOutputVolume;          // offset 0x400, size 0x2
} SYNTH_VOICE;

typedef struct synthITDInfo {
  // total size: 0x2
  unsigned char music; // offset 0x0, size 0x1
  unsigned char sfx;   // offset 0x1, size 0x1
} synthITDInfo;

#pragma pop

typedef struct LAYER {
  // total size: 0xC
  unsigned short id;         // offset 0x0, size 0x2
  unsigned char keyLow;      // offset 0x2, size 0x1
  unsigned char keyHigh;     // offset 0x3, size 0x1
  signed char transpose;     // offset 0x4, size 0x1
  unsigned char volume;      // offset 0x5, size 0x1
  signed short prioOffset;   // offset 0x6, size 0x2
  unsigned char panning;     // offset 0x8, size 0x1
  unsigned char reserved[3]; // offset 0x9, size 0x3
} LAYER;

typedef struct KEYMAP {
  // total size: 0x8
  unsigned short id;         // offset 0x0, size 0x2
  signed char transpose;     // offset 0x2, size 0x1
  unsigned char panning;     // offset 0x3, size 0x1
  signed short prioOffset;   // offset 0x4, size 0x2
  unsigned char reserved[2]; // offset 0x6, size 0x2
} KEYMAP;

typedef struct MEM_DATA {
  // total size: 0x408
  unsigned long nextOff;   // offset 0x0, size 0x4
  unsigned short id;       // offset 0x4, size 0x2
  unsigned short reserved; // offset 0x6, size 0x2
  union {
    struct {
      // total size: 0x10
      unsigned long num; // offset 0x0, size 0x4
      LAYER entry[1];    // offset 0x4, size 0xC
    } layer;
    KEYMAP map[128];
    unsigned char tab[1];
    MSTEP cmd[1][2];
  } data; // offset 0x8, size 0x400
} MEM_DATA;

typedef struct POOL_DATA {
  // total size: 0x10
  u32 macroOff;  // offset 0x0, size 0x4
  u32 curveOff;  // offset 0x4, size 0x4
  u32 keymapOff; // offset 0x8, size 0x4
  u32 layerOff;  // offset 0xC, size 0x4
} POOL_DATA;

typedef struct SAL_VOLINFO {
  // total size: 0x24
  float volL;     // offset 0x0, size 0x4
  float volR;     // offset 0x4, size 0x4
  float volS;     // offset 0x8, size 0x4
  float volAuxAL; // offset 0xC, size 0x4
  float volAuxAR; // offset 0x10, size 0x4
  float volAuxAS; // offset 0x14, size 0x4
  float volAuxBL; // offset 0x18, size 0x4
  float volAuxBR; // offset 0x1C, size 0x4
  float volAuxBS; // offset 0x20, size 0x4
} SAL_VOLINFO;

typedef struct SAL_PANINFO {
  // total size: 0x30
  u32 pan_i;     // offset 0x0, size 0x4
  u32 pan_im;    // offset 0x4, size 0x4
  u32 span_i;    // offset 0x8, size 0x4
  u32 span_im;   // offset 0xC, size 0x4
  u32 rpan_i;    // offset 0x10, size 0x4
  u32 rpan_im;   // offset 0x14, size 0x4
  float pan_f;   // offset 0x18, size 0x4
  float pan_fm;  // offset 0x1C, size 0x4
  float span_f;  // offset 0x20, size 0x4
  float span_fm; // offset 0x24, size 0x4
  float rpan_f;  // offset 0x28, size 0x4
  float rpan_fm; // offset 0x2C, size 0x4
} SAL_PANINFO;

typedef struct _SPB {
  // total size: 0x36
  unsigned short dpopLHi;     // offset 0x0, size 0x2
  unsigned short dpopLLo;     // offset 0x2, size 0x2
  unsigned short dpopLDelta;  // offset 0x4, size 0x2
  unsigned short dpopRHi;     // offset 0x6, size 0x2
  unsigned short dpopRLo;     // offset 0x8, size 0x2
  unsigned short dpopRDelta;  // offset 0xA, size 0x2
  unsigned short dpopSHi;     // offset 0xC, size 0x2
  unsigned short dpopSLo;     // offset 0xE, size 0x2
  unsigned short dpopSDelta;  // offset 0x10, size 0x2
  unsigned short dpopALHi;    // offset 0x12, size 0x2
  unsigned short dpopALLo;    // offset 0x14, size 0x2
  unsigned short dpopALDelta; // offset 0x16, size 0x2
  unsigned short dpopARHi;    // offset 0x18, size 0x2
  unsigned short dpopARLo;    // offset 0x1A, size 0x2
  unsigned short dpopARDelta; // offset 0x1C, size 0x2
  unsigned short dpopASHi;    // offset 0x1E, size 0x2
  unsigned short dpopASLo;    // offset 0x20, size 0x2
  unsigned short dpopASDelta; // offset 0x22, size 0x2
  unsigned short dpopBLHi;    // offset 0x24, size 0x2
  unsigned short dpopBLLo;    // offset 0x26, size 0x2
  unsigned short dpopBLDelta; // offset 0x28, size 0x2
  unsigned short dpopBRHi;    // offset 0x2A, size 0x2
  unsigned short dpopBRLo;    // offset 0x2C, size 0x2
  unsigned short dpopBRDelta; // offset 0x2E, size 0x2
  unsigned short dpopBSHi;    // offset 0x30, size 0x2
  unsigned short dpopBSLo;    // offset 0x32, size 0x2
  unsigned short dpopBSDelta; // offset 0x34, size 0x2
} _SPB;

typedef struct DSPhostDPop {
  // total size: 0x24
  long l;  // offset 0x0, size 0x4
  long r;  // offset 0x4, size 0x4
  long s;  // offset 0x8, size 0x4
  long lA; // offset 0xC, size 0x4
  long rA; // offset 0x10, size 0x4
  long sA; // offset 0x14, size 0x4
  long lB; // offset 0x18, size 0x4
  long rB; // offset 0x1C, size 0x4
  long sB; // offset 0x20, size 0x4
} DSPhostDPop;

typedef struct DSPinput {
  // total size: 0xC
  unsigned char studio;          // offset 0x0, size 0x1
  unsigned short vol;            // offset 0x2, size 0x2
  unsigned short volA;           // offset 0x4, size 0x2
  unsigned short volB;           // offset 0x6, size 0x2
  struct SND_STUDIO_INPUT* desc; // offset 0x8, size 0x4
} DSPinput;

typedef struct DSPstudioinfo {
  // total size: 0xBC
  struct _SPB* spb;                // offset 0x0, size 0x4
  struct DSPhostDPop hostDPopSum;  // offset 0x4, size 0x24
  long* main[2];                   // offset 0x28, size 0x8
  long* auxA[3];                   // offset 0x30, size 0xC
  long* auxB[3];                   // offset 0x3C, size 0xC
  struct DSPvoice* voiceRoot;      // offset 0x48, size 0x4
  struct DSPvoice* alienVoiceRoot; // offset 0x4C, size 0x4
  unsigned char state;             // offset 0x50, size 0x1
  unsigned char isMaster;          // offset 0x51, size 0x1
  unsigned char numInputs;         // offset 0x52, size 0x1
  SND_STUDIO_TYPE type;            // offset 0x54, size 0x4
  struct DSPinput in[7];           // offset 0x58, size 0x54
  SND_AUX_CALLBACK auxAHandler;    // offset 0xAC, size 0x4
  SND_AUX_CALLBACK auxBHandler;    // offset 0xB0, size 0x4
  void* auxAUser;                  // offset 0xB4, size 0x4
  void* auxBUser;                  // offset 0xB8, size 0x4
} DSPstudioinfo;

extern DSPstudioinfo dspStudio[8];

extern SYNTH_VOICE* synthVoice;

extern DSPvoice* dspVoice;
typedef s32 (*SND_COMPARE)(void*, void*);

typedef struct CHANNEL_DEFAULTS {
  // total size: 0x1
  unsigned char pbRange; // offset 0x0, size 0x1
} CHANNEL_DEFAULTS;
typedef struct FX_TAB {
  // total size: 0xA
  unsigned short id;       // offset 0x0, size 0x2
  unsigned short macro;    // offset 0x2, size 0x2
  unsigned char maxVoices; // offset 0x4, size 0x1
  unsigned char priority;  // offset 0x5, size 0x1
  unsigned char volume;    // offset 0x6, size 0x1
  unsigned char panning;   // offset 0x7, size 0x1
  unsigned char key;       // offset 0x8, size 0x1
  unsigned char vGroup;    // offset 0x9, size 0x1
} FX_TAB;

typedef struct FX_DATA {
  // total size: 0xE
  unsigned short num;       // offset 0x0, size 0x2
  unsigned short reserverd; // offset 0x2, size 0x2
  struct FX_TAB fx[1];      // offset 0x4, size 0xA
} FX_DATA;

typedef struct FX_GROUP {
  // total size: 0x8
  unsigned short gid;   // offset 0x0, size 0x2
  unsigned short fxNum; // offset 0x2, size 0x2
  struct FX_TAB* fxTab; // offset 0x4, size 0x4
} FX_GROUP;

typedef struct PAGE {
  // total size: 0x6
  unsigned short macro;    // offset 0x0, size 0x2
  unsigned char prio;      // offset 0x2, size 0x1
  unsigned char maxVoices; // offset 0x3, size 0x1
  unsigned char index;     // offset 0x4, size 0x1
  unsigned char reserved;  // offset 0x5, size 0x1
} PAGE;

typedef struct MIDI_CHANNEL_SETUP {
  // total size: 0x5
  unsigned char program; // offset 0x0, size 0x1
  unsigned char volume;  // offset 0x1, size 0x1
  unsigned char panning; // offset 0x2, size 0x1
  unsigned char reverb;  // offset 0x3, size 0x1
  unsigned char chorus;  // offset 0x4, size 0x1
} MIDI_CHANNEL_SETUP;

typedef struct MIDISETUP {
  // total size: 0x54
  u16 songId;                     // offset 0x0, size 0x2
  u16 reserved;                   // offset 0x2, size 0x2
  MIDI_CHANNEL_SETUP channel[16]; // offset 0x4, size 0x50
} MIDISETUP;

typedef struct ADSR_INFO {
  // total size: 0x14
  union ai_data {
    struct {
      // total size: 0x14
      long atime;            // offset 0x0, size 0x4
      long dtime;            // offset 0x4, size 0x4
      unsigned short slevel; // offset 0x8, size 0x2
      unsigned short rtime;  // offset 0xA, size 0x2
      long ascale;           // offset 0xC, size 0x4
      long dscale;           // offset 0x10, size 0x4
    } dls;
    struct {
      // total size: 0x8
      unsigned short atime;  // offset 0x0, size 0x2
      unsigned short dtime;  // offset 0x2, size 0x2
      unsigned short slevel; // offset 0x4, size 0x2
      unsigned short rtime;  // offset 0x6, size 0x2
    } linear;
  } data; // offset 0x0, size 0x14
} ADSR_INFO;

void dataInit(u32, u32); /* extern */
void dataInitStack();    /* extern */
u32 dataInsertSDir(SDIR_DATA* sdir, void* smp_data);
u32 dataRemoveSDir(SDIR_DATA* sdir);
u32 dataInsertMacro(u16 mid, void* macroaddr);
u32 dataRemoveMacro(u16 mid);
u32 dataInsertCurve(u16 cid, void* curvedata);
u32 dataRemoveCurve(u16 sid);
long dataGetSample(u16 sid, SAMPLE_INFO* newsmp);
void* dataGetCurve(u16 cid);
u32 dataAddSampleReference(u16 sid);
u32 dataRemoveSampleReference(u16 sid);
u32 dataInsertKeymap(u16 cid, void* keymapdata);
u32 dataRemoveKeymap(u16 sid);
u32 dataInsertLayer(u16 cid, void* layerdata, u16 size);
u32 dataRemoveLayer(u16 sid);
u32 dataInsertFX(u16 gid, FX_TAB* fx, u16 fxNum);
FX_TAB* dataGetFX(u16 fid);
s32 hwInit(u32* frq, u16 numVoices, u16 numStudios, u32 flags); /* extern */
void hwInitSamplePlayback(u32 v, u16 smpID, void* newsmp, u32 set_defadsr, u32 prio,
                          u32 callbackUserValue, u32 setSRC, u8 itdMode);
void hwEnableIrq();
void hwDisableIrq();
void* hwTransAddr(void* samples);

void seqInit(); /* extern */
unsigned long seqStartPlay(PAGE* norm, PAGE* drum, MIDISETUP* midiSetup, u32* song,
                           SND_PLAYPARA* para, u8 studio, u16 sgid);
unsigned long seqGetPrivateId(unsigned long seqId);
void streamInit(); /* extern */
void vsInit();     /* extern */
void hwExit();
void dataExit();
void s3dInit(s32); /* extern */
void s3dKillEmitterByFXID(FX_TAB* fxTab, unsigned long num);
void s3dExit();
void synthInit(u32, u8); /* extern */
void synthFXCloneMidiSetup(SYNTH_VOICE* dest, SYNTH_VOICE* src);
void synthSetMusicVolumeType(u8 vGroup, u8 type);

extern u32 synthGlobalVariable[16];
extern u16 voicePrioSortRootListRoot;
extern u8 voiceMusicRunning;
extern u8 voiceFxRunning;
extern u8 voiceListInsert;
extern u8 voiceListRoot;
void voiceSetPriority(struct SYNTH_VOICE* svoice, unsigned char prio);
u32 voiceIsLastStarted(struct SYNTH_VOICE* svoice);
s32 voiceKillSound(u32 voiceid);

extern u64 synthRealTime;
u32 synthGetTicksPerSecond(SYNTH_VOICE* svoice);
void synthKillVoicesByMacroReferences(u16* ref);
void synthExit();
u16 sndRand(void);
s16 sndSin(u16 angle);
void* sndBSearch(void* key, void* base, s32 num, s32 len, SND_COMPARE cmp);
void sndConvertMs(u32* time);
void sndConvertTicks(u32* out, SYNTH_VOICE* svoice);
u32 sndConvert2Ms(u32 time);
void hwActivateStudio(unsigned char studio, unsigned long isMaster, SND_STUDIO_TYPE type);
void hwDeactivateStudio(u8);
void hwSetPriority(unsigned long v, unsigned long prio);
u32 hwIsActive(u32);
u32 hwGlobalActivity();
void hwSetAUXProcessingCallbacks(unsigned char studio, SND_AUX_CALLBACK auxA, void* userA,
                                 SND_AUX_CALLBACK auxB, void* userB);
s16 varGet(SYNTH_VOICE* svoice, u32 ctrl, u8 index);

u32 sndGetPitch(u8 key, u32 sInfo);
extern SND_HOOKS salHooks;
extern u8 sndActive;
extern u8 synthIdleWaitActive;
extern SynthInfo synthInfo;
typedef s32 (*SND_MESSAGE_CALLBACK)(u32, u32);
typedef void (*SYNTH_MESSAGE_CALLBACK)(u32, s32);
typedef void (*SND_SOME_CALLBACK)();

extern SND_MESSAGE_CALLBACK salMessageCallback;
extern SYNTH_MESSAGE_CALLBACK synthMessageCallback;
/* Math */
void salApplyMatrix(const SND_FMATRIX* a, const SND_FVECTOR* b, SND_FVECTOR* out);
float salNormalizeVector(SND_FVECTOR* vec);
void salCrossProduct(SND_FVECTOR* out, const SND_FVECTOR* a, const SND_FVECTOR* b);
void salInvertMatrix(SND_FMATRIX* out, const SND_FMATRIX* in);

/* hardware */
u32 salInitAi(SND_SOME_CALLBACK, u32, u32*);
u32 salInitDsp(u32);
u32 salInitDspCtrl(u8 numVoices, u8 numStudios, u32 defaultStudioDPL2);
u32 salStartAi();
void salInitHRTFBuffer();
void salActivateVoice(DSPvoice* dsp_vptr, u8 studio);
void salDeactivateVoice(DSPvoice* dsp_vptr);
void salActivateStudio(u8 studio, u32 isMaster, SND_STUDIO_TYPE type);
void salDeactivateStudio(unsigned char studio);
void salActivateVoice(DSPvoice* dsp_vptr, u8 studio);
void salCalcVolume(u8 voltab_index, SAL_VOLINFO* vi, float vol, u32 pan, u32 span, float auxa,
                   float auxb, u32 itd, u32 dpl2);
void salReconnectVoice(DSPvoice* dsp_vptr, u8 studio);
void* salMalloc(u32 len);
void salFree(void* addr);

#define SAL_MAX_STUDIONUM 8
extern u8 salMaxStudioNum;
extern u8 salNumVoices;

/* Stream */
typedef s32 (*SND_STREAM_UPDATE_CALLBACK)(void* buffer1, u32 len1, void* buffer2, u32 len2,
                                          void* user);
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

void streamOutputModeChanged();
u8 inpTranslateExCtrl(unsigned char ctrl);
void inpSetGlobalMIDIDirtyFlag(u8 chan, u8 midiSet, s32 flag);
void inpAddCtrl(struct CTRL_DEST* dest, unsigned char ctrl, long scale, unsigned char comb,
                unsigned long isVar);
void inpSetExCtrl(SYNTH_VOICE* svoice, unsigned char ctrl, signed short v);
CHANNEL_DEFAULTS* inpGetChannelDefaults(unsigned char midi, unsigned char midiSet);
extern CTRL_DEST inpAuxA[8][4];
extern CTRL_DEST inpAuxB[8][4];
void inpSetMidiLastNote(u8 midi, u8 midiSet, u8 key);
u8 inpGetMidiLastNote(u8 midi, u8 midiSet);
unsigned short inpGetExCtrl(SYNTH_VOICE* svoice, unsigned char ctrl);
unsigned short inpGetMidiCtrl(unsigned char ctrl, unsigned char channel, unsigned char set);
void inpSetMidiLastNote(unsigned char midi, unsigned char midiSet, unsigned char key);
u16 inpGetModulation(SYNTH_VOICE* svoice);
/* TODO: Figure out what `unk` is */
void hwSetSRCType(u32 v, u8 salSRCType);
void hwSetITDMode(u32 v, u8 mode);
void hwSetPolyPhaseFilter(unsigned long v, unsigned char salCoefSel);
bool hwAddInput(u8 studio, SND_STUDIO_INPUT* in_desc);
bool hwRemoveInput(u8 studio, SND_STUDIO_INPUT* in_desc);
void hwChangeStudio(u32 v, u8 studio);
void hwDisableHRTF();

extern u32 dspHRTFOn;

extern u16* dspCmdList;
extern u16 dspCmdFirstSize;

extern u8 dspScale2IndexTab[1024];

typedef void* (*ARAMUploadCallback)(u32, u32);

u32 aramGetStreamBufferAddress(unsigned char id, unsigned long* len);
void aramUploadData(void* mram, unsigned long aram, unsigned long len, unsigned long highPrio,
                    void (*callback)(unsigned long), unsigned long user);
void aramFreeStreamBuffer(u8 id);
void* aramStoreData(void* src, unsigned long len);
void aramRemoveData(void* aram, unsigned long len);

unsigned long macStart(unsigned short macid, unsigned char priority, unsigned char maxVoices,
                       unsigned short allocId, unsigned char key, unsigned char vol,
                       unsigned char panning, unsigned char midi, unsigned char midiSet,
                       unsigned char section, unsigned short step, unsigned short trackid,
                       unsigned char new_vid, unsigned char vGroup, unsigned char studio,
                       unsigned long itd);
void macMakeInactive(SYNTH_VOICE* svoice, MAC_STATE);

void sndProfUpdateMisc(SND_PROFILE_INFO* info);
void sndProfResetPMC(SND_PROFILE_DATA* info);
void sndProfStartPMC(SND_PROFILE_DATA* info);

#ifdef __cplusplus
}
#endif
#endif // _MUSYX_MUSYX_PRIV
