#include "Kyoto/Audio/CDSPStreamManager.hpp"

#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/CDvdFile.hpp"

#include "dolphin/dvd.h"
#include "dolphin/os.h"
#include "dolphin/os/OSThread.h"

#include <string.h>

static CDSPStreamManager g_Streams[4];
static int sHandleCounter;

int sub_8020c154(const rstl::string&, int, int);

struct SDSPStreamInfo : SStreamInfo {
  SDSPStreamInfo(const CDSPStreamManager& stream);
};

CDSPStreamManager::CDSPStreamManager(const rstl::string& fileName, int handle, char volume,
                                     char oneshot)
: x60_fileName(fileName)
, x70_24_unclaimed(false)
, x70_25_headerReadCancelled(false)
, x70_26_headerReadState(0)
, x71_companionRight(-1)
, x72_companionLeft(-1)
, x73_volume(volume)
, x74_oneshot(oneshot)
, x78_handleId(handle)
, x7c_streamId(-1) {
  if (!CDvdFile::FileExists(fileName.data())) {
    x70_24_unclaimed = true;
    return;
  }
}

CDSPStreamManager::CDSPStreamManager()
: x60_fileName(rstl::string_l(""))
, x70_24_unclaimed(true)
, x70_25_headerReadCancelled(false)
, x70_26_headerReadState(0) {
  x71_companionRight = -1;
  x72_companionLeft = -1;
  x73_volume = 0;
  x78_handleId = -1;
  x7c_streamId = -1;
}

bool CDSPStreamManager::StartHeaderRead(DVDCallback callback) {
  BOOL ints = OSDisableInterrupts();
  bool intsBool = ints != 0;
  if (x70_26_headerReadState != 0 || x70_24_unclaimed) {
    OSRestoreInterrupts(intsBool);
    return false;
  }
  if (DVDOpen(const_cast< char* >(x60_fileName.data()), &x80_dvdFile) == 0) {
    OSRestoreInterrupts(intsBool);
    return false;
  }
  DVDReadAsyncPrio(&x80_dvdFile, &x0_header, 0x60, 0, callback, 1);
  x70_26_headerReadState = 1;
  OSRestoreInterrupts(intsBool);
  return true;
}

bool CDSPStreamManager::fn_80364870() { return x0_header.x8_sampleRate == 32000; }

void CDSPStreamManager::WaitForReadCompletion() {
  BOOL ints = OSEnableInterrupts();
  while (x70_26_headerReadState == 1) {
    OSYieldThread();
  }
  OSRestoreInterrupts(ints);
}

void CDSPStreamManager::Initialize() {
  CDSPStream::Initialize();
  for (int i = 0; i < 4; ++i) {
    g_Streams[i] = CDSPStreamManager();
  }
}

void CDSPStreamManager::Shutdown() {
  CDSPStream::FreeAllStreams(0);
  for (int i = 0; i < 4; ++i) {
    g_Streams[i] = CDSPStreamManager();
  }
}

int CDSPStreamManager::StartStreaming(const rstl::string& fileName, char volume, bool oneshot) {
  BOOL ints = OSDisableInterrupts();
  const int sep = sub_8020c154(fileName, '|', 0);
  if (sep == -1) {
    const int idx = FindUnclaimedStreamIdx();
    if (idx == -1) {
      OSRestoreInterrupts(ints);
      return -1;
    }

    int handle = GetFreeHandleId();
    CDSPStreamManager tmpStream(fileName, handle, volume, oneshot);
    if (tmpStream.x70_24_unclaimed) {
      OSRestoreInterrupts(ints);
      return -1;
    }

    g_Streams[idx] = tmpStream;
    if (g_Streams[idx].StartHeaderRead(HeaderReadComplete)) {
      OSRestoreInterrupts(ints);
      return handle;
    }

    g_Streams[idx] = CDSPStreamManager();
    OSRestoreInterrupts(ints);
    return -1;
  }

  int leftIdx = 0;
  int rightIdx = 0;
  if (!FindUnclaimedStereoPair(leftIdx, rightIdx)) {
    OSRestoreInterrupts(ints);
    return -1;
  }

  rstl::string leftFile(fileName.data(), sep);
  rstl::string rightFile(fileName.data() + sep + 1, -1);
  CDSPStreamManager tmpLeft(leftFile, GetFreeHandleId(), volume, oneshot);
  CDSPStreamManager tmpRight(rightFile, GetFreeHandleId(), volume, oneshot);
  if (tmpLeft.x70_24_unclaimed || tmpRight.x70_24_unclaimed) {
    OSRestoreInterrupts(ints);
    return -1;
  }

  tmpLeft.x71_companionRight = rightIdx;
  tmpRight.x72_companionLeft = leftIdx;
  g_Streams[leftIdx] = tmpLeft;
  g_Streams[rightIdx] = tmpRight;

  const bool rightOk = g_Streams[rightIdx].StartHeaderRead(HeaderReadComplete);
  const bool leftOk = g_Streams[leftIdx].StartHeaderRead(HeaderReadComplete);
  if (leftOk && rightOk) {
    OSRestoreInterrupts(ints);
    return tmpLeft.x78_handleId;
  }

  g_Streams[leftIdx].x70_25_headerReadCancelled = true;
  g_Streams[rightIdx].x70_25_headerReadCancelled = true;
  g_Streams[leftIdx].WaitForReadCompletion();
  g_Streams[rightIdx].WaitForReadCompletion();
  g_Streams[leftIdx] = CDSPStreamManager();
  g_Streams[rightIdx] = CDSPStreamManager();
  OSRestoreInterrupts(ints);
  return -1;
}

int CDSPStreamManager::FindUnclaimedStreamIdx() {
  for (int i = 0; i < 4; ++i) {
    if (g_Streams[i].x70_24_unclaimed) {
      return i;
    }
  }
  return -1;
}

bool CDSPStreamManager::FindUnclaimedStereoPair(int& left, int& right) {
  const int idx = FindUnclaimedStreamIdx();
  for (int i = 0; i < 4; ++i) {
    if (g_Streams[i].x70_24_unclaimed && idx != i) {
      left = idx;
      right = i;
      return true;
    }
  }
  return false;
}

int CDSPStreamManager::GetFreeHandleId() {
  const bool ints = OSDisableInterrupts();
  for (;;) {
    int handle = ++sHandleCounter;
    bool good = true;
    if (handle == -1) {
      good = false;
    } else {
      for (int i = 0; i < 4; ++i) {
        if (!g_Streams[i].x70_24_unclaimed && handle == g_Streams[i].x78_handleId) {
          good = false;
          break;
        }
      }
    }
    if (good) {
      OSRestoreInterrupts(ints);
      return handle;
    }
  }
}

int CDSPStreamManager::FindClaimedStreamIdx(int handle) {
  for (int i = 0; i < 4; ++i) {
    if (!g_Streams[i].x70_24_unclaimed && handle == g_Streams[i].x78_handleId) {
      return i;
    }
  }
  return -1;
}

void CDSPStreamManager::StopStreaming(int handle) {
  BOOL ints = OSDisableInterrupts();
  int idx = FindClaimedStreamIdx(handle);
  if (idx == -1) {
    OSRestoreInterrupts(ints);
    return;
  }

  CDSPStreamManager& stream = g_Streams[idx];
  if (stream.x70_24_unclaimed) {
    OSRestoreInterrupts(ints);
    return;
  }

  if (stream.x70_26_headerReadState == 1) {
    stream.x70_25_headerReadCancelled = true;
    OSRestoreInterrupts(ints);
    return;
  }

  if (stream.x71_companionRight != -1) {
    g_Streams[stream.x71_companionRight] = CDSPStreamManager();
  }
  CDSPStream::Silence(stream.x7c_streamId);
  g_Streams[idx] = CDSPStreamManager();
  OSRestoreInterrupts(ints);
}

SDSPStreamInfo::SDSPStreamInfo(const CDSPStreamManager& stream) {
  const uint adpcmBytes = (stream.x0_header.x4_numNibbles >> 1) & 0x7FFFFFE0;
  const char* fileName = stream.x60_fileName.data();
  ushort sampleRate = stream.x0_header.x8_sampleRate;
  bool loopFlag;
  uint loopStartByte;
  uint loopEndByte;
  short coef[8][2];

  if (stream.x0_header.xc_loopFlag == 0) {
    loopFlag = false;
    loopStartByte = 0;
    loopEndByte = 0;
  } else {
    loopEndByte = (stream.x0_header.x14_loopEndNibble >> 1) & 0x7FFFFFE0;
    loopFlag = true;
    loopStartByte = (stream.x0_header.x10_loopStartNibble >> 1) & 0x7FFFFFE0;
    if (adpcmBytes < loopEndByte) {
      loopEndByte = adpcmBytes;
    }
  }

  memcpy(coef, stream.x0_header.x1c_coef, 0x20);
  x0_fileName = fileName;
  x4_sampleRate = sampleRate;
  x6_pad = 0;
  x8_headerSize = 0x60;
  xc_adpcmBytes = adpcmBytes;
  x10_loopFlag = loopFlag;
  x14_loopStartByte = loopStartByte;
  x18_loopEndByte = loopEndByte;
  memcpy(x1c_coef, coef, 0x20);
}

void CDSPStreamManager::UpdateVolume(int handle, char volume) {
  const bool ints = OSDisableInterrupts();
  int idx = FindClaimedStreamIdx(handle);
  if (idx != -1) {
    g_Streams[idx].x73_volume = volume;
    if (g_Streams[idx].x7c_streamId != -1) {
      CDSPStream::UpdateVolume(g_Streams[idx].x7c_streamId, volume);
    }
  }
  OSRestoreInterrupts(ints);
}

bool CDSPStreamManager::IsStreamAvailable(int handle) {
  const bool ints = OSDisableInterrupts();
  int idx = FindClaimedStreamIdx(handle);
  if (idx == -1) {
    OSRestoreInterrupts(ints);
    return false;
  }
  if (g_Streams[idx].x70_26_headerReadState == 1) {
    OSRestoreInterrupts(ints);
    return false;
  }
  if (g_Streams[idx].x7c_streamId == -1) {
    OSRestoreInterrupts(ints);
    return false;
  }
  bool ret = CDSPStream::IsStreamAvailable(g_Streams[idx].x7c_streamId);
  OSRestoreInterrupts(ints);
  return ret;
}

bool CDSPStreamManager::CanStop(int handle) {
  const bool ints = OSDisableInterrupts();
  int idx = FindClaimedStreamIdx(handle);
  if (idx == -1) {
    OSRestoreInterrupts(ints);
    return true;
  }
  if (g_Streams[idx].x70_26_headerReadState == 1) {
    OSRestoreInterrupts(ints);
    return false;
  }
  if (g_Streams[idx].x7c_streamId == -1) {
    OSRestoreInterrupts(ints);
    return true;
  }
  bool ret = !CDSPStream::IsStreamActive(g_Streams[idx].x7c_streamId);
  OSRestoreInterrupts(ints);
  return ret;
}

CDSPStreamManager::EState CDSPStreamManager::GetStreamState(int handle) {
  const bool ints = OSDisableInterrupts();
  int idx = FindClaimedStreamIdx(handle);
  if (idx == -1) {
    OSRestoreInterrupts(ints);
    return kCDSPSM_Oneshot;
  }

  const uchar state = g_Streams[idx].x70_26_headerReadState;
  if (state == 1) {
    OSRestoreInterrupts(ints);
    return kCDSPSM_Preparing;
  }
  if (state == 0) {
    OSRestoreInterrupts(ints);
    return kCDSPSM_Oneshot;
  }
  if (state < 3) {
    EState ret = EState(!g_Streams[idx].x0_header.xc_loopFlag);
    OSRestoreInterrupts(ints);
    return ret;
  }

  OSRestoreInterrupts(ints);
  return kCDSPSM_Preparing;
}

void CDSPStreamManager::HeaderReadComplete(s32 result, DVDFileInfo* fileInfo) {
  DVDClose(fileInfo);

  CDSPStreamManager* stream = g_Streams;
  int idx = 0;
  for (int i = 0; i < 4; ++i, ++idx, ++stream) {
    if (&stream->x80_dvdFile == fileInfo && !stream->x70_24_unclaimed) {
      BOOL ints = OSDisableInterrupts();
      if (result < 1 || !stream->fn_80364870()) {
        *stream = CDSPStreamManager();
        OSRestoreInterrupts(ints);
        return;
      }

      stream->x70_26_headerReadState = 2;
      int companion = stream->x72_companionLeft;
      if (companion == -1 && stream->x71_companionRight != -1) {
        companion = stream->x71_companionRight;
      }

      if (companion != -1) {
        const int compOff = companion;
        const uchar compState = g_Streams[compOff].x70_26_headerReadState;
        if (g_Streams[compOff].x70_24_unclaimed || compState == 0 ||
            (idx != g_Streams[compOff].x71_companionRight &&
             idx != g_Streams[compOff].x72_companionLeft)) {
          *stream = CDSPStreamManager();
          OSRestoreInterrupts(ints);
          return;
        }
        if (compState == 1) {
          OSRestoreInterrupts(ints);
          return;
        }
        if (g_Streams[compOff].x71_companionRight != -1) {
          AllocateStream(companion);
          OSRestoreInterrupts(ints);
          return;
        }
      }

      AllocateStream(idx);
      OSRestoreInterrupts(ints);
      return;
    }
  }
}

void CDSPStreamManager::AllocateStream(int idx) {
  CDSPStreamManager& stream = g_Streams[idx];
  SDSPStreamInfo info = SDSPStreamInfo(stream);
  if (stream.x71_companionRight == -1) {
    if (!stream.x70_25_headerReadCancelled) {
      stream.x7c_streamId =
          CDSPStream::AllocateMono(info, stream.x73_volume, '@', stream.x74_oneshot);
    }
    if (stream.x7c_streamId == -1) {
      stream = CDSPStreamManager();
    }
  } else {
    CDSPStreamManager& rstream = g_Streams[stream.x71_companionRight];
    SDSPStreamInfo rinfo = SDSPStreamInfo(rstream);
    if (!stream.x70_25_headerReadCancelled) {
      stream.x7c_streamId =
          CDSPStream::AllocateStereo(info, rinfo, stream.x73_volume, stream.x74_oneshot);
    }
    if (stream.x7c_streamId == -1) {
      stream = CDSPStreamManager();
      rstream = CDSPStreamManager();
    }
  }
}
