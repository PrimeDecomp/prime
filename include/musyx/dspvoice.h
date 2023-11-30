#ifndef DSPVOICE_H
#define DSPVOICE_H

#include "musyx/musyx.h"

#include "musyx/voice.h"
#include "musyx/synthdata.h"

typedef struct DSPvoice {
  _PB* pb;
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
typedef struct DSPhostDPop {
  // total size: 0x24
  s32 l;  // offset 0x0, size 0x4
  s32 r;  // offset 0x4, size 0x4
  s32 s;  // offset 0x8, size 0x4
  s32 lA; // offset 0xC, size 0x4
  s32 rA; // offset 0x10, size 0x4
  s32 sA; // offset 0x14, size 0x4
  s32 lB; // offset 0x18, size 0x4
  s32 rB; // offset 0x1C, size 0x4
  s32 sB; // offset 0x20, size 0x4
} DSPhostDPop;

typedef struct DSPinput {
  // total size: 0xC
  u8 studio;              // offset 0x0, size 0x1
  u16 vol;                // offset 0x2, size 0x2
  u16 volA;               // offset 0x4, size 0x2
  u16 volB;               // offset 0x6, size 0x2
  SND_STUDIO_INPUT* desc; // offset 0x8, size 0x4
} DSPinput;

typedef struct DSPstudioinfo {
  // total size: 0xBC
  _SPB* spb;                    // offset 0x0, size 0x4
  DSPhostDPop hostDPopSum;      // offset 0x4, size 0x24
  s32* main[2];                 // offset 0x28, size 0x8
  s32* auxA[3];                 // offset 0x30, size 0xC
  s32* auxB[3];                 // offset 0x3C, size 0xC
  DSPvoice* voiceRoot;          // offset 0x48, size 0x4
  DSPvoice* alienVoiceRoot;     // offset 0x4C, size 0x4
  u8 state;                     // offset 0x50, size 0x1
  u8 isMaster;                  // offset 0x51, size 0x1
  u8 numInputs;                 // offset 0x52, size 0x1
  SND_STUDIO_TYPE type;         // offset 0x54, size 0x4
  DSPinput in[7];               // offset 0x58, size 0x54
  SND_AUX_CALLBACK auxAHandler; // offset 0xAC, size 0x4
  SND_AUX_CALLBACK auxBHandler; // offset 0xB0, size 0x4
  void* auxAUser;               // offset 0xB4, size 0x4
  void* auxBUser;               // offset 0xB8, size 0x4
} DSPstudioinfo;

extern DSPstudioinfo dspStudio[8];
extern DSPvoice* dspVoice;

#endif