#include "musyx/musyx_priv.h"

static SDIR_TAB dataSmpSDirs[128];
static u16 dataSmpSDirNum;
static DATA_TAB dataCurveTab[2048];
static u16 dataCurveNum;
static DATA_TAB dataKeymapTab[256];
static u16 dataKeymapNum;
static LAYER_TAB dataLayerTab[256];
static u16 dataLayerNum;
static MAC_MAINTAB dataMacMainTab[512];
static MAC_SUBTAB dataMacSubTabmem[2048];
static u16 dataMacTotal;
static FX_GROUP dataFXGroups[128];
static u16 dataFXGroupNum;

bool dataInsertKeymap(u16 cid, void* keymapdata) {
  long i; // r31
  long j; // r29
  hwDisableIrq();

  for (i = 0; i < dataKeymapNum && dataKeymapTab[i].id < cid; ++i)
    ;

  if (i < dataKeymapNum) {

    if (cid != dataKeymapTab[i].id) {

      if (dataKeymapNum < 256) {

        for (j = dataKeymapNum - 1; j >= i; --j)
          dataKeymapTab[j + 1] = dataKeymapTab[j];
        ++dataKeymapNum;
      } else {
        hwEnableIrq();
        return 0;
      }
    } else {
      dataKeymapTab[i].refCount++;
      hwEnableIrq();
      return 0;
    }
  } else if (dataKeymapNum < 256) {
    ++dataKeymapNum;
  } else {

    hwEnableIrq();
    return 0;
  }

  MUSY_ASSERT_MSG(keymapdata != NULL, "Keymap data pointer is NULL");

  dataKeymapTab[i].id = cid;
  dataKeymapTab[i].data = keymapdata;
  dataKeymapTab[i].refCount = 1;
  hwEnableIrq();
  return 1;
}

bool dataRemoveKeymap(u16 sid) {
  long i; // r31
  long j; // r30

  hwDisableIrq();
  for (i = 0; i < dataKeymapNum && dataKeymapTab[i].id != sid; ++i)
    ;

  if (i != dataKeymapNum && --dataKeymapTab[i].refCount == 0) {
    for (j = i + 1; j < dataKeymapNum; j++) {
      dataKeymapTab[j - 1] = dataKeymapTab[j];
    }

    --dataKeymapNum;
    hwEnableIrq();
    return 1;
  }

  hwEnableIrq();
  return 0;
}

bool dataInsertLayer(u16 cid, void* layerdata, u16 size) {
  long i; // r31
  long j; // r29

  hwDisableIrq();

  for (i = 0; i < dataLayerNum && dataLayerTab[i].id < cid; ++i)
    ;

  if (i < dataLayerNum) {

    if (cid != dataLayerTab[i].id) {

      if (dataLayerNum < 256) {

        for (j = dataLayerNum - 1; j >= i; --j)
          dataLayerTab[j + 1] = dataLayerTab[j];
        ++dataLayerNum;

      } else {

        hwEnableIrq();
        return 0;
      }
    } else {

      dataLayerTab[i].refCount++;
      hwEnableIrq();
      return 0;
    }

  } else if (dataLayerNum < 256) {
    ++dataLayerNum;
  } else {

    hwEnableIrq();
    return 0;
  }

  MUSY_ASSERT_MSG(layerdata != NULL, "Layer data pointer is NULL");

  dataLayerTab[i].id = cid;
  dataLayerTab[i].data = layerdata;
  dataLayerTab[i].num = size;
  dataLayerTab[i].refCount = 1;
  hwEnableIrq();
  return 1;
}

bool dataRemoveLayer(u16 sid) {
  long i; // r31
  long j; // r30

  hwDisableIrq();
  for (i = 0; i < dataLayerNum && dataLayerTab[i].id != sid; ++i)
    ;

  if (i != dataLayerNum && --dataLayerTab[i].refCount == 0) {
    for (j = i + 1; j < dataLayerNum; j++) {
      dataLayerTab[j - 1] = dataLayerTab[j];
    }

    --dataLayerNum;
    hwEnableIrq();
    return 1;
  }

  hwEnableIrq();
  return 0;
}

bool dataInsertCurve(u16 cid, void* curvedata) {
  long i; // r31
  long j; // r29

  hwDisableIrq();

  for (i = 0; i < dataCurveNum && dataCurveTab[i].id < cid; ++i)
    ;

  if (i < dataCurveNum) {

    if (cid != dataCurveTab[i].id) {

      if (dataCurveNum < 2048) {

        for (j = dataCurveNum - 1; j >= i; --j)
          dataCurveTab[j + 1] = dataCurveTab[j];
        ++dataCurveNum;

      } else {
        hwEnableIrq();
        return 0;
      }
    } else {
      hwEnableIrq();
      dataCurveTab[i].refCount++;
      return 0;
    }

  } else if (dataCurveNum < 2048) {
    ++dataCurveNum;
  } else {

    hwEnableIrq();
    return 0;
  }

  MUSY_ASSERT_MSG(curvedata != NULL, "Curve data pointer is NULL");

  dataCurveTab[i].id = cid;
  dataCurveTab[i].data = curvedata;
  dataCurveTab[i].refCount = 1;
  hwEnableIrq();
  return 1;
}

bool dataRemoveCurve(u16 sid) {
  long i; // r31
  long j; // r30

  hwDisableIrq();
  for (i = 0; i < dataCurveNum && dataCurveTab[i].id != sid; ++i)
    ;

  if (i != dataCurveNum && --dataCurveTab[i].refCount == 0) {
    for (j = i + 1; j < dataCurveNum; j++) {
      dataCurveTab[j - 1] = dataCurveTab[j];
    }

    --dataCurveNum;
    hwEnableIrq();
    return 1;
  }

  hwEnableIrq();
  return 0;
}

bool dataInsertSDir(SDIR_DATA* sdir, void* smp_data) {
  s32 i;        // r31
  SDIR_DATA* s; // r25
  u16 n;        // r27
  u16 j;        // r29
  u16 k;        // r26
  for (i = 0; i < dataSmpSDirNum && dataSmpSDirs[i].data != sdir; ++i)
    ;

  if (i == dataSmpSDirNum) {
    if (dataSmpSDirNum < 128) {
      n = 0;
      for (s = sdir; s->id != 0xffff; ++s) {
        ++n;
      }

      hwDisableIrq();

      for (j = 0; j < n; ++j) {
        for (i = 0; i < dataSmpSDirNum; ++i) {
          for (k = 0; k < dataSmpSDirs[i].numSmp; ++k) {
            if (sdir[j].id == dataSmpSDirs[i].data[k].id)
              goto done_loop;
          }
        }
      }
    done_loop:
      if (i == dataSmpSDirNum) {
        sdir[j].ref_cnt = 0;
      } else {
        sdir[j].ref_cnt = 0xffff;
      }

      dataSmpSDirs[dataSmpSDirNum].data = sdir;
      dataSmpSDirs[dataSmpSDirNum].numSmp = n;
      dataSmpSDirs[dataSmpSDirNum].base = smp_data;
      ++dataSmpSDirNum;
      hwEnableIrq();
      return 1;
    } else {
      return 0;
    }
  }

  return 1;
}

bool dataRemoveSDir(struct SDIR_DATA* sdir) {
  long i;                 // r28
  long j;                 // r30
  long index;             // r27
  struct SDIR_DATA* data; // r31
}

bool dataAddSampleReference(u16 sid) {
  u32 i;              // r29
  SAMPLE_HEADER* header; // r1+0xC
  SDIR_DATA* data;       // r30
  SDIR_DATA* sdir;       // r31
}

bool dataRemoveSampleReference(u16 sid) {
  unsigned long i;        // r30
  struct SDIR_DATA* sdir; // r31
}

bool dataInsertFX(u16 gid, struct FX_TAB* fx, u16 fxNum) {
  long i; // r31
  return dataFXGroups[0].gid;
}

bool dataRemoveFX(u16 gid) {
  long i; // r31
  long j; // r30
  return 1;
}

bool dataInsertMacro(u16 mid, void* macroaddr) {
  long main; // r28
  long pos;  // r29
  long base; // r27
  long i;    // r31
}

bool dataRemoveMacro(u16 mid) {
  long main; // r29
  long base; // r28
  long i;    // r31
}

static s32 maccmp(void* p1, void* p2) { return ((MAC_SUBTAB*)p1)->id - ((MAC_SUBTAB*)p2)->id; }

MSTEP* dataGetMacro(u16 mid) {
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

static s32 smpcmp(void* p1, void* p2) { return ((SDIR_DATA*)p1)->id - ((SDIR_DATA*)p2)->id; }

long dataGetSample(u16 sid, SAMPLE_INFO* newsmp) {
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

static s32 curvecmp(void* p1, void* p2) { return ((DATA_TAB*)p1)->id - ((DATA_TAB*)p2)->id; }

void* dataGetCurve(u16 cid) {
  static DATA_TAB key;
  static DATA_TAB* result;

  key.id = cid;
  if (result =
          (DATA_TAB*)sndBSearch(&key, dataCurveTab, dataCurveNum, sizeof(DATA_TAB), curvecmp)) {
    return result->data;
  }
  return NULL;
}

void* dataGetKeymap(u16 cid) {
  static DATA_TAB key;
  static DATA_TAB* result;

  key.id = cid;
  if (result =
          (DATA_TAB*)sndBSearch(&key, dataKeymapTab, dataKeymapNum, sizeof(DATA_TAB), curvecmp)) {
    return result->data;
  }
  return NULL;
}

static s32 layercmp(void* p1, void* p2) { return ((LAYER_TAB*)p1)->id - ((LAYER_TAB*)p2)->id; }

void* dataGetLayer(u16 cid, u16* n) {
  static LAYER_TAB key;
  static LAYER_TAB* result;

  key.id = cid;
  if (result =
          (LAYER_TAB*)sndBSearch(&key, dataLayerTab, dataLayerNum, sizeof(LAYER_TAB), layercmp)) {
    *n = result->num;
    return result->data;
  }
  return NULL;
}

static s32 fxcmp(void* p1, void* p2) { return ((FX_TAB*)p1)->id - ((FX_TAB*)p2)->id; }

struct FX_TAB* dataGetFX(u16 fid) {
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
