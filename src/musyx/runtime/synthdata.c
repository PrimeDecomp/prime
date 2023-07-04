
#include "musyx/musyx_priv.h"

static u16 dataSmpSDirNum = 0;
static SDIR_TAB dataSmpSDirs[128];
static u16 dataCurveNum = 0;
static DATA_TAB dataCurveTab[2048];
static u16 dataKeymapNum = 0;
static DATA_TAB dataKeymapTab[256];
static u16 dataLayerNum = 0;
static LAYER_TAB dataLayerTab[256];
static u16 dataMacTotal = 0;
static MAC_MAINTAB dataMacMainTab[512];
static MAC_SUBTAB dataMacSubTabmem[2048];
static u16 dataFXGroupNum = 0;
static FX_GROUP dataFXGroups[128];

u32 dataInsertKeymap(u16 cid, void* keymapdata) {
  long i; // r31
  long j; // r29

  hwDisableIrq();
  for (i = 0; i < dataKeymapNum && dataKeymapTab[i].id < cid; ++i);

  if (i < dataKeymapNum) {
    if (cid == dataKeymapTab[i].id) {
      dataKeymapTab[i].refCount++;
      hwEnableIrq();
      return 0;
    }

    if (256 < dataKeymapNum) {
      hwEnableIrq();
      return 0;
    }

    j = dataKeymapNum;
    for (j = dataKeymapNum; i <= j; --j) {
      dataKeymapTab[j].id = dataKeymapTab[j - 1].id;
      dataKeymapTab[j].refCount = dataKeymapTab[j - 1].refCount;
      dataKeymapTab[j].data = dataKeymapTab[j - 1].data;
    }
  } else if (256 < dataKeymapNum) {
    hwEnableIrq();
    return 0;
  }

  ++dataKeymapNum;

  MUSY_ASSERT_MSG(keymapdata != NULL, "Keymap data pointer is NULL");
  dataKeymapTab[i].id = cid;
  dataKeymapTab[i].data = keymapdata;
  dataKeymapTab[i].refCount = 1;
  hwEnableIrq();
  return 1;
}

unsigned long dataRemoveKeymap(unsigned short sid) {
  long i; // r31
  long j; // r30
}
unsigned long dataInsertLayer(unsigned short cid, void* layerdata, unsigned short size) {
  long i; // r31
  long j; // r29
}
unsigned long dataRemoveLayer(unsigned short sid) {
  long i; // r31
  long j; // r30
}
unsigned long dataInsertCurve(unsigned short cid, void* curvedata) {
  long i; // r31
  long j; // r29
}
unsigned long dataRemoveCurve(unsigned short sid) {
  long i; // r31
  long j; // r30
}
unsigned long dataInsertSDir(struct SDIR_DATA* sdir, void* smp_data) {
  long i;              // r31
  struct SDIR_DATA* s; // r25
  unsigned short n;    // r27
  unsigned short j;    // r29
  unsigned short k;    // r26
}
unsigned long dataRemoveSDir(struct SDIR_DATA* sdir) {
  long i;                 // r28
  long j;                 // r30
  long index;             // r27
  struct SDIR_DATA* data; // r31
}
unsigned long dataAddSampleReference(unsigned short sid) {
  unsigned long i;              // r29
  struct SAMPLE_HEADER* header; // r1+0xC
  struct SDIR_DATA* data;       // r30
  struct SDIR_DATA* sdir;       // r31
}
unsigned long dataRemoveSampleReference(unsigned short sid) {
  unsigned long i;        // r30
  struct SDIR_DATA* sdir; // r31
}
unsigned long dataInsertFX(unsigned short gid, struct FX_TAB* fx, unsigned short fxNum) {
  long i; // r31
}
unsigned long dataRemoveFX(unsigned short gid) {
  long i; // r31
  long j; // r30
}
unsigned long dataInsertMacro(unsigned short mid, void* macroaddr) {
  long main; // r28
  long pos;  // r29
  long base; // r27
  long i;    // r31
}
unsigned long dataRemoveMacro(unsigned short mid) {
  long main; // r29
  long base; // r28
  long i;    // r31
}
long maccmp(void* p1, void* p2) { return ((MAC_SUBTAB*)p1)->id - ((MAC_SUBTAB*)p2)->id; }

struct MSTEP* dataGetMacro(unsigned short mid) {
  static s32 base;
  static s32 main;
  static MAC_SUBTAB key;
  static MAC_SUBTAB* result;

  main = (mid >> 6) & 0x3fff;

  if (dataMacMainTab[main].num != 0) {
    base = dataMacMainTab[main].subTabIndex;
    key.id = mid;
    if ((result = (MAC_SUBTAB*)sndBSearch(&key, &dataMacSubTabmem[base], dataMacMainTab[main].num,
                                          8, maccmp)) != NULL) {
      return result->data;
    }
  }

  return NULL;
}

long smpcmp(void* p1, void* p2) { return ((SDIR_DATA*)p1)->id - ((SDIR_DATA*)p2)->id; }

long dataGetSample(unsigned short sid, SAMPLE_INFO* newsmp) {
  static s32 base;
  static s32 main;
  static SDIR_DATA key;
  static SDIR_DATA* result;
  static SAMPLE_HEADER* sheader;
  long i; // r30

  key.id = sid;

  for (i = 0; i < dataSmpSDirNum; ++i) {
    if ((result = sndBSearch(&key, dataSmpSDirs[i].data, dataSmpSDirs[i].numSmp, sizeof(SDIR_DATA),
                             smpcmp)) != NULL) {
      if (result->ref_cnt != 0xFFFF) {
        sheader = &result->header;
        newsmp->info = sheader->info;
        newsmp->addr = result->addr;
        newsmp->offset = 0;
        newsmp->loop = sheader->loopOffset;
        newsmp->length = sheader->length & 0xffffff;
        newsmp->loopLength = sheader->loopLength;
        newsmp->compType = sheader->length >> 24;

        if (result->extraData) {
          newsmp->extraData = (void*)((u32) & (dataSmpSDirs[i].data)->id + result->extraData);
        }
        return 0;
      }
    }
  }

  return -1;
}

long curvecmp(void* p1, void* p2) { return ((DATA_TAB*)p1)->id - ((DATA_TAB*)p2)->id; }

void* dataGetCurve(unsigned short cid) {
  static DATA_TAB key;
  static DATA_TAB* result;

  key.id = cid;
  if (result =
          (DATA_TAB*)sndBSearcH(&key, dataCurveTab, dataCurveNum, sizeof(DATA_TAB), curvecmp)) {
    return result->data;
  }
  return NULL;
}

void* dataGetKeymap(unsigned short cid) {
  static DATA_TAB key;
  static DATA_TAB* result;

  key.id = cid;
  if (result =
          (DATA_TAB*)sndBSearcH(&key, dataCurveTab, dataCurveNum, sizeof(DATA_TAB), curvecmp)) {
    return result->data;
  }
  return NULL;
}

long layercmp(void* p1, void* p2) { return ((LAYER_TAB*)p1)->id - ((LAYER_TAB*)p2)->id; }

void* dataGetLayer(u16 cid, u16* n) {
  static LAYER_TAB key;
  static LAYER_TAB* result;

  key.id = cid;
  if (result =
          (LAYER_TAB*)sndBSearcH(&key, dataLayerTab, dataLayerNum, sizeof(LAYER_TAB), layercmp)) {
    *n = result->num;
    return result->data;
  }
  return NULL;
}

long fxcmp(void* p1, void* p2) { return ((FX_TAB*)p1)->id - ((FX_TAB*)p2)->id; }

struct FX_TAB* dataGetFX(unsigned short fid) {
  static FX_TAB key;
  FX_TAB* ret; // r29
  long i;      // r31

  key.id = fid;
  for (i = 0; i < dataFXGroupNum; ++i) {
    if ((ret = (FX_TAB*)sndBSearch(&key, dataFXGroups[i].fxTab, dataFXGroups[i].fxNum,
                                   sizeof(FX_TAB), fxcmp))) {
      return ret;
    }
  }

  return NULL;
}

void dataInit(u32 smpBase, u32 smpLength) {
  long i; // r31

  dataSmpSDirNum = 0;
  dataCurveNum = 0;
  dataKeymapNum = 0;
  dataLayerNum = 0;
  dataFXGroupNum = 0;
  dataMacTotal = 0;
  for (i = 0; i < 512; ++i) {
    dataMacMainTab[i].num = 0;
    dataMacMainTab[i].subTabIndex = 0;
  }
  hwInitSampleMem(smpBase, smpLength);
}

void dataExit() { hwExitSampleMem(); }
