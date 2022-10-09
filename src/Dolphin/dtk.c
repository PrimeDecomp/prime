#include <dolphin/ai.h>
#include <dolphin/dtk.h>

static DVDCommandBlock __block_for_run_callback;
static DVDCommandBlock __block_for_prep_callback;
static DVDCommandBlock __block_for_stream_status;
static DVDCommandBlock __block_for_ais_isr;
static DVDCommandBlock __block_for_flushtracks;
static DVDCommandBlock __block_for_set_state;
static DVDCommandBlock __block_for_next_track;

static DTKTrack* __DTKCurrentTrack;
static DTKTrack* __DTKPlayListHead;
static DTKTrack* __DTKPlayListTail;
static vu32 __DTKState;
static vu32 __DTKTempState;
static vu32 __DTKRepeatMode;
static vu32 __DTKPosition;
static vu32 __DTKInterruptFrequency;
static vu8 __DTKVolumeL;
static vu8 __DTKVolumeR;
static volatile u32 __DTKShutdownFlag;
static volatile u32 __DTKTrackEnded;
static DTKFlushCallback __DTKFlushCallback;

static void __DTKStartAi() {
  AISetStreamVolLeft(__DTKVolumeL);
  AISetStreamVolRight(__DTKVolumeR);
  AIResetStreamSampleCount();
  AISetStreamTrigger(__DTKInterruptFrequency);
  AISetStreamPlayState(1);
}

static void __DTKStopAi() {
  AISetStreamVolLeft(0);
  AISetStreamVolRight(0);
  AISetStreamPlayState(0);
}

static void __DTKCheckUserCallback(DTKTrack* track, u32 event) {
  if (track == NULL) {
    return;
  }

  if (track->callback != NULL && (track->eventMask & event) != 0) {
    track->callback(track->eventMask & event);
  }
}

static void __DTKForward() {
  BOOL enabled;
  enabled = OSDisableInterrupts();
  if (__DTKCurrentTrack != NULL && __DTKCurrentTrack->next != nullptr) {
    __DTKCurrentTrack = __DTKCurrentTrack->next;
  }

  OSRestoreInterrupts(enabled);
}

static void __DTKBackward() {
  BOOL enabled;
  enabled = OSDisableInterrupts();
  if (__DTKCurrentTrack != NULL && __DTKCurrentTrack->prev != nullptr) {
    __DTKCurrentTrack = __DTKCurrentTrack->prev;
  }

  OSRestoreInterrupts(enabled);
}

static void __DTKCallbackForStreamStatus(s32 result, DVDCommandBlock* block) {
  if ((u8)result) {
    return;
  }
  __DTKTrackEnded = TRUE;
  __DTKPosition = 0;
}

static void __DTKCallbackForRun(s32 result, DVDFileInfo* fileInfo) {
  __DTKStartAi();
  DVDStopStreamAtEndAsync(&__block_for_run_callback, NULL);
  __DTKState = 1;
  __DTKCheckUserCallback(__DTKCurrentTrack, 1);
}

static void __DTKCallbackForPreparePaused(s32 result, DVDFileInfo* fileInfo) {
  __DTKStopAi();
  DVDStopStreamAtEndAsync(&__block_for_prep_callback, NULL);
  __DTKState = 2;
  __DTKCheckUserCallback(__DTKCurrentTrack, 32);
}

static void __DTKPrepareCurrentTrack(DVDCallback callback) {
  DVDPrepareStreamAsync(&__DTKCurrentTrack->dvdFileInfo, 0, 0, callback);
}
static void __DTKCallbackForPlaylist(s32 result, DVDCommandBlock* block) {
  __DTKPosition = result;

  if (__DTKTrackEnded != FALSE) {
    __DTKTrackEnded = FALSE;
    __DTKCheckUserCallback(__DTKCurrentTrack, 16);
    __DTKState = 3;
    switch (__DTKRepeatMode) {
    case 0:
      if (__DTKCurrentTrack == NULL) {
        break;
      }

      if (__DTKCurrentTrack->next != NULL) {
        __DTKCurrentTrack = __DTKCurrentTrack->next;
        __DTKStopAi();
        __DTKPrepareCurrentTrack(__DTKCallbackForRun);
      } else {
        __DTKCurrentTrack = __DTKPlayListHead;
        __DTKStopAi();
        __DTKState = 0;
      }
      break;
    case 1: {
      if (__DTKCurrentTrack == NULL) {
        break;
      }
      if (__DTKCurrentTrack->next != NULL) {
        __DTKCurrentTrack = __DTKCurrentTrack->next;
        __DTKStopAi();
        __DTKPrepareCurrentTrack(__DTKCallbackForRun);
      } else {
        __DTKCurrentTrack = __DTKPlayListHead;
        __DTKStopAi();
        __DTKPrepareCurrentTrack(__DTKCallbackForRun);
      }
      break;
    }
    case 2: {
      if (__DTKCurrentTrack == NULL) {
        break;
      }

      __DTKStopAi();
      __DTKPrepareCurrentTrack(__DTKCallbackForRun);
      break;
    }
    }
    return;
  }

  DVDGetStreamErrorStatusAsync(&__block_for_stream_status, __DTKCallbackForStreamStatus);
}

static void __DTKCallbackForAIInterrupt(u32 result) {
  AISetStreamTrigger(result + __DTKInterruptFrequency);

  if (__DTKCurrentTrack != NULL) {
    DVDGetStreamPlayAddrAsync(&__block_for_ais_isr, __DTKCallbackForPlaylist);
  }
}

static void __DTKCallbackForFlush(s32 result, DVDCommandBlock* block) {
  DTKTrack* iter;
  AISetStreamPlayState(0);

  for (iter = __DTKPlayListHead; iter != NULL; iter = iter->next) {
    DVDClose(&iter->dvdFileInfo);
  }

  __DTKPlayListHead = NULL;
  __DTKPlayListTail = NULL;
  __DTKCurrentTrack = NULL;
  __DTKState = 0;
  if (__DTKFlushCallback != NULL) {
    __DTKFlushCallback();
    __DTKFlushCallback = NULL;
  }

  __DTKState = 0;
  __DTKShutdownFlag = 0;
}

static void __DTKCallbackForStop() {
  __DTKCheckUserCallback(__DTKCurrentTrack, 2);
  __DTKState = 0;
}

static void __DTKCallbackForNextTrack() {
  AISetStreamPlayState(0);
  __DTKForward();
  __DTKState = 0;
  DTKSetState(__DTKTempState);
}

static void __DTKCallbackForPrevTrack() {
  AISetStreamPlayState(0);
  __DTKBackward();
  __DTKState = 0;
  DTKSetState(__DTKTempState);
}

void DTKInit() {
  __DTKCurrentTrack = NULL;
  __DTKPlayListHead = NULL;
  __DTKPlayListTail = NULL;
  __DTKState = 0;
  __DTKRepeatMode = 0;
  __DTKPosition = 0;
  __DTKInterruptFrequency = 48000;
  __DTKVolumeL = 255;
  __DTKVolumeR = 255;
  AISetStreamVolLeft(0);
  AISetStreamVolRight(0);
  AIRegisterStreamCallback(__DTKCallbackForAIInterrupt);
  AIResetStreamSampleCount();
  AISetStreamPlayState(0);
}

u32 DTKQueueTrack(char* fileName, DTKTrack* track, u32 eventMask, DTKCallback callback) {
  BOOL enabled;
  u32 prepareTrack = FALSE;
  if (DVDOpen(fileName, &track->dvdFileInfo) == 0) {
    return 1;
  }

  enabled = OSDisableInterrupts();
  track->fileName = fileName;
  track->eventMask = eventMask;
  track->callback = callback;

  if (__DTKPlayListHead == NULL) {
    __DTKPlayListHead = track;
    __DTKPlayListTail = track;
    track->prev = NULL;
    track->next = NULL;
    if (__DTKState == 1) {
      prepareTrack = TRUE;
    }
  } else {
    __DTKPlayListTail->next = track;
    track->prev = __DTKPlayListTail;
    __DTKPlayListTail = track;
    track->next = NULL;
  }

  if (__DTKCurrentTrack == NULL) {
    __DTKCurrentTrack = track;
  }

  OSRestoreInterrupts(enabled);
  __DTKCheckUserCallback(track, 8);
  if (prepareTrack != 0) {
    __DTKState = 3;
    __DTKPrepareCurrentTrack(__DTKCallbackForRun);
  }

  return 0;
}

void DTKFlushTracks(DTKFlushCallback callback) {
  u32 oldState;
  if (__DTKState != 3) {
    oldState = __DTKState;
    __DTKState = 3;
    __DTKFlushCallback = callback;
    if (oldState == 1) {
      DVDCancelStreamAsync(&__block_for_flushtracks, __DTKCallbackForFlush);
    } else {
      __DTKCallbackForFlush(0, NULL);
    }
  }
}

void DTKSetSampleRate(u32 rate) {}

void DTKSetRepeatMode(u32 repeat) { __DTKRepeatMode = repeat; }

void DTKSetState(u32 state) {
  if (__DTKState == state || __DTKState == 3) {
    return;
  }
  switch (state) {
  case 0: {
    if (__DTKCurrentTrack == NULL) {
      break;
    }

    __DTKState = 3;
    AISetStreamVolLeft(0);
    AISetStreamVolRight(0);
    AISetStreamPlayState(0);
    DVDCancelStreamAsync(&__block_for_set_state, __DTKCallbackForStop);
    break;
  }
  case 1: {
    if (__DTKState == 2) {
      __DTKStartAi();
      __DTKState = 1;
      if (__DTKCurrentTrack != NULL) {
        __DTKCheckUserCallback(__DTKCurrentTrack, 1);
      }
    } else if (__DTKCurrentTrack != NULL) {
      __DTKState = 3;
      __DTKPrepareCurrentTrack(__DTKCallbackForRun);

    } else {
      __DTKState = 1;
    }

    __DTKTrackEnded = 0;
    break;
  }
  case 4: {
    if (__DTKState != 0) {
      break;
    }

    if (__DTKCurrentTrack != NULL) {
      __DTKState = 3;
      __DTKPrepareCurrentTrack(__DTKCallbackForPreparePaused);
    }

    __DTKTrackEnded = FALSE;
    break;
  }
  case 2: {
    AISetStreamPlayState(0);
    if (__DTKState == 1) {
      __DTKState = 2;
    }
    __DTKCheckUserCallback(__DTKCurrentTrack, 4);
    break;
  }
  }
}

void DTKNextTrack() {
  if (__DTKState != 3 && __DTKCurrentTrack != NULL) {
    __DTKTempState = __DTKState;
    __DTKState = 3;
    if (__DTKTempState == 1) {
      AISetStreamVolLeft(0);
      AISetStreamVolRight(0);
      DVDCancelStreamAsync(&__block_for_next_track, __DTKCallbackForNextTrack);

    } else {
      __DTKForward();
      __DTKState = __DTKTempState;
    }
  }
}

u32 DTKGetState() { return __DTKState; }

void DTKSetVolume(u8 left, u8 right) {
  __DTKVolumeL = left;
  __DTKVolumeR = right;
  if (__DTKState == 1) {
    AISetStreamVolLeft(left);
    AISetStreamVolRight(right);
  }
}
