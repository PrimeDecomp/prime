#include <Kyoto/Alloc/CMemory.hpp>
#include <Kyoto/Audio/CStaticAudioPlayer.hpp>
#include <Kyoto/CDvdFile.hpp>
#include <Kyoto/CDvdRequest.hpp>

#include <dolphin/os.h>
#include <dolphin/ai.h>

extern "C" bool fn_8034A7A4();

extern "C" void fn_8036C8F0() {
  bool b1 = fn_8034A7A4();
}

CStaticAudioPlayer* sCurrentPlayer = nullptr;

void CStaticAudioPlayer::RunDMACallback(FAudioCallback) {

}

void CStaticAudioPlayer::CancelDMACallback(FAudioCallback) {
  
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

//#pragma push
#pragma inline_max_size(200)
CStaticAudioPlayer::~CStaticAudioPlayer() {
  StopMixOut();
}
//#pragma pop

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


void CStaticAudioPlayer::MixCallback() {
  sCurrentPlayer->DoMix();
}


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
