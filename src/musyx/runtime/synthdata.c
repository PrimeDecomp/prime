#include "musyx/synthdata.h"
#include "musyx/assert.h"
#include "musyx/hardware.h"
#include "musyx/snd.h"

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
              goto found_id;
          }
        }
      found_id:
        if (i != dataSmpSDirNum) {
          sdir[j].ref_cnt = 0xffff;
        } else {
          sdir[j].ref_cnt = 0;
        }
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
  long i;          // r28
  long j;          // r30
  long index;      // r27
  SDIR_DATA* data; // r31

  index = 0;
  for (; index < dataSmpSDirNum && dataSmpSDirs[index].data != sdir; ++index) {
  }

  if (index != dataSmpSDirNum) {

    hwDisableIrq();

    for (data = sdir; data->id != 0xFFFF; ++data) {
      if (data->ref_cnt != 0xFFFF && data->ref_cnt != 0)
        break;
    }

    if (data->id == 0xFFFF) {
      data = sdir;

      for (data = sdir; data->id != 0xFFFF; ++data) {
        if (data->ref_cnt != 0xFFFF) {
          for (i = 0; i < dataSmpSDirNum; ++i) {
            if (dataSmpSDirs[i].data == sdir)
              continue;
            for (j = 0; j < dataSmpSDirs[i].numSmp; ++j) {
              if (data->id == dataSmpSDirs[i].data[j].id &&
                  dataSmpSDirs[i].data[j].ref_cnt == 0xFFFF) {
                dataSmpSDirs[i].data[j].ref_cnt = 0;
                break;
              }
            }

            if (j != dataSmpSDirs[i].numSmp) {
              break;
            }
          }
        } else {
        }
      }
      data = sdir;
      for (; data->id != 0xFFFF; ++data) {
        data->ref_cnt = 0;
      }

      for (j = index + 1; j < dataSmpSDirNum; ++j) {
        dataSmpSDirs[j - 1] = dataSmpSDirs[j];
      }

      --dataSmpSDirNum;
      hwEnableIrq();
      return TRUE;
    }

    hwEnableIrq();
  }
  return FALSE;
}

bool dataAddSampleReference(u16 sid) {
  u32 i;                 // r29
  SAMPLE_HEADER* header; // r1+0xC
  SDIR_DATA* data;       // r30
  SDIR_DATA* sdir;       // r31

  data = NULL;
  sdir = NULL;
  for (i = 0; i < dataSmpSDirNum; ++i) {
    for (data = dataSmpSDirs[i].data; data->id != 0xFFFF; ++data) {
      if (data->id == sid && data->ref_cnt != 0xFFFF) {
        sdir = data;
        goto done;
      }
    }
  }
done:

  MUSY_ASSERT_MSG(sdir != NULL,
                  "Sample ID to be inserted could not be found in any sample directory.\n");

  if (sdir->ref_cnt == 0) {
    sdir->addr = (void*)((size_t)sdir->offset + (s32)dataSmpSDirs[i].base);
    header = &sdir->header;
    hwSaveSample(&header, &sdir->addr);
  }

  ++sdir->ref_cnt;
  return TRUE;
}

bool dataRemoveSampleReference(u16 sid) {
  u32 i;           // r30
  SDIR_DATA* sdir; // r31

  for (i = 0; i < dataSmpSDirNum; ++i) {
    for (sdir = dataSmpSDirs[i].data; sdir->id != 0xFFFF; ++sdir) {
      if (sdir->id == sid && sdir->ref_cnt != 0xFFFF) {
        --sdir->ref_cnt;

        if (sdir->ref_cnt == 0) {
          hwRemoveSample(&sdir->header, sdir->addr);
        }

        return TRUE;
      }
    }
  }
  return FALSE;
}

bool dataInsertFX(u16 gid, struct FX_TAB* fx, u16 fxNum) {
  long i; // r31

  for (i = 0; i < dataFXGroupNum && gid != dataFXGroups[i].gid; ++i) {
  }

  if (i == dataFXGroupNum && dataFXGroupNum < 128) {
    hwDisableIrq();
    dataFXGroups[dataFXGroupNum].gid = gid;
    dataFXGroups[dataFXGroupNum].fxNum = fxNum;
    dataFXGroups[dataFXGroupNum].fxTab = fx;

    for (i = 0; i < fxNum; ++i, ++fx) {
      fx->vGroup = 31;
    }

    dataFXGroupNum++;
    hwEnableIrq();
    return TRUE;
  }
  return FALSE;
}

bool dataRemoveFX(u16 gid) {
  long i; // r31
  long j; // r30

  for (i = 0; i < dataFXGroupNum && gid != dataFXGroups[i].gid; ++i) {
  }

  if (i != dataFXGroupNum) {
    hwDisableIrq();
    for (j = i + 1; j < dataFXGroupNum; j++) {
      dataFXGroups[j - 1] = dataFXGroups[j];
    }

    --dataFXGroupNum;
    hwEnableIrq();
    return TRUE;
  }
  return FALSE;
}

bool dataInsertMacro(u16 mid, void* macroaddr) {
  long main; // r28
  long pos;  // r29
  long base; // r27
  long i;    // r31

  hwDisableIrq();

  main = (mid >> 6) & 0x3ff;

  if (dataMacMainTab[main].num == 0) {
    pos = base = dataMacMainTab[main].subTabIndex = dataMacTotal;
  } else {
    base = dataMacMainTab[main].subTabIndex;
    for (i = 0; i < dataMacMainTab[main].num && dataMacSubTabmem[base + i].id < mid; ++i) {
    }

    if (i < dataMacMainTab[main].num) {
      pos = base + i;
      if (mid == dataMacSubTabmem[pos].id) {
        dataMacSubTabmem[pos].refCount++;
        hwEnableIrq();
        return FALSE;
      }
    } else {
      pos = base + i;
    }
  }

  if (dataMacTotal < 2048) {
    MUSY_ASSERT_MSG(macroaddr, "Macro data pointer is NULL");
    for (i = 0; i < 512; ++i) {
      if (dataMacMainTab[i].subTabIndex > base) {
        dataMacMainTab[i].subTabIndex++;
      }
    }

    i = dataMacTotal - 1;
    for (; i >= pos; --i) {
      dataMacSubTabmem[i + 1] = dataMacSubTabmem[i];
    }

    dataMacSubTabmem[pos].id = mid;
    dataMacSubTabmem[pos].data = macroaddr;
    dataMacSubTabmem[pos].refCount = 1;
    dataMacMainTab[main].num++;
    dataMacTotal++;
    hwEnableIrq();
    return TRUE;
  }
  hwEnableIrq();
  return FALSE;
}

bool dataRemoveMacro(u16 mid) {
  s32 main; // r29
  s32 base; // r28
  s32 i;    // r31

  hwDisableIrq();
  main = (mid >> 6) & 0x3ff;

  if (dataMacMainTab[main].num != 0) {
    base = dataMacMainTab[main].subTabIndex;
    for (i = 0; i < dataMacMainTab[main].num && mid != dataMacSubTabmem[base + i].id; ++i) {
    }

    if (i < dataMacMainTab[main].num) {
      if (--dataMacSubTabmem[base + i].refCount == 0) {
        for (i = base + i + 1; i < dataMacTotal; ++i) {
          dataMacSubTabmem[i - 1] = dataMacSubTabmem[i];
        }

        for (i = 0; i < 512; ++i) {
          if (dataMacMainTab[i].subTabIndex > base) {
            --dataMacMainTab[i].subTabIndex;
          }
        }

        --dataMacMainTab[main].num;
        --dataMacTotal;
      }
    }
  }

  hwEnableIrq();
  return FALSE;
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

s32 dataGetSample(u16 sid, SAMPLE_INFO* newsmp) {
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
          newsmp->extraData = (void*)((size_t) & (dataSmpSDirs[i].data)->id + result->extraData);
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
  if ((result =
           (DATA_TAB*)sndBSearch(&key, dataCurveTab, dataCurveNum, sizeof(DATA_TAB), curvecmp))) {
    return result->data;
  }
  return NULL;
}

void* dataGetKeymap(u16 cid) {
  static DATA_TAB key;
  static DATA_TAB* result;

  key.id = cid;
  if ((result =
           (DATA_TAB*)sndBSearch(&key, dataKeymapTab, dataKeymapNum, sizeof(DATA_TAB), curvecmp))) {
    return result->data;
  }
  return NULL;
}

static s32 layercmp(void* p1, void* p2) { return ((LAYER_TAB*)p1)->id - ((LAYER_TAB*)p2)->id; }

void* dataGetLayer(u16 cid, u16* n) {
  static LAYER_TAB key;
  static LAYER_TAB* result;

  key.id = cid;
  if ((result =
           (LAYER_TAB*)sndBSearch(&key, dataLayerTab, dataLayerNum, sizeof(LAYER_TAB), layercmp))) {
    *n = result->num;
    return result->data;
  }
  return NULL;
}

static s32 fxcmp(void* p1, void* p2) {
  return ((FX_TAB*)p1)->id - ((FX_TAB*)p2)->id;
}

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

#if MUSY_TARGET == MUSY_PLATFORM_PC
void* sndConvert32BitSDIRTo64BitSDIR(void* sdir_int) {
  SDIR_DATA_INTER* sdir_inter = sdir_int;
  SDIR_DATA* sdir  = NULL;
  s32 i = 0;
  SDIR_DATA* s;
  SDIR_DATA_INTER* s2 = NULL;
  u16 n = 0;

  for (s2 = sdir_inter; s2->id != 0xffff; ++s2) {
    ++n;
  }

  ++n;

  sdir = malloc(n * sizeof(SDIR_DATA));

  for (i = 0; i < n; ++i) {
    sdir[i].id = sdir_inter[i].id;
    sdir[i].ref_cnt = sdir_inter[i].ref_cnt;
    sdir[i].offset = sdir_inter[i].offset;
    sdir[i].addr = (void*)(size_t)sdir_inter[i].addr;
    sdir[i].header = sdir_inter[i].header;
    sdir[i].extraData = sdir_inter[i].extraData;
  }

  free(sdir_int);

  return sdir;
}
#endif
