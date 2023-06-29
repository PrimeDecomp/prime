#ifndef _MUSYX_SEQ
#define _MUSYX_SEQ

#include "musyx/musyx_priv.h"

#ifdef __cplusplus
extern "C" {
#endif

typedef struct ARR {
  // total size: 0x58
  unsigned long tTab;          // offset 0x0, size 0x4
  unsigned long pTab;          // offset 0x4, size 0x4
  unsigned long tmTab;         // offset 0x8, size 0x4
  unsigned long mTrack;        // offset 0xC, size 0x4
  unsigned long info;          // offset 0x10, size 0x4
  unsigned long loopPoint[16]; // offset 0x14, size 0x40
  unsigned long tsTab;         // offset 0x54, size 0x4
} ARR;

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
  // total size: 0x4
  u16 macId;    // offset 0x0, size 0x2
  u8 priority;  // offset 0x2, size 0x1
  u8 maxVoices; // offset 0x3, size 0x1
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
  u32 time; // offset 0x0, size 0x4
  u32 bpm;  // offset 0x4, size 0x4
} MTRACK_DATA;

typedef struct MTRACK {
  // total size: 0x8
  MTRACK_DATA* base; // offset 0x0, size 0x4
  MTRACK_DATA* addr; // offset 0x4, size 0x4
} MTRACK;

typedef struct TICKS {
  // total size: 0x8
  u32 low;   // offset 0x0, size 0x4
  long high; // offset 0x4, size 0x4
} TICKS;

typedef struct SEQ_SECTION {
  // total size: 0x38
  struct MTRACK mTrack;       // offset 0x0, size 0x8
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

extern u8 synthTrackVolume[64];
extern SEQ_INSTANCE seqInstance[8];
extern u16 seqMIDIPriority[8][16];

void seqSpeed(unsigned long seqId, unsigned short speed);
void seqVolume(unsigned char volume, unsigned short time, unsigned long seqId, unsigned char mode);
void sndSeqStop(s32 unk);
void sndSeqSpeed(u32 seqId, u16 speed);
void sndSeqContinue(s32 unk);
void sndSeqMute(s32 unk1, s32 unk2, s32 unk3);
void sndSeqVolume(unsigned char volume, unsigned short time, unsigned long seqId,
                  unsigned char mode);
void seqStop(unsigned long seqId);
u16 seqGetMIDIPriority(u8 set, u8 channel);
void seqCrossFade(SND_CROSSFADE* ci, unsigned long* new_seqId, unsigned char irq_call);

#ifdef __cplusplus
}
#endif

#endif // _MUSYX_SEQ
