#include "Kyoto/Audio/CAudioSys.hpp"
#include "rstl/algorithm.hpp"
#include <Kyoto/Alloc/CMemory.hpp>
#include <Kyoto/Audio/CStaticAudioPlayer.hpp>

#include <Kyoto/CDvdFile.hpp>
#include <Kyoto/CDvdRequest.hpp>

#include <rstl/list.hpp>
#include <rstl/math.hpp>

#include <dolphin/ai.h>
#include <dolphin/os.h>

extern "C" bool fn_8034A7A4();

extern "C" void fn_8036C8F0() { bool b1 = fn_8034A7A4(); }

static rstl::reserved_vector<  FAudioCallback, 4> sDvdRequests;
CStaticAudioPlayer* sCurrentPlayer = nullptr;

void CStaticAudioPlayer::RunDMACallback(const FAudioCallback callback) {
  volatile const bool old = OSDisableInterrupts();
  const rstl::reserved_vector<FAudioCallback, 4>::iterator it = rstl::find(sDvdRequests.begin(), sDvdRequests.end(), callback);
  if (it == sDvdRequests.end()) {
    sDvdRequests.push_back(callback);
  }
  
  fn_8036C8F0();
  OSRestoreInterrupts(old);
}

void CStaticAudioPlayer::CancelDMACallback(FAudioCallback callback) {
  volatile const bool old = OSDisableInterrupts();

  const rstl::reserved_vector<FAudioCallback, 4>::iterator it = rstl::find(sDvdRequests.begin(), sDvdRequests.end(), callback);
  if (it != sDvdRequests.end()) {
    sDvdRequests.erase(it);
  }
  
  fn_8036C8F0();
  OSRestoreInterrupts(old);
}

CStaticAudioPlayer::CStaticAudioPlayer(const rstl::string& filepath, const int loopStart,
                                       const int loopEnd)
: x0_filepath(filepath)
, x10_rsfRem(-1)
, x18_curSamp(0)
, x1c_loopStartSamp(loopStart & ~1)
, x20_loopEndSamp(loopEnd & ~1)
, x24_curBuf(0)
, x28_dmaLeft((uchar*)CMemory::Alloc(640, IAllocator::kHI_RoundUpLen))
, x30_dmaRight((uchar*)CMemory::Alloc(640, IAllocator::kHI_RoundUpLen))
, xc0_volume(32768) {
  CDvdFile dvdFile(filepath.data());
  x10_rsfRem = dvdFile.GetFileSize();
  x14_rsfLength = x10_rsfRem;
  int bufferCount = ((x10_rsfRem - 1) + 0x20000) / 0x20000;
  x48_buffers.reserve(bufferCount);
  x38_dvdRequests.reserve(bufferCount);

  for (int i = x10_rsfRem; i > 0; i -= 0x20000) {
    uint uVar1 = 0x20000;
    if (i <= 0x20000) {
      uVar1 = (i + 31) & ~31;
    }

    rstl::auto_ptr< uchar > buf((uchar*)CMemory::Alloc(uVar1, IAllocator::kHI_RoundUpLen));
    x48_buffers.push_back(buf);
    x38_dvdRequests.push_back(dvdFile.SyncRead(buf.get(), uVar1));
  }
}

// #pragma push
#pragma inline_max_size(200)
CStaticAudioPlayer::~CStaticAudioPlayer() { StopMixOut(); }
// #pragma pop

const bool CStaticAudioPlayer::IsReady() const {
  return !x38_dvdRequests.empty() ? x38_dvdRequests.back()->IsComplete() : true;
}

void CStaticAudioPlayer::StartMixOut() {
  if (sCurrentPlayer == this) {
    return;
  }

  x38_dvdRequests.clear();
  x18_curSamp = 0;
  g72x_init_state(&x58_leftState);
  g72x_init_state(&x8c_rightState);
  sCurrentPlayer = this;
  RunDMACallback(MixCallback);
}

void CStaticAudioPlayer::StopMixOut() {
  if (sCurrentPlayer == this) {
    CancelDMACallback(MixCallback);
    sCurrentPlayer = NULL;
  }
}

void CStaticAudioPlayer::MixCallback() { sCurrentPlayer->DoMix(); }

void CStaticAudioPlayer::DoMix() {
  u32 aiStart = OSCachedToPhysical(AIGetDMAStartAddr());
  x24_curBuf ^= 1;
  u32 buf = (u32)(x24_curBuf != 0 ? x30_dmaRight.get() : x28_dmaLeft.get());

  AIInitDMA(buf, 0x280);
  u32 cookie = OSEnableInterrupts();
  if (aiStart != 0) {
    DCInvalidateRange((void*)aiStart, 0x280);
  }

  Decode((ushort*)buf, (ushort*)aiStart, 160);
  DCFlushRange((void*)buf, 0x280);
  OSRestoreInterrupts(cookie);
}

void CStaticAudioPlayer::Decode(const ushort* bufIn, ushort* bufOut, int numSamples) {
  int uVar5 = x18_curSamp / 2;
  int uVar4 = x20_loopEndSamp / 2;
  int uVar3 = x1c_loopStartSamp / 2;
  DecodeMonoAndMix(bufIn, bufOut, uVar5, uVar4, uVar3, xc0_volume, x58_leftState);
  int iVar1 = x14_rsfLength / 2;
  uVar5 += iVar1;
  uVar4 += iVar1;
  uVar3 += iVar1;
  DecodeMonoAndMix(bufIn + 1, bufOut + 1, uVar5, uVar4, uVar3, xc0_volume, x8c_rightState);

  while (numSamples) {
    uVar3 = rstl::min_val(numSamples, x20_loopEndSamp - x18_curSamp);
    x18_curSamp += uVar3;
    numSamples -= uVar3;
    if (x18_curSamp == x20_loopEndSamp) {
      x18_curSamp = x1c_loopStartSamp;
    }
  }
}

void CStaticAudioPlayer::DecodeMonoAndMix(const ushort* bufIn, ushort* bufOut, const int curSample,
                                          const int sampleEnd, const int sampleStart, ushort vol,
                                          g72x_state& state) {}

void CStaticAudioPlayer::SetVolume(uchar vol) {
  if (vol > 127) {
    vol = 127;
  }
  xc0_volume = CAudioSys::kVolumeTable[vol];
}