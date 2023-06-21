#include "musyx/musyx_priv.h"

u8 s3dCallCnt;
SND_DOOR* s3dDoorRoot;
SND_EMITTER* s3dEmitterRoot;
SND_LISTENER* s3dListenerRoot;
SND_ROOM* s3dRoomRoot;
u8 s3dUseMaxVoices;
u8 snd_base_studio;
u8 snd_max_studios;
u32 snd_used_studios;

static void UpdateRoomDistances() {
  SND_ROOM* r;      // r30
  SND_LISTENER* li; // r31
  float distance;   // r63
  u32 n;            // r29
  SND_FVECTOR d;    // r1+0x8

  for (n = 0, li = s3dListenerRoot; li != NULL; li = li->next, ++n)
    ;

  if (n != 0) {
    for (r = s3dRoomRoot; r != NULL; r = r->next) {
      if (r->studio != 0xFF) {
        distance = 0.f;
        for (li = s3dListenerRoot; li != NULL; li = li->next) {
          d.x = r->pos.x - li->pos.x;
          d.y = r->pos.y - li->pos.y;
          d.z = r->pos.z - li->pos.z;
          distance += d.x * d.x + d.y * d.y + d.z * d.z;
        }

        r->distance = distance / n;
      }
    }
  }
}

static CheckRoomStatus() {
  SND_LISTENER* li;   // r30
  SND_EMITTER* em;    // r28
  SND_ROOM* r;        // r27
  SND_ROOM* max_room; // r29
  SND_ROOM* room;     // r31
  SND_FVECTOR d;      // r1+0x8
  float distance;     // r63
  float maxDis;       // r62
  u32 li_num;         // r25
  u32 i;              // r26
  u32 mask;           // r23
  u8 has_listener;    // r24

  UpdateRoomDistances();

  for (li_num = 0, li = s3dListenerRoot; li != NULL; li = li->next, ++li_num)
    ;

  if (li_num != 0) {
    for (room = s3dRoomRoot; room != NULL; room = room->next) {
      if (room->studio == 0xff) {
        distance = 0.f;
        for (li = s3dListenerRoot; li != NULL; li = li->next) {
          d.x = room->pos.x - li->pos.x;
          d.y = room->pos.y - li->pos.y;
          d.z = room->pos.z - li->pos.z;
          distance += d.x * d.x + d.y * d.y + d.z * d.z;
        }

        distance = distance / li_num;

        has_listener = FALSE;
        for (li = s3dListenerRoot; li != NULL; li = li->next) {
          if (li->room == room) {
            has_listener = TRUE;
            break;
          }
        }
        // TODO: Finish
      }
    }
  }
}

bool sndAddRoom(SND_ROOM* room, SND_FVECTOR* pos, void (*activateReverb)(u8 studio, void* user),
                void (*deActivateReverb)(u8 studio)) {
  if (sndActive) {
    hwDisableIrq();

    if ((room->next = s3dRoomRoot) != NULL) {
      room->next->prev = room;
    }

    room->prev = NULL;
    s3dRoomRoot = room;
    room->flags = 0;
    room->studio = 0xff;
    room->activateReverb = activateReverb;
    room->deActivateReverb = deActivateReverb;
    room->pos = *pos;

    hwEnableIrq();
    return TRUE;
  }

  return FALSE;
}

bool sndRemoveRoom(SND_ROOM* room) {
  if (sndActive) {
    hwDisableIrq();
    if (room->prev != NULL) {
      room->prev->next = room->next;
    } else {
      s3dRoomRoot = room->next;
    }

    if (room->next != NULL) {
      room->next->prev = room->prev;
    }

    if (room->studio != 0xFF) {
      snd_used_studios &= ~(1 << room->studio - snd_base_studio);

      if (room->deActivateReverb) {
        room->deActivateReverb(room->studio);
      }

      synthDeactivateStudio(room->studio);
    }

    room->flags = 0;
    hwEnableIrq();

    return TRUE;
  }

  return FALSE;
}

bool sndUpdateRoom(SND_ROOM* room, SND_FVECTOR* pos) {

  if (sndActive) {
    hwDisableIrq();
    room->pos = *pos;
    hwEnableIrq();
    return TRUE;
  }

  return FALSE;
}

static void AddListener2Room(SND_ROOM* room) {
  if (room->flags & 0x80000000) {
    return;
  }

  if (room->curMVol != 0) {
    return;
  }

  room->flags |= 0x80000000;
}

static void RemoveListenerFromRoom(SND_ROOM* room) {
  u32 n;            // r30
  SND_LISTENER* li; // r31

  for (n = 0, li = s3dListenerRoot; li != NULL; li = li->next) {
    if (li->room == room) {
      ++n;
    }
  }

  if (n == 1) {
    room->flags &= ~0x80000000;
    room->flags |= 0x40000000;
  }
}

static void CalcDoorParameters(SND_DOOR* door) {
  float f; // r1+0xC
  float v; // r63
  v = door->open;
  f = (1.f - door->open) * door->dampen;
  door->input.volA = door->fxVol * v;
  door->input.volB = 0;
  door->input.vol = v * 127.f;
}

static void CheckDoorStatus() {
  SND_DOOR* door; // r31

  for (door = s3dDoorRoot; door != NULL; door = door->next) {
    if (!(door->flags & 0x80000000)) {
      if (door->a->studio != 0xFF) {
        if (door->b->studio != 0xFF) {
          CalcDoorParameters(door);
          if (door->flags & 1) {
            door->input.srcStudio = door->b->studio;
            synthAddStudioInput(door->a->studio, &door->input);
          } else {
            door->input.srcStudio = door->a->studio;
            synthAddStudioInput(door->b->studio, &door->input);
          }

          door->flags |= 0x80000000;
        }
      }
    } else if (door->a->studio == 0xFF || door->b->studio == 0xFF) {
      if ((door->a->studio != 0xFF && door->a->studio == door->destStudio) ||
          (door->b->studio != 0xFF && door->b->studio == door->destStudio)) {
        synthRemoveStudioInput(door->destStudio, &door->input);
      }

      door->flags &= ~0x80000000;
    } else {
      CalcDoorParameters(door);
    }
  }
}

bool sndAddDoor(SND_DOOR* door, SND_ROOM* a, SND_ROOM* b, SND_FVECTOR* pos, float dampen,
                float open, unsigned char fxVol, s16 filterCoef[4], u32 flags) {

  hwDisableIrq();

  if ((door->next = s3dDoorRoot) != NULL) {
    door->next->prev = door;
  }

  door->prev = NULL;
  s3dDoorRoot = door;
  door->pos = *pos;
  door->open = open;
  door->dampen = dampen;
  door->fxVol = fxVol;
  door->a = a;
  door->b = b;
  door->flags = flags;
  hwEnableIrq();
  return 1;
}

bool sndRemoveDoor(SND_DOOR* door) {
  hwDisableIrq();
  if (door->prev != NULL) {
    door->prev->next = door->next;
  } else {
    s3dDoorRoot = door->next;
  }
  if (door->next != NULL) {
    door->next->prev = door->prev;
  }
  hwEnableIrq();
  return 1;
}

static void CalcEmitter(struct SND_EMITTER* em, float* vol, float* doppler, float* xPan,
                        float* yPan, float* zPan) {
  struct SND_LISTENER* li; // r31
  struct SND_FVECTOR d;    // r1+0x44
  struct SND_FVECTOR v;    // r1+0x38
  struct SND_FVECTOR p;    // r1+0x2C
  float relspeed;          // r60
  float distance;          // r61
  float new_distance;      // r59
  float ft;                // r63
  float vd;                // r62
  struct SND_FVECTOR pan;  // r1+0x20
  unsigned long n;         // r29
}

static u8 clip127(u8 v) {
  if (v <= 0x7f) {
    return v;
  }
  return 0x7f;
}

static u16 clip3FFF(u32 v) {
  if (v > 0x3fff) {
    return 0x3fff;
  }
  return v;
}

static void SetFXParameters(struct SND_EMITTER* em, float vol, float xPan, float zPan,
                            float doppler) {
  unsigned long vid;          // r30
  unsigned char i;            // r28
  struct SND_PARAMETER* pPtr; // r31
}

static void EmitterShutdown(SND_EMITTER* em) {
  if (em->next != NULL) {
    em->next->prev = em->prev;
  }

  if (em->prev != NULL) {
    em->prev->next = em->next;
  } else {
    s3dEmitterRoot = em->next;
  }

  em->flags &= 0xFFFF;
  if (em->vid != -1) {
    synthSendKeyOff(em->vid);
  }
}

bool sndUpdateEmitter(SND_EMITTER* em, SND_FVECTOR* pos, SND_FVECTOR* dir, u8 maxVol,
                      SND_ROOM* room) {
  u32 id; // r29

  if (sndActive) {
    hwDisableIrq();

    em->pos = *pos;
    em->dir = *dir;
    em->maxVol = maxVol / 127.f;
    if (em->minVol > em->maxVol) {
      em->minVol = em->maxVol;
    }

    if (em->room != room) {
      if (em->vid != -1) {
        if (room->studio != 0xFF) {
          if ((id = vidGetInternalId(em->vid)) != -1) {
            hwChangeStudio(id & 0xFF, room->studio);
          }
        } else {
          synthSendKeyOff(em->vid);
          em->flags |= 0x80000;
          em->vid = -1;
        }
      }

      em->room = room;
    }
    hwEnableIrq();
    return TRUE;
  }

  return FALSE;
}

bool sndCheckEmitter(SND_EMITTER* em) {
  if (sndActive) {
    return (em->flags & 0x10000) != 0;
  }
  return FALSE;
}

SND_VOICEID AddEmitter(SND_EMITTER* em_buffer, SND_FVECTOR* pos, SND_FVECTOR* dir, float maxDis,
                       float comp, u32 flags, u16 fxid, u32 groupid, u8 maxVol, u8 minVol,
                       SND_ROOM* room, SND_PARAMETER_INFO* para, u32 studio) {
  SND_EMITTER* em; // r31
  float xPan;             // r1+0x3C
  float yPan;             // r1+0x38
  float zPan;             // r1+0x34
  float cvol;             // r1+0x30
  float pitch;            // r1+0x2C


}

void s3dInit(u32 flags) {
  s3dEmitterRoot = 0;
  s3dListenerRoot = 0;
  s3dRoomRoot = 0;
  s3dDoorRoot = 0;
  snd_used_studios = 0;
  snd_base_studio = 1;
  snd_max_studios = 3;
  s3dCallCnt = 0;
  s3dUseMaxVoices = ((flags & 2) != 0);
}

void s3dExit() {}
