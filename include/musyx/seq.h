#ifndef _MUSYX_SEQ
#define _MUSYX_SEQ

#include "musyx/musyx.h"
#include "musyx/voice.h"

#ifdef __cplusplus
extern "C" {
#endif
typedef struct PAGE {
  // total size: 0x6
  u16 macro;    // offset 0x0, size 0x2
  u8 prio;      // offset 0x2, size 0x1
  u8 maxVoices; // offset 0x3, size 0x1
  u8 index;     // offset 0x4, size 0x1
  u8 reserved;  // offset 0x5, size 0x1
} PAGE;

typedef struct ARR {
  // total size: 0x58
  u32 tTab;          // offset 0x0, size 0x4
  u32 pTab;          // offset 0x4, size 0x4
  u32 tmTab;         // offset 0x8, size 0x4
  u32 mTrack;        // offset 0xC, size 0x4
  u32 info;          // offset 0x10, size 0x4
  u32 loopPoint[16]; // offset 0x14, size 0x40
  u32 tsTab;         // offset 0x54, size 0x4
} ARR;

#define ARR_GET(arr, offset) ((void*)(offset + (uintptr_t)arr))
#define ARR_GET_TYPE(arr, offset, ty) ((ty)ARR_GET(arr, offset))

typedef struct TENTRY {
  // total size: 0xC
  u32 time;       // offset 0x0, size 0x4
  u8 prgChange;   // offset 0x4, size 0x1
  u8 velocity;    // offset 0x5, size 0x1
  u8 res[2];      // offset 0x6, size 0x2
  u16 pattern;    // offset 0x8, size 0x2
  s8 transpose;   // offset 0xA, size 0x1
  s8 velocityAdd; // offset 0xB, size 0x1
} TENTRY;

typedef struct TRACK {
  // total size: 0x8
  struct TENTRY* base; // offset 0x0, size 0x4
  struct TENTRY* addr; // offset 0x4, size 0x4
} TRACK;

typedef struct NOTE {
  // total size: 0x14
  struct NOTE* next; // offset 0x0, size 0x4
  struct NOTE* prev; // offset 0x4, size 0x4
  u32 id;            // offset 0x8, size 0x4
  s32 endTime;       // offset 0xC, size 0x4
  u8 section;        // offset 0x10, size 0x1
  u8 timeIndex;      // offset 0x11, size 0x1
  u8 reserved[2];    // offset 0x12, size 0x2
} NOTE;

typedef struct NOTE_DATA {
  // total size: 0x6
  u16 time;    // offset 0x0, size 0x2
  u8 key;      // offset 0x2, size 0x1
  u8 velocity; // offset 0x3, size 0x1
  u16 length;  // offset 0x4, size 0x2
} NOTE_DATA;

typedef struct PRG_STATE {
  // total size: 0x4 (>=2.0: 0x6)
  u16 macId;    // offset 0x0, size 0x2
  u8 priority;  // offset 0x2, size 0x1
  u8 maxVoices; // offset 0x3, size 0x1
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 1)
  u8 program; // offset 0x4, size 0x1
#endif
} PRG_STATE;

typedef struct SEQ_STREAM {
  // total size: 0xC
  u8* nextAddr;  // offset 0x0, size 0x4
  u16 value;     // offset 0x4, size 0x2
  s16 nextDelta; // offset 0x6, size 0x2
  u32 nextTime;  // offset 0x8, size 0x4
} SEQ_STREAM;

typedef struct CPAT {
  // total size: 0x2C
  u32 lTime;             // offset 0x0, size 0x4
  u32 baseTime;          // offset 0x4, size 0x4
  NOTE_DATA* addr;       // offset 0x8, size 0x4
  TENTRY* patternInfo;   // offset 0xC, size 0x4
  SEQ_STREAM pitchBend;  // offset 0x10, size 0xC
  SEQ_STREAM modulation; // offset 0x1C, size 0xC
  u8 midi;               // offset 0x28, size 0x1
} CPAT;

typedef struct SEQ_EVENT {
  // total size: 0x18
  struct SEQ_EVENT* next; // offset 0x0, size 0x4
  struct SEQ_EVENT* prev; // offset 0x4, size 0x4
  u32 time;               // offset 0x8, size 0x4
  union evInfo {
    TENTRY* trackAddr;
    struct {
      // total size: 0x8
      NOTE_DATA* addr; // offset 0x0, size 0x4
      CPAT* base;      // offset 0x4, size 0x4
    } pattern;
  } info;     // offset 0xC, size 0x8
  u8 type;    // offset 0x14, size 0x1
  u8 trackId; // offset 0x15, size 0x1
} SEQ_EVENT;

typedef struct MTRACK_DATA {
  // total size: 0x8
  volatile u32 time; // offset 0x0, size 0x4
  u32 bpm;           // offset 0x4, size 0x4
} MTRACK_DATA;

typedef struct MTRACK {
  // total size: 0x8
  MTRACK_DATA* base; // offset 0x0, size 0x4
  MTRACK_DATA* addr; // offset 0x4, size 0x4
} MTRACK;

typedef struct TICKS {
  // total size: 0x8
  u32 low;  // offset 0x0, size 0x4
  s32 high; // offset 0x4, size 0x4
} TICKS;

typedef struct SEQ_SECTION {
  // total size: 0x38
  MTRACK mTrack;              // offset 0x0, size 0x8
  u32 bpm;                    // offset 0x8, size 0x4
  TICKS tickDelta[2];         // offset 0xC, size 0x10
  SEQ_EVENT* globalEventRoot; // offset 0x1C, size 0x4
  TICKS time[2];              // offset 0x20, size 0x10
  u8 timeIndex;               // offset 0x30, size 0x1
  u16 speed;                  // offset 0x32, size 0x2
  u16 loopCnt;                // offset 0x34, size 0x2
  u8 loopDisable;             // offset 0x36, size 0x1
} SEQ_SECTION;

typedef struct SEQ_INSTANCE {
  // total size: 0x1868
  struct SEQ_INSTANCE* next;   // offset 0x0, size 0x4
  struct SEQ_INSTANCE* prev;   // offset 0x4, size 0x4
  u8 state;                    // offset 0x8, size 0x1
  u8 index;                    // offset 0x9, size 0x1
  u16 groupID;                 // offset 0xA, size 0x2
  u32 publicId;                // offset 0xC, size 0x4
  PAGE* normtab;               // offset 0x10, size 0x4
  u8 normTrans[128];           // offset 0x14, size 0x80
  PAGE* drumtab;               // offset 0x94, size 0x4
  u8 drumTrans[128];           // offset 0x98, size 0x80
  ARR* arrbase;                // offset 0x118, size 0x4
  u32 trackMute[2];            // offset 0x11C, size 0x8
  TRACK track[64];             // offset 0x124, size 0x200
  u8 trackVolGroup[64];        // offset 0x324, size 0x40
  CPAT pattern[64];            // offset 0x364, size 0xB00
  NOTE* noteUsed[2];           // offset 0xE64, size 0x8
  NOTE* noteKeyOff;            // offset 0xE6C, size 0x4
  PRG_STATE prgState[16];      // offset 0xE70, size 0x40
  u8 defVGroup;                // offset 0xEB0, size 0x1
  SND_CROSSFADE syncCrossInfo; // offset 0xEB4, size 0x28
  u32* syncSeqIdPtr;           // offset 0xEDC, size 0x4
  u8 syncActive;               // offset 0xEE0, size 0x1
  u8 defStudio;                // offset 0xEE1, size 0x1
  u8 keyOffCheck;              // offset 0xEE2, size 0x1
  SEQ_EVENT event[64];         // offset 0xEE4, size 0x600
  u8* trackSectionTab;         // offset 0x14E4, size 0x4
  SEQ_SECTION section[16];     // offset 0x14E8, size 0x380
} SEQ_INSTANCE;

typedef struct SEQ_PATTERN {
  // total size: 0x10
  u32 headerLen;  // offset 0x0, size 0x4
  u32 pitchBend;  // offset 0x4, size 0x4
  u32 modulation; // offset 0x8, size 0x4
  u32 noteData;   // offset 0xC, size 0x4
} SEQ_PATTERN;

typedef struct CHANNEL_DEFAULTS {
  // total size: 0x1
  u8 pbRange; // offset 0x0, size 0x1
} CHANNEL_DEFAULTS;

typedef struct MIDI_CHANNEL_SETUP {
  // total size: 0x5
  u8 program; // offset 0x0, size 0x1
  u8 volume;  // offset 0x1, size 0x1
  u8 panning; // offset 0x2, size 0x1
  u8 reverb;  // offset 0x3, size 0x1
  u8 chorus;  // offset 0x4, size 0x1
} MIDI_CHANNEL_SETUP;

typedef struct MIDISETUP {
  // total size: 0x54
  u16 songId;                     // offset 0x0, size 0x2
  u16 reserved;                   // offset 0x2, size 0x2
  MIDI_CHANNEL_SETUP channel[16]; // offset 0x4, size 0x50
} MIDISETUP;

extern u8 synthTrackVolume[64];
extern SEQ_INSTANCE seqInstance[8];
extern u16 seqMIDIPriority[8][16];

void seqInit(); /* extern */
u32 seqStartPlay(PAGE* norm, PAGE* drum, MIDISETUP* midiSetup, u32* song, SND_PLAYPARA* para,
                 u8 studio, u16 sgid);
u32 seqGetPrivateId(u32 seqId);
void seqSpeed(u32 seqId, u16 speed);
void seqVolume(u8 volume, u16 time, u32 seqId, u8 mode);
void seqStop(u32 seqId);
u16 seqGetMIDIPriority(u8 set, u8 channel);
void seqCrossFade(SND_CROSSFADE* ci, u32* new_seqId, bool8 irq_call);
u32 seqPlaySong(u16 sgid, u16 sid, void* arrfile, SND_PLAYPARA* para, u8 irq_call, u8 studio);
void seqPause(SND_SEQID seqId);
void seqContinue(SND_SEQID seqId);
void seqMute(SND_SEQID seqId, u32 mask1, u32 mask2);
void seqKillInstancesByGroupID(SND_GROUPID sgid);
void seqKillAllInstances();
void seqHandle(u32 deltaTime);

u8 inpTranslateExCtrl(u8 ctrl);
void inpSetGlobalMIDIDirtyFlag(u8 chan, u8 midiSet, s32 flag);
void inpAddCtrl(CTRL_DEST* dest, u8 ctrl, s32 scale, u8 comb, u32 isVar);
void inpSetMidiCtrl(u8 ctrl, u8 channel, u8 set, u8 value);
void inpSetMidiCtrl14(u8 ctrl, u8 channel, u8 set, u16 value);
void inpSetExCtrl(SYNTH_VOICE* svoice, u8 ctrl, s16 v);
CHANNEL_DEFAULTS* inpGetChannelDefaults(u8 midi, u8 midiSet);
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 3)
unsigned short inpGetFilterSwitch(struct SYNTH_VOICE* svoice);
unsigned short inpGetFilterParameter(struct SYNTH_VOICE* svoice);
void inpSetLPFDefaultRange(u32 lowFrq, u32 highFrq);
#endif
extern CTRL_DEST inpAuxA[8][4];
extern CTRL_DEST inpAuxB[8][4];
void inpSetMidiLastNote(u8 midi, u8 midiSet, u8 key);
u8 inpGetMidiLastNote(u8 midi, u8 midiSet);
u16 inpGetExCtrl(SYNTH_VOICE* svoice, u8 ctrl);
u16 inpGetMidiCtrl(u8 ctrl, u8 channel, u8 set);
void inpSetMidiLastNote(u8 midi, u8 midiSet, u8 key);
u16 inpGetModulation(SYNTH_VOICE* svoice);
void inpResetMidiCtrl(u8 ch, u8 set, u32 coldReset);
void inpResetChannelDefaults(u8 midi, u8 midiSet);
u16 inpGetPitchBend(SYNTH_VOICE* svoice);
u16 inpGetDoppler(SYNTH_VOICE* svoice);
u16 inpGetTremolo(SYNTH_VOICE* svoice);
u16 inpGetPanning(SYNTH_VOICE* svoice);
u16 inpGetSurPanning(SYNTH_VOICE* svoice);
u16 inpGetVolume(SYNTH_VOICE* svoice);
u16 inpGetReverb(SYNTH_VOICE* svoice);
u16 inpGetPreAuxA(SYNTH_VOICE* svoice);
u16 inpGetPostAuxA(SYNTH_VOICE* svoice);
u16 inpGetPreAuxB(SYNTH_VOICE* svoice);
u16 inpGetPostAuxB(SYNTH_VOICE* svoice);
u16 inpGetPedal(SYNTH_VOICE* svoice);
u16 inpGetAuxA(u8 studio, u8 index, u8 midi, u8 midiSet);
u16 inpGetAuxB(u8 studio, u8 index, u8 midi, u8 midiSet);
void inpInit(SYNTH_VOICE* svoice);
void inpFXCopyCtrl(u8 ctrl, SYNTH_VOICE* dvoice, SYNTH_VOICE* svoice);

s16 varGet(SYNTH_VOICE* svoice, u32 ctrl, u8 index);
#ifdef __cplusplus
}
#endif

#endif // _MUSYX_SEQ
