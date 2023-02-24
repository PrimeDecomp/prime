#include "musyx/assert.h"
#include "musyx/musyx_priv.h"

static VS vs;

void vsInit() {
  u32 i;
  vs.numBuffers = 0;
  for (i = 0; i < 64; i++) {
    vs.voices[i] = 0xFF;
  }

  vs.nextInstID = 0;
  vs.callback = NULL;
}

u16 vsNewInstanceID() {
  u8 i;       // r31
  u16 instID; // r29
  do {
    instID = vs.nextInstID++;
    i = 0;
    for (; i < vs.numBuffers; ++i) {
      if (vs.streamBuffer[i].state != 0 && vs.streamBuffer[i].info.instID == instID) {
        break;
      }
    }
  } while (i != vs.numBuffers);

  return instID;
}

u8 vsAllocateBuffer() {
  u8 i;

  for (i = 0; i < vs.numBuffers; ++i) {
    if (vs.streamBuffer[i].state != 0) {
      continue;
    }
    vs.streamBuffer[i].state = 1;
    vs.streamBuffer[i].last = 0;
    return i;
  }

  return 0xFF;
}

void vsFreeBuffer(u8 bufferIndex) {
  vs.streamBuffer[bufferIndex].state = 0;
  vs.voices[vs.streamBuffer[bufferIndex].voice] = 0xFF;
}

u32 vsSampleStartNotify(unsigned char voice) {
  u8 sb;    // r29
  u8 i;     // r28
  u32 addr; // r27

  for (i = 0; i < vs.numBuffers; ++i) {
    if (vs.streamBuffer[i].state != 0 && vs.streamBuffer[i].voice == voice) {
      vsFreeBuffer(i);
    }
  }

  sb = vs.voices[voice] = vsAllocateBuffer();
  if (sb != 0xFF) {
    addr = aramGetStreamBufferAddress(vs.voices[voice], 0);
    hwSetVirtualSampleLoopBuffer(voice, addr, vs.bufferLength);
    vs.streamBuffer[sb].info.smpID = hwGetSampleID(voice);
    vs.streamBuffer[sb].info.instID = vsNewInstanceID();
    vs.streamBuffer[sb].smpType = hwGetSampleType(voice);
    vs.streamBuffer[sb].voice = voice;
    if (vs.callback != NULL) {
      vs.callback(0, &vs.streamBuffer[sb].info);

      return (vs.streamBuffer[sb].info.instID << 8) | voice;
    }
    hwSetVirtualSampleLoopBuffer(voice, 0, 0);
  } else {
    hwSetVirtualSampleLoopBuffer(voice, 0, 0);
  }

  return 0xFFFFFFFF;
}

void vsSampleEndNotify(unsigned long pubID) {
  u8 sb;
  u8 voice;

  if (pubID != 0xFFFFFFFF) {
    u8 id = (u8)pubID;
    sb = vs.voices[id];
    if (sb != 0xFF) {
      if (vs.streamBuffer[sb].info.instID == ((pubID >> 8) & 0xFFFF)) {
        if (vs.callback != NULL) {
          vs.callback(2, &vs.streamBuffer[sb].info);
        }
        vsFreeBuffer(sb);
      }
    }
  }
}

void vsUpdateBuffer(struct VS_BUFFER* sb, unsigned long cpos) {
  u32 len; // r29
  u32 off; // r27

  if (sb->last == cpos) {
    return;
  }
  if ((s32)sb->last < cpos) {
    if ((s8)sb->smpType != 5) {
      cpos = cpos;
    } else {
      sb->info.data.update.off1 = (sb->last / 14) * 8;
      sb->info.data.update.len1 = cpos - sb->last;
      sb->info.data.update.off2 = 0;
      sb->info.data.update.len2 = 0;
      if ((len = vs.callback(1, &sb->info)) != 0) {
        off = sb->last + len;
        sb->last = off - (off / vs.bufferLength) * vs.bufferLength;
      }
    }
  } else if (cpos == 0) {
    if ((s8)sb->smpType != 5) {
      cpos = cpos;
    } else {
      sb->info.data.update.off1 = (sb->last / 14) * 8;
      sb->info.data.update.len1 = vs.bufferLength - sb->last;
      sb->info.data.update.off2 = 0;
      sb->info.data.update.len2 = 0;
      if ((len = vs.callback(1, &sb->info)) != 0) {
        off = sb->last + len;
        sb->last = off - (off / vs.bufferLength) * vs.bufferLength;
      }
    }
  } else if ((s8)sb->smpType != 5) {
    cpos = cpos;
  } else {
    sb->info.data.update.off1 = (sb->last / 14) * 8;
    sb->info.data.update.len1 = vs.bufferLength - sb->last;
    sb->info.data.update.off2 = 0;
    sb->info.data.update.len2 = cpos;
    if ((len = vs.callback(1, &sb->info)) != 0) {
      off = sb->last + len;
      sb->last = off - (off / vs.bufferLength) * vs.bufferLength;
    }
  }
}

void vsSampleUpdates() {
  u32 i;           // r29
  u32 cpos;        // r27
  u32 realCPos;    // r28
  VS_BUFFER* sb;   // r31
  u32 nextSamples; // r26
}

unsigned long sndVirtualSampleAllocateBuffers(unsigned char numInstances,
                                              unsigned long numSamples) {
  long i;            // r31
  unsigned long len; // r28
#line 437
  ASSERT_MSG(sndActive, "Sound system is not initialized.");
  ASSERT_MSG(numInstances <= 64, "Parameter exceeded maximum number of instances allowable");
#line 159
  hwDisableIrq();
  vs.numBuffers = numInstances;
  len = sndStreamAllocLength(numSamples, 1);
  vs.bufferLength = (len / 8) * 14;

  for (i = 0; i < vs.numBuffers; ++i) {
    if ((vs.streamBuffer[i].hwId = aramAllocateStreamBuffer(len)) == 0xFF) {
      break;
    }
    vs.streamBuffer[i].state = 0;
    vs.voices[vs.streamBuffer[i].voice] = 0xFF;
  }

  if (i >= vs.numBuffers) {
    hwEnableIrq();
    return 1;
  }

  while ((i - 1) > 0) {
    aramFreeStreamBuffer(vs.streamBuffer[i - 1].hwId);
    --i;
  }

  hwEnableIrq();
  return 0;
}

void sndVirtualSampleFreeBuffers() {
  u8 i; // r31
#line 481
  ASSERT_MSG(sndActive, "Sound system is not initialized.");

  for (i = 0; i < vs.numBuffers; ++i) {
    aramFreeStreamBuffer(vs.streamBuffer[i].hwId);
  }

  vs.numBuffers = 0;
}

void sndVirtualSampleSetCallback(unsigned long (*callback)(unsigned char,
                                                           struct SND_VIRTUALSAMPLE_INFO*)) {
#line 0x1ed
  ASSERT_MSG(sndActive, "Sound system is not initialized.");
  vs.callback = callback;
}

void vsARAMDMACallback(unsigned long user) {
  if (vs.callback == NULL) {
    return;
  }

  vs.callback(3, &((VS_BUFFER*)user)->info);
}

void sndVirtualSampleARAMUpdate(unsigned short instID, void* base, unsigned long off1,
                                unsigned long len1, unsigned long off2, unsigned long len2) {
  u8 i;
#line 0x203
  ASSERT_MSG(sndActive, "Sound system is not initialized.");

  hwDisableIrq();

  for (i = 0; i < vs.numBuffers; ++i) {
    if (vs.streamBuffer[i].state == 0 || vs.streamBuffer[i].info.instID != instID) {
      continue;
    }
    if ((s32)vs.streamBuffer[i].smpType != 5) {
      i = i;
    } else {
      off1 = (off1 / 14) * 8;
      len1 = ((len1 + 13) / 14) * 8;
      off2 = (off2 / 14) * 8;
      len2 = ((len2 + 13) / 14) * 8;
    }

    if (len1 != 0) {
      hwFlushStream(base, off1, len1, vs.streamBuffer[i].hwId, vsARAMDMACallback,
                    &vs.streamBuffer[i]);
    }
    if (len2 != 0) {
      hwFlushStream(base, off2, len2, vs.streamBuffer[i].hwId, vsARAMDMACallback,
                    &vs.streamBuffer[i]);
    }

    if (vs.streamBuffer[i].smpType == 5) {
      hwSetStreamLoopPS(vs.streamBuffer[i].voice, *(u32*)(OSCachedToUncached(base)) >> 24);
    }
    break;
  }

  hwEnableIrq();
}

void sndVirtualSampleEndPlayback(unsigned short instID) {
  u8 i;              // r30
  VS_BUFFER* stream; // r31
  u32 cpos;          // r28

  hwDisableIrq();

  for (i = 0; i < vs.numBuffers; ++i) {
    if (vs.streamBuffer[i].state == 0 || vs.streamBuffer[i].info.instID != instID) {
      continue;
    }

    stream = &vs.streamBuffer[i];
    cpos = hwGetPos(i);

    if (stream->last < cpos) {
      stream->finalGoodSamples = vs.bufferLength - (cpos - stream->last);
    } else {
      stream->finalGoodSamples = stream->last - cpos;
    }

    stream->finalLast = cpos;
    stream->state = 2;
    break;
  }
  hwEnableIrq();
}
