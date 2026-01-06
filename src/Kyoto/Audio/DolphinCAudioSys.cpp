#include "Kyoto/Audio/CAudioSys.hpp"

#include "Kyoto/Alloc/CMemory.hpp"

#include "dolphin/ai.h"
#include "dolphin/dtk.h"
#include "dolphin/os.h"

#include "dolphin/types.h"
#include "musyx/musyx.h"

#include <rstl/math.hpp>

bool CAudioSys::mInitialized = false;
bool CAudioSys::mIsListenerActive = false;
bool CAudioSys::mVerbose = false;
uchar CAudioSys::mMaxNumEmitters = 0;
rstl::map< rstl::string, rstl::ncrc_ptr< CAudioGroupSet > >* CAudioSys::mpGroupSetDB = nullptr;
rstl::map< uint, rstl::string >* CAudioSys::mpGroupSetResNameDB = nullptr;
rstl::map< rstl::string, rstl::ncrc_ptr< CAudioSys::CTrkData > >* CAudioSys::mpDVDTrackDB = nullptr;

const uchar CAudioSys::kEmitterMedPriority = 0x7f;
const uchar CAudioSys::kMaxVolume = 0x7f;
bool CAudioSys::mProLogic2 = true;
ushort CAudioSys::mVolumeScale = 0x7f;
ushort CAudioSys::mDefaultVolumeScale = 0x7f;

const rstl::string CAudioSys::mpDefaultInvalidString(rstl::string_l("NULL"));

void* DoMalloc(u32 len) { return rs_new char[len]; }

void DoFree(void* ptr) {
  if (!ptr) {
    return;
  }
  delete[] reinterpret_cast< char* >(ptr);
}

CAudioSys::CAudioSys(const uchar numVoices, const uchar numMusic, const uchar numSfx,
                     const uchar maxNumEmitters, const uint aramSize) {
  mInitialized = true;
  SND_HOOKS hooks = {DoMalloc, DoFree};
  AIInit(NULL);
  sndSetHooks(&hooks);
  if (mProLogic2) {
    sndInit(numVoices, numMusic, numSfx, 1, 1, aramSize);
  } else {
    sndInit(numVoices, numMusic, numSfx, 1, 0, aramSize);
  }
  DTKInit();

  mpGroupSetDB = rs_new rstl::map< rstl::string, rstl::ncrc_ptr< CAudioGroupSet > >();
  mpGroupSetResNameDB = rs_new rstl::map< uint, rstl::string >();
  mpDVDTrackDB = rs_new rstl::map< rstl::string, rstl::ncrc_ptr< CTrkData > >();
  mpEmitterDB = rs_new rstl::vector< CEmitterData >(maxNumEmitters, CEmitterData());
  mpListener = rs_new SND_LISTENER;
  mIsListenerActive = false;
  mMaxNumEmitters = maxNumEmitters;

  if (OSGetSoundMode() == OS_SOUND_MODE_MONO) {
    sndOutputMode(SND_OUTPUTMODE_MONO);
    mSurroundMode = kSM_Mono;
  } else {
    sndOutputMode(SND_OUTPUTMODE_SURROUND);
    mSurroundMode = kSM_Surround;
  }

  mMaxAramUsage = aramSize;
}

CAudioSys::~CAudioSys() {
  S3dFlushAllEmitters();
  S3dRemoveListener();
  sndQuit();
  if (mpGroupSetDB) {
    delete mpGroupSetDB;
  }
  mpGroupSetDB = nullptr;
  if (mpGroupSetResNameDB) {
    delete mpGroupSetResNameDB;
  }
  mpGroupSetResNameDB = nullptr;
  if (mpDVDTrackDB) {
    delete mpDVDTrackDB;
  }
  mpDVDTrackDB = nullptr;

  delete mpEmitterDB;
  mpEmitterDB = nullptr;
  delete mpListener;
  mpListener = nullptr;
  mInitialized = false;
}

void CAudioSys::SysSetVolume(const uchar volume, const ushort time, const uchar group) {
  sndVolume(volume, time, group);
}

void CAudioSys::SysSetSfxVolume(const uchar volume, const ushort time, const uchar music,
                                const uchar fx) {
  sndMasterVolume(volume, time, music, fx);
}

void CAudioSys::S3dAddListener(const CVector3f& pos, const CVector3f& dir, const CVector3f& heading,
                               const CVector3f& up, const float frontSur, const float backSur,
                               const float soundSpeed, const uint flags, const uchar voiume) {
  if (mIsListenerActive) {
    S3dRemoveListener();
  }

  SND_FVECTOR _pos;
  _pos.x = pos.GetX();
  _pos.y = pos.GetY();
  _pos.z = pos.GetZ();
  SND_FVECTOR _dir;
  _dir.x = dir.GetX();
  _dir.y = dir.GetY();
  _dir.z = dir.GetZ();
  SND_FVECTOR _heading;
  _heading.x = heading.GetX();
  _heading.y = heading.GetY();
  _heading.z = heading.GetZ();
  SND_FVECTOR _up;
  _up.x = up.GetX();
  _up.y = up.GetY();
  _up.z = up.GetZ();
  mIsListenerActive = true;
  sndAddListener(mpListener, &_pos, &_dir, &_heading, &_up, frontSur, backSur, soundSpeed, flags,
                 voiume, nullptr);
}

bool CAudioSys::S3dUpdateListener(const CVector3f& pos, const CVector3f& dir,
                                  const CVector3f& heading, const CVector3f& up,
                                  const uchar volume) {
  if (mIsListenerActive) {
    SND_FVECTOR _pos;
    _pos.x = pos.GetX();
    _pos.y = pos.GetY();
    _pos.z = pos.GetZ();
    SND_FVECTOR _dir;
    _dir.x = dir.GetX();
    _dir.y = dir.GetY();
    _dir.z = dir.GetZ();
    SND_FVECTOR _heading;
    _heading.x = heading.GetX();
    _heading.y = heading.GetY();
    _heading.z = heading.GetZ();
    SND_FVECTOR _up;
    _up.x = up.GetX();
    _up.y = up.GetY();
    _up.z = up.GetZ();
    return sndUpdateListener(mpListener, &_pos, &_dir, &_heading, &_up, volume, nullptr);
  }
  return false;
}

bool CAudioSys::S3dRemoveListener() {
  if (mIsListenerActive) {
    mIsListenerActive = false;
    return sndRemoveListener(mpListener);
  }
  return false;
}

uint CAudioSys::S3dAddEmitterParaEx(const C3DEmitterParmData& params, ushort groupId,
                                    SND_PARAMETER_INFO* paraInfo) {

  uint handle = mUnusedEmitterHandle;
  if (handle == -1) {
    handle = S3dFindLowerPriorityHandle(params.x29_prio);
    if (handle == -1) {
      return -1;
    }
  }

  SND_FVECTOR _pos;
  _pos.x = params.x0_pos.GetX();
  _pos.y = params.x0_pos.GetY();
  _pos.z = params.x0_pos.GetZ();
  SND_FVECTOR _dir;
  _dir.x = params.xc_dir.GetX();
  _dir.y = params.xc_dir.GetY();
  _dir.z = params.xc_dir.GetZ();

  CEmitterData& data = (*mpEmitterDB)[handle];
  sndAddEmitterParaEx(&data.x0_emitter, &_pos, &_dir, params.x18_maxDist, params.x1c_distComp,
                      params.x20_flags, params.x24_sfxId, groupId, 0, 0, nullptr, paraInfo);
  data._50 = true;
  data._51 = params.x28_important;
  data._52 = params.x29_prio;
  mUnusedEmitterHandle = S3dFindUnusedHandle();
  return handle;
}

const bool CAudioSys::S3dUpdateEmitter(const uint handle, const CVector3f& pos,
                                       const CVector3f& dir, const uchar maxVol) {
  if (handle == -1) {
    return false;
  }

  CEmitterData& data = (*mpEmitterDB)[handle];

  SND_FVECTOR _pos;
  _pos.x = pos.GetX();
  _pos.y = pos.GetY();
  _pos.z = pos.GetZ();
  SND_FVECTOR _dir;
  _dir.x = dir.GetX();
  _dir.y = dir.GetY();
  _dir.z = dir.GetZ();
  return sndUpdateEmitter(&data.x0_emitter, &_pos, &_dir, maxVol, nullptr);
}
const bool CAudioSys::S3dRemoveEmitter(uint handle) {
  if (handle == -1) {
    return false;
  }

  CEmitterData& data = (*mpEmitterDB)[handle];
  if (data._50) {
    data._50 = false;
    mUnusedEmitterHandle = handle;
    return sndRemoveEmitter(&data.x0_emitter);
  }

  return true;
}

void CAudioSys::S3dFlushAllEmitters() {
  rstl::vector< CEmitterData >::iterator iter = mpEmitterDB->begin();
  for (; iter != mpEmitterDB->end(); ++iter) {
    if (!iter->_50) {
      continue;
    }

    iter->_50 = false;
    sndRemoveEmitter(&iter->x0_emitter);
  }
  mUnusedEmitterHandle = 0;
}

void CAudioSys::S3dFlushUnusedEmitters() {
  rstl::vector< CEmitterData >::iterator iter = mpEmitterDB->begin();
  for (; iter != mpEmitterDB->end(); ++iter) {
    if (!iter->_50 || sndCheckEmitter(&iter->x0_emitter) || iter->_51) {
      continue;
    }

    iter->_50 = false;
    sndRemoveEmitter(&iter->x0_emitter);
  }
}

const bool CAudioSys::S3dCheckEmitter(const uint handle) {
  if (handle == -1) {
    return false;
  }

  CEmitterData& data = (*mpEmitterDB)[handle];
  if (data._50) {
    return sndCheckEmitter(&data.x0_emitter);
  }

  return false;
}

uint CAudioSys::S3dEmitterVoiceID(const uint handle) {
  if (handle == -1) {
    return 0;
  }

  CEmitterData& data = (*mpEmitterDB)[handle];
  if (data._50) {
    return sndEmitterVoiceID(&data.x0_emitter);
  }

  return -1;
}

uint CAudioSys::S3dFindUnusedHandle() {
  int i = 0;
  do {
    if (!(*mpEmitterDB)[i]._50) {
      break;
    }
    ++i;
  } while (i < mMaxNumEmitters);

  if (i < mMaxNumEmitters) {
    return i;
  }

  return -1;
}

uint CAudioSys::S3dFindLowerPriorityHandle(const uint prio) {
  int max = mMaxNumEmitters;
  int i = 0;
  do {
    CEmitterData& data = (*mpEmitterDB)[i];
    if (!data._50) {
      break;
    }

    if (data._52 <= prio && !data._51) {
      S3dRemoveEmitter(i);
      break;
    }
    ++i;
  } while (i < max);
  return i < max ? i : -1;
}

uint CAudioSys::SeqPlayEx(const ushort gid, const ushort sid, void* arrfile, SND_PLAYPARA* para,
                          const uchar studio) {
  return sndSeqPlayEx(gid, sid, arrfile, para, studio);
}

void CAudioSys::SeqStop(u32 seqId) { sndSeqStop(seqId); }

void CAudioSys::SeqVolume(const u8 volume, const u16 time, const u32 seqId, const u8 mode) {
  sndSeqVolume(volume, time, seqId, mode);
}

void CAudioSys::SetStereoMode(const bool mode) {
  if (mode) {
    sndOutputMode(SND_OUTPUTMODE_STEREO);
    OSSetSoundMode(OS_SOUND_MODE_STEREO);
  } else {
    sndOutputMode(SND_OUTPUTMODE_MONO);
    OSSetSoundMode(OS_SOUND_MODE_MONO);
  }
}

void CAudioSys::SetSurroundMode(const ESurroundModes mode) {
  switch (mode) {
  case kSM_Mono:
    SetStereoMode(false);
    break;
  case kSM_Stereo:
    SetStereoMode(true);
    break;
  case kSM_Surround:
    SetStereoMode(true);
    sndOutputMode(SND_OUTPUTMODE_SURROUND);
    break;
  }

  mSurroundMode = mode;
}
