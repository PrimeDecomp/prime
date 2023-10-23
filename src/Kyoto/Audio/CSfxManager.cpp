#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Audio/CAudioSys.hpp"
#include "Kyoto/Audio/CSfxHandle.hpp"
#include "musyx/musyx.h"
#include "rstl/vector.hpp"
#include <Kyoto/Audio/CSfxManager.hpp>

static int lbl_805A8770 = -1;
static int lbl_805A8774 = -1;

CSfxManager::CSfxChannel CSfxManager::mChannels[4];
CSfxManager::ESfxChannels CSfxManager::mCurrentChannel = kSC_Default;

rstl::vector< short >* CSfxManager::mTranslationTable;
rstl::auto_ptr< CToken > CSfxManager::mTranslationTableTok;
rstl::reserved_vector< CSfxManager::CSfxEmitterWrapper, 64 > CSfxManager::mEmitterWrapperPool;
rstl::reserved_vector< CSfxManager::CSfxWrapper, 64 > CSfxManager::mWrapperPool;

CSfxManager::CBaseSfxWrapper::CBaseSfxWrapper(const bool looped, const short prio,
                                              const CSfxHandle handle, const bool useAcoustics,
                                              const int area)
: x4_timeRemaining(15.f)
, x8_rank(0)
, xa_prio(prio)
, xc_handle(handle)
, x10_area(area)
, x14_24_isActive(true)
, x14_25_isPlaying(false)
, x14_26_looped(looped)
, x14_27_inArea(true)
, x14_28_isReleased(false)
, x14_29_useAcoustics(useAcoustics) {}

const bool CSfxManager::CBaseSfxWrapper::Available() const { return x14_28_isReleased; }

void CSfxManager::CBaseSfxWrapper::Release() {
  x14_28_isReleased = true;
  x4_timeRemaining = 15.f;
}

const float CSfxManager::CBaseSfxWrapper::GetTimeRemaining() { return x4_timeRemaining; }

void CSfxManager::CBaseSfxWrapper::SetTimeRemaining(float t) { x4_timeRemaining = t; }

void CSfxManager::CBaseSfxWrapper::SetActive(bool v) { x14_24_isActive = v; }

void CSfxManager::CBaseSfxWrapper::SetPlaying(bool v) { x14_25_isPlaying = v; }

void CSfxManager::CBaseSfxWrapper::SetInArea(bool v) { x14_27_inArea = v; }

void CSfxManager::CBaseSfxWrapper::SetRank(short v) { x8_rank = v; }

const bool CSfxManager::CBaseSfxWrapper::IsLooped() const { return x14_26_looped; }

const bool CSfxManager::CBaseSfxWrapper::IsInArea() const { return x14_27_inArea; }

bool CSfxManager::CBaseSfxWrapper::IsPlaying() const { return x14_25_isPlaying; }

const bool CSfxManager::CBaseSfxWrapper::IsActive() const { return x14_24_isActive; }

const bool CSfxManager::CBaseSfxWrapper::UseAcoustics() const { return x14_29_useAcoustics; }

const short CSfxManager::CBaseSfxWrapper::GetRank() const { return x8_rank; }

const short CSfxManager::CBaseSfxWrapper::GetPriority() const { return xa_prio; }

const CSfxHandle CSfxManager::CBaseSfxWrapper::GetSfxHandle() const { return xc_handle; }

const int CSfxManager::CBaseSfxWrapper::GetArea() const { return x10_area; }

CSfxManager::CSfxEmitterWrapper::CSfxEmitterWrapper(const bool looped, const short prio,
                                                    CAudioSys::C3DEmitterParmData& emitterData,
                                                    const CSfxHandle handle,
                                                    const bool useAcoustics, const int area)
: CBaseSfxWrapper(looped, prio, handle, useAcoustics, area)
, x24_emitterData(emitterData)
, x50_emitterHandle(SND_ID_ERROR)
, x54_ready(true) {}

void CSfxManager::CSfxEmitterWrapper::SetReverb(const char rev) {
  if (CSfxManager::IsAuxProcessingEnabled() && UseAcoustics()) {
    x18_para.paraData.value7 = rev;
  }
}

void CSfxManager::CSfxEmitterWrapper::Play() {
  x1c_parameterInfo.numPara = 1;
  x1c_parameterInfo.paraArray = &x18_para;
  x18_para.ctrl = SND_MIDICTRL_REVERB;

  if (CSfxManager::IsAuxProcessingEnabled() && UseAcoustics()) {
    x18_para.paraData.value7 = CSfxManager::GetReverbAmount();
  } else {
    x18_para.paraData.value7 = 0;
  }

  x50_emitterHandle = CAudioSys::S3dAddEmitterParaEx(x24_emitterData, GetSfxHandle().GetIndex(),
                                                     &x1c_parameterInfo);
  if (x50_emitterHandle != SND_ID_ERROR) {
    SetPlaying(true);
  }
  x54_ready = false;
}

const SND_FXID CSfxManager::CSfxEmitterWrapper::GetSfxId() { return x24_emitterData.x24_sfxId; }

void CSfxManager::CSfxEmitterWrapper::Stop() {
  if (x50_emitterHandle != SND_ID_ERROR) {
    CAudioSys::S3dRemoveEmitter(x50_emitterHandle);
    SetPlaying(false);
    x50_emitterHandle = SND_ID_ERROR;
  }
}

const CAudioSys::C3DEmitterParmData& CSfxManager::CSfxEmitterWrapper::GetEmitter() {
  return x24_emitterData;
}

const SND_VOICEID CSfxManager::CSfxEmitterWrapper::GetHandle() const { return x50_emitterHandle; }

bool CSfxManager::CSfxEmitterWrapper::IsPlaying() const {
  if (!IsLooped()) {
    bool ret = false;
    if (CBaseSfxWrapper::IsPlaying() && CAudioSys::S3dCheckEmitter(x50_emitterHandle)) {
      ret = true;
    }

    return ret;
  }

  return CBaseSfxWrapper::IsPlaying();
}

const bool CSfxManager::CSfxEmitterWrapper::Ready() { return IsLooped() || x54_ready; }

short CSfxManager::CSfxEmitterWrapper::GetAudible(const CVector3f& vec) {
  float magSq = (x24_emitterData.x0_pos - vec).MagSquared();
  float maxDist = x24_emitterData.x18_maxDist * x24_emitterData.x18_maxDist;
  if (magSq < maxDist * 0.25f)
    return kSA_Aud3;
  else if (magSq < maxDist * 0.5f)
    return kSA_Aud2;
  else if (magSq < maxDist)
    return kSA_Aud1;
  return kSA_Aud0;
}

const SND_VOICEID CSfxManager::CSfxEmitterWrapper::GetVoice() const {
  return IsPlaying() ? CAudioSys::S3dEmitterVoiceID(x50_emitterHandle) : SND_ID_ERROR;
}

void CSfxManager::CSfxEmitterWrapper::UpdateEmitterSilent() {
  x55_cachedMaxVol = x24_emitterData.x26_maxVol;
  CAudioSys::S3dUpdateEmitter(x50_emitterHandle, x24_emitterData.x0_pos, x24_emitterData.xc_dir, 1);
}

void CSfxManager::CSfxEmitterWrapper::UpdateEmitter() {
  CAudioSys::S3dUpdateEmitter(x50_emitterHandle, x24_emitterData.x0_pos, x24_emitterData.xc_dir,
                              x55_cachedMaxVol);
}

CSfxManager::CSfxWrapper::CSfxWrapper(const bool looped, const short prio, const ushort sfxId,
                                      const short vol, const short pan, const CSfxHandle handle,
                                      const bool useAcoustics, const int area)
: CBaseSfxWrapper(looped, prio, handle, useAcoustics, area)
, x18_sfxId(sfxId)
, x1c_voiceHandle(SND_ID_ERROR)
, x20_vol(vol)
, x22_pan(pan)
, x24_ready(true) {}

void CSfxManager::CSfxWrapper::SetReverb(const char rev) {
  if (CSfxManager::IsAuxProcessingEnabled() && UseAcoustics()) {
    CAudioSys::SfxCtrl(x1c_voiceHandle, SND_MIDICTRL_REVERB, rev);
  }
}

void CSfxManager::CSfxWrapper::Play() {
  x1c_voiceHandle = CAudioSys::SfxStart(x18_sfxId, x20_vol, x22_pan, 0);
  if (x1c_voiceHandle != SND_ID_ERROR) {
    if (CSfxManager::IsAuxProcessingEnabled() && UseAcoustics()) {
      CAudioSys::SfxCtrl(x1c_voiceHandle, SND_MIDICTRL_REVERB, CSfxManager::GetReverbAmount());
    }

    SetPlaying(true);
  }

  x24_ready = false;
}

const SND_FXID CSfxManager::CSfxWrapper::GetSfxId() { return x18_sfxId; }

void CSfxManager::CSfxWrapper::Stop() {
  if (x1c_voiceHandle != SND_ID_ERROR) {
    CAudioSys::SfxStop(x1c_voiceHandle);
    SetPlaying(false);
    x1c_voiceHandle = SND_ID_ERROR;
  }
}

bool CSfxManager::CSfxWrapper::IsPlaying() const {
  return CBaseSfxWrapper::IsPlaying() && CAudioSys::SfxCheck(x1c_voiceHandle) != SND_ID_ERROR;
}

const bool CSfxManager::CSfxWrapper::Ready() { return IsLooped() || x24_ready; }

short CSfxManager::CSfxWrapper::GetAudible(const CVector3f&) { return kSA_Aud3; }

const SND_VOICEID CSfxManager::CSfxWrapper::GetVoice() const { return x1c_voiceHandle; }

void CSfxManager::CSfxWrapper::SetVolume(short vol) { x20_vol = vol; }

void CSfxManager::CSfxWrapper::UpdateEmitterSilent() { CAudioSys::SfxVolume(x1c_voiceHandle, 1); }

void CSfxManager::CSfxWrapper::UpdateEmitter() { CAudioSys::SfxVolume(x1c_voiceHandle, x20_vol); }

CSfxManager::CSfxEmitterWrapper::~CSfxEmitterWrapper() {}

void CSfxManager::Shutdown() {
  delete mTranslationTable;
  mTranslationTable = nullptr;
  StopAndRemoveAllEmitters();

  if (lbl_805A8770 != -1) {
    DisableAuxCallback();
  }
}

void CSfxManager::StopAndRemoveAllEmitters() {
  for (int i = 0; i < 4; ++i) {
    CSfxChannel* channel = &mChannels[i];
    for (int j = 0; j < channel->x48_.size(); ++j) {
      if (channel->x48_[j] != nullptr) {
        if (channel->x48_[j]->IsPlaying()) {
          channel->x48_[j]->Stop();
        }
        channel->x48_[j]->Release();
        channel->x48_[j] = nullptr;
      }
    }
  }
}

void CSfxManager::AddListener(ESfxChannels channel, const CVector3f& pos, const CVector3f& dir,
                              const CVector3f& vec1, const CVector3f& vec2, const float f1,
                              const float f2, const float f3, const uint w1,
                              const uchar maxVolume) {
  CSfxChannel* chan = &mChannels[channel];
  chan->x0_listener = CSfxListener(pos, dir, vec1, vec2, f1, f2, f3, w1, maxVolume);
  chan->x44_ = true;
  CAudioSys::S3dAddListener(pos, dir, vec1, vec2, f1, f2, f3, w1, maxVolume);
}

void CSfxManager::UpdateListener(const CVector3f& pos, const CVector3f& dir, const CVector3f& vec1,
                                 const CVector3f& vec2, const uchar maxVolume) {
  CSfxChannel* chan = &mChannels[mCurrentChannel];
  chan->x0_listener.x0_ = pos;
  chan->x0_listener.xc_ = dir;
  chan->x0_listener.x18_ = vec1;
  chan->x0_listener.x24_ = vec2;
  chan->x0_listener.x40_ = maxVolume;
  chan->x44_ = true;
  CAudioSys::S3dUpdateListener(pos, dir, vec1, vec2, maxVolume);
}

CSfxHandle CSfxManager::AddEmitter(const SND_FXID id, const CVector3f& pos, const CVector3f& dir,
                                   const bool useAcoustics, const bool looped, const short prio, const int areaId) {
  CAudioSys::C3DEmitterParmData emitterParm;
  emitterParm.x24_sfxId = id;
  emitterParm.x29_prio = prio;
  emitterParm.x0_pos = pos;
  emitterParm.xc_dir = dir;
  return AddEmitter(emitterParm, useAcoustics, prio, looped, areaId);
}

CSfxHandle CSfxManager::AddEmitter(const SND_FXID id, const CVector3f& pos, const CVector3f& dir,
                                   const uchar vol, const bool useAcoustics, const bool looped, const short prio,
                                   const int areaId) {
  CAudioSys::C3DEmitterParmData emitterParm(150.f, 0.1f, 1, vol > 20 ? vol : 21);
  emitterParm.x0_pos = pos;
  emitterParm.xc_dir = dir;
  emitterParm.x24_sfxId = id;
  return AddEmitter(emitterParm, useAcoustics, looped, prio, areaId);
}

CSfxHandle CSfxManager::AddEmitter(CAudioSys::C3DEmitterParmData& parmData, const bool useAcoustics,
                                   const short prio, const bool looped, const int areaId) {}

#pragma inline_max_size(250)
CFactoryFnReturn FAudioTranslationTableFactory(const SObjectTag& obj, CInputStream& in,
                                               const CVParamTransfer& xfer) {
  return rs_new rstl::vector< short >(in);
}

CSfxManager::CSfxWrapper::~CSfxWrapper() {}
