#ifndef SYNTHDATA_H
#define SYNTHDATA_H

#include "musyx/macros.h"

#ifdef __cplusplus
extern "C" {
#endif
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
  u32 nextOff;   // offset 0x0, size 0x4
  u16 id;        // offset 0x4, size 0x2
  u16 type;      // offset 0x6, size 0x2
  u32 macroOff;  // offset 0x8, size 0x4
  u32 sampleOff; // offset 0xC, size 0x4
  u32 curveOff;  // offset 0x10, size 0x4
  u32 keymapOff; // offset 0x14, size 0x4
  u32 layerOff;  // offset 0x18, size 0x4
  union {
    struct fx {
      // total size: 0x4
      u32 tableOff; // offset 0x0, size 0x4
    } fx;
    struct song {
      // total size: 0xC
      u32 normpageOff;  // offset 0x0, size 0x4
      u32 drumpageOff;  // offset 0x4, size 0x4
      u32 midiSetupOff; // offset 0x8, size 0x4
    } song;
  } data; // offset 0x1C, size 0xC
} GROUP_DATA;

typedef struct SAMPLE_HEADER {
  // total size: 0x10
  u32 info;       // offset 0x0, size 0x4
  u32 length;     // offset 0x4, size 0x4
  u32 loopOffset; // offset 0x8, size 0x4
  u32 loopLength; // offset 0xC, size 0x4
} SAMPLE_HEADER;

typedef struct SDIR_DATA {
  // total size: 0x20
  u16 id;               // offset 0x0, size 0x2
  u16 ref_cnt;          // offset 0x2, size 0x2
  u32 offset;           // offset 0x4, size 0x4
  void* addr;           // offset 0x8, size 0x4
  SAMPLE_HEADER header; // offset 0xC, size 0x10
  u32 extraData;        // offset 0x1C, size 0x4
} SDIR_DATA;

/*! A direct copy of the above structure to allow us to load in legacy data
 * this must be done via sndConvert32BitSDIRto64BitSDIR via client code,
 * this is explicit on the part of the programmer.
 * MusyX data built with the new tools will not require this step.
 */
typedef struct SDIR_DATA_INTER {
  // total size: 0x20
  u16 id;               // offset 0x0, size 0x2
  u16 ref_cnt;          // offset 0x2, size 0x2
  u32 offset;           // offset 0x4, size 0x4
  u32 addr;             // offset 0x8, size 0x4
  SAMPLE_HEADER header; // offset 0xC, size 0x10
  u32 extraData;        // offset 0x1C, size 0x4
} SDIR_DATA_INTER;

typedef struct SDIR_TAB {
  // total size: 0xC
  SDIR_DATA* data; // offset 0x0, size 0x4
  void* base;      // offset 0x4, size 0x4
  u16 numSmp;      // offset 0x8, size 0x2
  u16 res;         // offset 0xA, size 0x2
} SDIR_TAB;

typedef struct DATA_TAB {
  // total size: 0x8
  void* data;   // offset 0x0, size 0x4
  u16 id;       // offset 0x4, size 0x2
  u16 refCount; // offset 0x6, size 0x2
} DATA_TAB;

typedef struct LAYER_TAB {
  // total size: 0xC
  void* data;   // offset 0x0, size 0x4
  u16 id;       // offset 0x4, size 0x2
  u16 num;      // offset 0x6, size 0x2
  u16 refCount; // offset 0x8, size 0x2
  u16 reserved; // offset 0xA, size 0x2
} LAYER_TAB;

typedef struct MAC_MAINTAB {
  // total size: 0x4
  u16 num;         // offset 0x0, size 0x2
  u16 subTabIndex; // offset 0x2, size 0x2
} MAC_MAINTAB;

typedef struct MAC_SUBTAB {
  // total size: 0x8
  void* data;   // offset 0x0, size 0x4
  u16 id;       // offset 0x4, size 0x2
  u16 refCount; // offset 0x6, size 0x2
} MAC_SUBTAB;

typedef struct GSTACK {
  // total size: 0xC
  GROUP_DATA* gAddr;   // offset 0x0, size 0x4
  SDIR_DATA* sdirAddr; // offset 0x4, size 0x4
  void* prjAddr;       // offset 0x8, size 0x4
} GSTACK;

typedef struct LAYER {
  // total size: 0xC
  u16 id;         // offset 0x0, size 0x2
  u8 keyLow;      // offset 0x2, size 0x1
  u8 keyHigh;     // offset 0x3, size 0x1
  s8 transpose;   // offset 0x4, size 0x1
  u8 volume;      // offset 0x5, size 0x1
  s16 prioOffset; // offset 0x6, size 0x2
  u8 panning;     // offset 0x8, size 0x1
  u8 reserved[3]; // offset 0x9, size 0x3
} LAYER;

typedef struct KEYMAP {
  // total size: 0x8
  u16 id;         // offset 0x0, size 0x2
  s8 transpose;   // offset 0x2, size 0x1
  u8 panning;     // offset 0x3, size 0x1
  s16 prioOffset; // offset 0x4, size 0x2
  u8 reserved[2]; // offset 0x6, size 0x2
} KEYMAP;

typedef struct MEM_DATA {
  // total size: 0x408
  u32 nextOff;  // offset 0x0, size 0x4
  u16 id;       // offset 0x4, size 0x2
  u16 reserved; // offset 0x6, size 0x2
  union {
    struct {
      // total size: 0x10
      u32 num;        // offset 0x0, size 0x4
      LAYER entry[1]; // offset 0x4, size 0xC
    } layer;
    KEYMAP map[128];
    u8 tab[1];
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

typedef struct FX_TAB {
  // total size: 0xA
  u16 id;       // offset 0x0, size 0x2
  u16 macro;    // offset 0x2, size 0x2
  u8 maxVoices; // offset 0x4, size 0x1
  u8 priority;  // offset 0x5, size 0x1
  u8 volume;    // offset 0x6, size 0x1
  u8 panning;   // offset 0x7, size 0x1
  u8 key;       // offset 0x8, size 0x1
  u8 vGroup;    // offset 0x9, size 0x1
} FX_TAB;

typedef struct FX_DATA {
  // total size: 0xE
  u16 num;       // offset 0x0, size 0x2
  u16 reserverd; // offset 0x2, size 0x2
  FX_TAB fx[1];  // offset 0x4, size 0xA
} FX_DATA;

typedef struct FX_GROUP {
  // total size: 0x8
  u16 gid;       // offset 0x0, size 0x2
  u16 fxNum;     // offset 0x2, size 0x2
  FX_TAB* fxTab; // offset 0x4, size 0x4
} FX_GROUP;

void dataInit(u32, u32); /* extern */
void dataExit();
#if MUSY_VERSION >= MUSY_VERSION_CHECK(2, 0, 3)
void dataInitStack(unsigned long aramBase, unsigned long aramSize);
#else
void dataInitStack(); /* extern */
#endif
bool dataInsertSDir(SDIR_DATA* sdir, void* smp_data);
bool dataRemoveSDir(SDIR_DATA* sdir);
bool dataInsertMacro(u16 mid, void* macroaddr);
bool dataRemoveMacro(u16 mid);
bool dataInsertCurve(u16 cid, void* curvedata);
bool dataRemoveCurve(u16 sid);
s32 dataGetSample(u16 sid, SAMPLE_INFO* newsmp);
void* dataGetCurve(u16 cid);
bool dataAddSampleReference(u16 sid);
bool dataRemoveSampleReference(u16 sid);
bool dataInsertKeymap(u16 cid, void* keymapdata);
bool dataRemoveKeymap(u16 sid);
bool dataInsertLayer(u16 cid, void* layerdata, u16 size);
bool dataRemoveLayer(u16 sid);
bool dataInsertFX(u16 gid, FX_TAB* fx, u16 fxNum);
bool dataRemoveFX(u16 gid);
FX_TAB* dataGetFX(u16 fid);
void* dataGetLayer(u16 cid, u16* n);
void* dataGetKeymap(u16 cid);
MSTEP* dataGetMacro(u16 mid);

#ifdef __cplusplus
}
#endif

#endif // SYNTHDATA_H
