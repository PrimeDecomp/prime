
#include "musyx/musyx.h"

#include "musyx/assert.h"
#include "musyx/hardware.h"
#include "musyx/macros.h"
#include "musyx/stream.h"
#include "musyx/voice.h"

void voiceResetLastStarted(SYNTH_VOICE* svoice);

static VID_LIST vidList[128];
static u8 synth_last_started[8][16];
static u8 synth_last_fxstarted[64];
SYNTH_VOICELIST voiceList[64];
SYNTH_ROOTLIST voicePrioSortRootList[256];
u8 voicePrioSortVoicesRoot[256];
SYNTH_VOICELIST voicePrioSortVoices[64];
static VID_LIST* vidFree = NULL;
static VID_LIST* vidRoot = NULL;
static u32 vidCurrentId = 0;
u16 voicePrioSortRootListRoot = 0;
u8 voiceMusicRunning = 0;
u8 voiceFxRunning = 0;
u8 voiceListInsert = 0;
u8 voiceListRoot = 0;

void vidInit() {
  int i;
  VID_LIST* lvl;
  vidCurrentId = 0;
  vidRoot = NULL;
  vidFree = vidList;
  for (lvl = NULL, i = 0; i < 128; lvl = &vidList[i], ++i) {
    vidList[i].prev = lvl;
    if (lvl != NULL) {
      lvl->next = &vidList[i];
    }
  }
  lvl->next = NULL;
}

static VID_LIST* get_vidlist(u32 vid) {
  VID_LIST* vl = vidRoot;
  while (vl != NULL) {
    if (vl->vid == vid) {
      return vl;
    }
    if (vl->vid > vid) {
      break;
    }
    vl = vl->next;
  }

  return NULL;
}

static u32 get_newvid() {
  u32 vid; // r31
  do {
    vid = vidCurrentId++;
  } while (vid == 0xFFFFFFFF);

  return vid;
}

static void vidRemove(VID_LIST** vidList) {
  if ((*vidList)->prev != NULL) {
    (*vidList)->prev->next = (*vidList)->next;
  } else {
    vidRoot = (*vidList)->next;
  }

  if ((*vidList)->next != NULL) {
    (*vidList)->next->prev = (*vidList)->prev;
  }

  (*vidList)->next = vidFree;

  if (vidFree != NULL) {
    vidFree->prev = *vidList;
  }

  (*vidList)->prev = NULL;
  vidFree = *vidList;
  *vidList = NULL;
}

void vidRemoveVoiceReferences(SYNTH_VOICE* svoice) {
  if (svoice->id == 0xFFFFFFFF) {
    return;
  }

  voiceResetLastStarted(svoice);
  if (svoice->parent != 0xFFFFFFFF) {
    synthVoice[svoice->parent & 0xFF].child = svoice->child;
    if (svoice->child != 0xFFFFFFFF) {
      synthVoice[svoice->child & 0xFF].parent = svoice->parent;
    }

    vidRemove(&svoice->vidList);
  } else if (svoice->child != 0xFFFFFFFF) {
    svoice->vidList->root = svoice->child;
    synthVoice[svoice->child & 0xFF].parent = 0xFFFFFFFF;
    synthVoice[svoice->child & 0xFF].vidMasterList = svoice->vidMasterList;
    if (svoice->vidList != svoice->vidMasterList) {
      vidRemove(&svoice->vidList);
    }

    svoice->vidMasterList = svoice->vidList = NULL;
  } else if (svoice->vidList != svoice->vidMasterList) {
    vidRemove(&svoice->vidList);
    vidRemove(&svoice->vidMasterList);
  } else {
    vidRemove(&svoice->vidList);
    svoice->vidMasterList = NULL;
  }
}

u32 vidMakeRoot(SYNTH_VOICE* svoice) {
  svoice->vidMasterList = svoice->vidList;
  return svoice->vidList->vid;
}

u32 vidMakeNew(SYNTH_VOICE* svoice, u32 isMaster) {
  u32 vid;       // r29
  VID_LIST* nvl; // r30
  VID_LIST* lvl; // r28
  VID_LIST* vl;  // r31

  vid = get_newvid();
  lvl = NULL;
  nvl = vidRoot;

  while (nvl != NULL) {
    if (nvl->vid > vid) {
      break;
    }

    if (nvl->vid == vid) {
      vid = get_newvid();
    }

    lvl = nvl;
    nvl = nvl->next;
  }

  if ((vl = vidFree) == NULL) {
    return 0xFFFFFFFF;
  }

  if ((vidFree = vidFree->next) != NULL) {
    vidFree->prev = NULL;
  }

  if (lvl == NULL) {
    vidRoot = vl;
  } else {
    lvl->next = vl;
  }

  vl->prev = lvl;
  vl->next = nvl;

  if (nvl != NULL) {
    nvl->prev = vl;
  }

  vl->vid = vid;
  vl->root = svoice->id;
  svoice->vidMasterList = isMaster ? vl : NULL;
  svoice->vidList = vl;

  return isMaster ? vid : svoice->id;
}

u32 vidGetInternalId(u32 vid) {
  VID_LIST* vl;

  if (vid != 0xffffffff) {
    if ((vl = get_vidlist(vid)) != NULL) {
      return vl->root;
    }
  }

  return 0xffffffff;
}

static void voiceInitPrioSort() {
  u32 i;

  for (i = 0; i < synthInfo.voiceNum; ++i) {
    voicePrioSortVoices[i].user = 0;
  }

  for (i = 0; i < 256; ++i) {
    voicePrioSortVoicesRoot[i] = 0xff;
  }

  voicePrioSortRootListRoot = 0xffff;
}

void voiceRemovePriority(SYNTH_VOICE* svoice) {
  SYNTH_VOICELIST* vps; // r31
  SYNTH_ROOTLIST* rps;  // r30

  vps = &voicePrioSortVoices[svoice->id & 0xFF];
  if (vps->user != 1) {
    return;
  }

  if (vps->prev != 0xFF) {
    voicePrioSortVoices[vps->prev].next = vps->next;
  } else {
    voicePrioSortVoicesRoot[svoice->prio] = vps->next;
  }

  if (vps->next != 0xFF) {
    voicePrioSortVoices[vps->next].prev = vps->prev;
  } else if (vps->prev == 0xFF) {
    rps = &voicePrioSortRootList[svoice->prio];

    if (rps->prev != 0xFFFF) {
      voicePrioSortRootList[rps->prev].next = rps->next;

    } else {
      voicePrioSortRootListRoot = rps->next;
    }

    if (rps->next != 0xFFFF) {
      voicePrioSortRootList[rps->next].prev = rps->prev;
    }
  }

  vps->user = 0;
}

void voiceSetPriority(SYNTH_VOICE* svoice, u8 prio) {
  u16 li;               // r25
  SYNTH_VOICELIST* vps; // r27
  u16 i;                // r29
  u32 v;                // r26
  v = (u8)svoice->id;
  vps = &voicePrioSortVoices[v];
  if (vps->user == 1) {
    if (svoice->prio == prio) {
      return;
    }

    voiceRemovePriority(svoice);
  }

  vps->user = 1;
  vps->prev = 0xff;
  if ((vps->next = voicePrioSortVoicesRoot[prio]) != 0xFF) {
    voicePrioSortVoices[voicePrioSortVoicesRoot[prio]].prev = v;
  } else if (voicePrioSortRootListRoot != 0xFFFF) {
    if (prio >= voicePrioSortRootListRoot) {
      for (i = voicePrioSortRootListRoot; i != 0xFFFF; i = voicePrioSortRootList[i].next) {
        if ((u16)i > prio) {
          break;
        }
        li = i;
      }

      voicePrioSortRootList[li].next = (u16)prio;
      voicePrioSortRootList[prio].prev = li;
      voicePrioSortRootList[prio].next = i;
      if (i != 0xFFFF) {
        voicePrioSortRootList[i].prev = prio;
      }

    } else {
      voicePrioSortRootList[prio].next = voicePrioSortRootListRoot;
      voicePrioSortRootList[prio].prev = 0xFFFF;
      voicePrioSortRootList[voicePrioSortRootListRoot].prev = prio;
      voicePrioSortRootListRoot = prio;
    }
  } else {
    voicePrioSortRootList[prio].next = 0xFFFF;
    voicePrioSortRootList[prio].prev = 0xFFFF;
    voicePrioSortRootListRoot = prio;
  }

  voicePrioSortVoicesRoot[prio] = v;
  svoice->prio = prio;
  hwSetPriority(svoice->id & 0xFF, ((u32)prio << 24) | (svoice->age >> 15));
}

u32 voiceAllocate(u8 priority, u8 maxVoices, u16 allocId, u8 fxFlag) {
  s32 i;                // r31
  s32 num;              // r26
  s32 voice;            // r30
  u16 p;                // r29
  u32 type_alloc;       // r25
  SYNTH_VOICELIST* sfv; // r27

  if (!synthIdleWaitActive) {    
      if (fxFlag) {
        type_alloc = (voiceFxRunning >= synthInfo.maxSFX && synthInfo.voiceNum > synthInfo.maxSFX);
    
        if (synthInfo.maxSFX <= maxVoices) {
            goto _skip_alloc;
        }
        
        goto _do_alloc;
      } else {
        type_alloc = (voiceMusicRunning >= synthInfo.maxMusic && synthInfo.voiceNum > synthInfo.maxMusic);

        if (synthInfo.maxMusic <= maxVoices) {
            goto _skip_alloc;
        }
          
_do_alloc:
          num = 0;
          voice = -1;

          p = voicePrioSortRootListRoot;  
          while (p != 0xFFFF &&  priority >= p && voice == -1) {
            for (i = voicePrioSortVoicesRoot[p]; i != 0xff; i = voicePrioSortVoices[i].next) {
              if (allocId != synthVoice[i].allocId) 
                  continue;
                ++num;
                if(synthVoice[i].block)
                  continue;
                
                if (!type_alloc || fxFlag == synthVoice[i].fxFlag) {
                    if((synthVoice[i].cFlags & 2)) 
                        continue;
                    if (voice != -1) {
                        if(synthVoice[i].age < synthVoice[voice].age)
                            voice = i;
                    }
                    else 
                        voice = i;
                    
                }
            }

              p = voicePrioSortRootList[p].next;
          }
        }

      if (num < maxVoices) {
          while (p != 0xffff && num < maxVoices) {
              i = voicePrioSortVoicesRoot[p];
              while (i != 0xff) {
                    if (allocId == synthVoice[i].allocId) {
                        num++;
                    }
                    
                    i = voicePrioSortVoices[i].next;
              }

              p = voicePrioSortRootList[p].next;
          }

        if (num < maxVoices) {
    _skip_alloc:
            if (voiceListRoot != 0xff && type_alloc == 0) {
                voice = voiceListRoot;
                goto _update;
            }
    
            if (priority < voicePrioSortRootListRoot) {
                return -1;
            }
    
            voice = -1;
            p = voicePrioSortRootListRoot;
    
          while (p != 0xFFFF &&  priority >= p && voice == -1) {
            for (i = voicePrioSortVoicesRoot[p]; i != 0xff; i = voicePrioSortVoices[i].next) {
              if (synthVoice[i].block != 0) 
                  continue;
                
                if (!type_alloc || fxFlag == synthVoice[i].fxFlag) {
                    if((synthVoice[i].cFlags & 2)) 
                        continue;
                    if (voice != -1) {
                        if(synthVoice[voice].age > synthVoice[i].age)
                            voice = i;
                    }
                    else 
                        voice = i;
                }
            }
                p = voicePrioSortRootList[p].next;
          }
    
              if (voice == -1) {
                return 0xffffffff;
              }
        
              if (synthVoice[voice].prio > priority) {
                  goto _fail;
              }
        }
      }

    _update:
      if (voice == -1) {
          goto _fail;
      }
      
      if (voiceList[voice].user == 1) {
        sfv = voiceList + voice;
        i = sfv->prev;
          
        if (i != 0xff) {
          voiceList[i].next = sfv->next;
        } else {
          voiceListRoot = sfv->next;
        }

        i = sfv->next;
        if (i != 0xff) {
          voiceList[i].prev = sfv->prev;
        }
          
        if (voice == voiceListInsert) {
          voiceListInsert = sfv->prev;
        }
          
        sfv->user = 0;
      } else if (synthVoice[voice].fxFlag) {
        voiceFxRunning--;
      } else {
        voiceMusicRunning--;
      }
      if (fxFlag != FALSE) {
        ++voiceFxRunning;
      } else {
        ++voiceMusicRunning;
      }
      return voice;
  }

_fail:
  return -1;
}

void voiceFree(SYNTH_VOICE* svoice) {
  u32 i;                // r29
  SYNTH_VOICELIST* sfv; // r30
  i = 1;
  MUSY_ASSERT(svoice->id != 0xFFFFFFFF);
  macMakeInactive(svoice, MAC_STATE_STOPPED);
  voiceRemovePriority(svoice);
  svoice->addr = NULL;
  svoice->prio = 0;
  sfv = &voiceList[(i = svoice->id & 0xFF)];
  if (sfv->user == 0) {
    sfv->user = 1;
    if (voiceListRoot != 0xFF) {
      sfv->next = 0xFF;
      sfv->prev = voiceListInsert;
      voiceList[voiceListInsert].next = i;
    } else {
      sfv->next = 0xFF;
      sfv->prev = 0xFF;
      voiceListRoot = i;
    }

    voiceListInsert = i;
    if (svoice->fxFlag != 0) {
      --voiceFxRunning;
    } else {
      --voiceMusicRunning;
    }
  }

  svoice->id = 0xFFFFFFFF;
}

static void voiceInitFreeList() {
  u32 i; // r31

  for (i = 0; i < synthInfo.voiceNum; ++i) {
    voiceList[i].prev = i - 1;
    voiceList[i].next = i + 1;
    voiceList[i].user = 1;
  }

  voiceList[0].prev = 0xff;
  voiceList[synthInfo.voiceNum - 1].next = 0xff;
  voiceListRoot = 0;
  voiceListInsert = synthInfo.voiceNum - 1;
}

void synthInitAllocationAids() {
  voiceInitFreeList();
  voiceInitPrioSort();
  voiceFxRunning = 0;
  voiceMusicRunning = 0;
}

u32 voiceBlock(u8 prio) {
  u32 voice;

  if ((voice = voiceAllocate(prio, 0xFF, 0xFFFF, 1)) != 0xFFFFFFFF) {
    synthVoice[voice].block = 1;
    synthVoice[voice].fxFlag = 1;

#if MUSY_VERSION >= MUSY_VERSION_CHECK(1, 5, 4)
    synthVoice[voice].allocId = 0xFFFF;
#endif

    vidRemoveVoiceReferences(&synthVoice[voice]);
    synthVoice[voice].id = voice | 0xFFFFFF00;

    if (hwIsActive(voice)) {
      hwBreak(voice);
    }

    macMakeInactive(&synthVoice[voice], MAC_STATE_STOPPED);
    synthVoice[voice].addr = NULL;
    voiceSetPriority(&synthVoice[voice], prio);
  }

  return voice;
}

void voiceUnblock(u32 voice) {
  if (voice == 0xFFFFFFFF) {
    return;
  }

  if (hwIsActive(voice)) {
    hwBreak(voice);
  }

  synthVoice[voice].id = voice;
  voiceFree(&synthVoice[voice]);
  synthVoice[voice].block = 0;
}

void voiceKill(u32 vi) {
  SYNTH_VOICE* sv = &synthVoice[vi]; // r31
  if (sv->addr != NULL) {
    vidRemoveVoiceReferences(sv);
    sv->cFlags &= ~3;
    sv->age = 0;
    voiceFree(sv);
  }

  if (sv->block != 0) {
    streamKill(vi);
  }

  hwBreak(vi);
}

s32 voiceKillSound(u32 voiceid) {
  s32 ret = -1;     // r29
  u32 next_voiceid; // r28
  u32 i;            // r30
  if (sndActive != FALSE) {
    for (voiceid = vidGetInternalId(voiceid); voiceid != -1; voiceid = next_voiceid) {
      i = voiceid & 0xff;
      next_voiceid = synthVoice[i].child;
      if (voiceid == synthVoice[i].id) {
        voiceKill(i);
        ret = 0;
      }
    }
  }

  return ret;
}

void synthKillAllVoices(unsigned char musiconly) {
  u32 i;

  for (i = 0; i < synthInfo.voiceNum; ++i) {
    if (synthVoice[i].addr != NULL) {
      if (musiconly == 0 || (musiconly != 0 && synthVoice[i].fxFlag == 0)) {
        voiceKill(i);
      }
    } else {
      voiceKill(i);
    }
  }
}

void synthKillVoicesByMacroReferences(u16* ref) {
  u32 i;  // r31
  u16 id; // r29

  for (i = 0; i < synthInfo.voiceNum; ++i) {
    if (synthVoice[i].addr == NULL && synthVoice[i].block == 0) {
      voiceKill(i);
    }
  }

  while (*ref != 0xFFFF) {
    if ((*ref & 0x8000)) {
      id = *ref & 0x3fff;
      while (id <= ref[1]) {
        for (i = 0; i < synthInfo.voiceNum; ++i) {
          if (synthVoice[i].addr != NULL && id == synthVoice[i].macroId) {
            voiceKill(i);
          }
        }
        ++id;
      }
      ref += 2;
    } else {
      for (i = 0; i < synthInfo.voiceNum; ++i) {
        if (synthVoice[i].addr != NULL && *ref == synthVoice[i].macroId) {
          voiceKill(i);
        }
      }
      ++ref;
    }
  }
}

u32 voiceIsLastStarted(SYNTH_VOICE* svoice) {
  u32 i; // r31

  if (svoice->id != 0xFFFFFFFF && svoice->midi != 0xFF) {
    i = svoice->id & 0xFF;
    if (svoice->midiSet == 0xFF) {
      if (synth_last_fxstarted[i] == i) {
        return TRUE;
      }
    } else if (synth_last_started[svoice->midiSet][svoice->midi] == i) {
      return TRUE;
    }
  }

  return FALSE;
}

void voiceSetLastStarted(SYNTH_VOICE* svoice) {
  u32 i; // r31

  if (svoice->id != 0xFFFFFFFF && svoice->midi != 0xFF) {
    i = svoice->id & 0xFF;
    if (svoice->midiSet == 0xFF) {
      synth_last_fxstarted[i] = i;
    } else {
      synth_last_started[svoice->midiSet][svoice->midi] = i;
    }
  }
}

void voiceResetLastStarted(struct SYNTH_VOICE* svoice) {
  u32 i;

  if ((svoice->id != 0xffffffff) && (svoice->midi != 0xff)) {
    i = svoice->id & 0xff;
    if (svoice->midiSet == 0xff) {
      if (synth_last_fxstarted[i] == i) {
        synth_last_fxstarted[i] = 0xff;
      }
    } else if (i == synth_last_started[svoice->midiSet][svoice->midi]) {
      synth_last_started[svoice->midiSet][svoice->midi] = 0xff;
    }
  }
}

void voiceInitLastStarted() {
  u32 i;
  u32 j;

  for (i = 0; i < 8; ++i) {
    for (j = 0; j < 16; ++j) {
      synth_last_started[i][j] = 0xFF;
    }
  }

  for (j = 0; j < 64; ++j) {
    synth_last_fxstarted[j] = 0xFF;
  }
}
