#ifndef _CAUDIOSYS
#define _CAUDIOSYS

#include "musyx/musyx.h"
#include "types.h"

#include "rstl/map.hpp"
#include "rstl/rc_ptr.hpp"
#include "rstl/string.hpp"
#include "rstl/vector.hpp"

#include "Kyoto/Math/CVector3f.hpp"

class CAudioGroupSet;
class CSimplePool;

enum ETRKSampleRate {
  kTSR_Zero,
  kTSR_One,
  // TODO
};

enum ETRKRepeatMode {
  // TODO
};

class CAudioSys {
  static const rstl::string mpDefaultInvalidString;

public:
  enum ESurroundModes { kSM_Mono, kSM_Stereo, kSM_Surround };
  class CEmitterData {
  public:
    CEmitterData() : _50(0), _51(0), _52(kEmitterMedPriority) {};

    SND_EMITTER x0_emitter;
    bool _50;
    bool _51;
    uchar _52;
  };

  struct C3DEmitterParmData {
    C3DEmitterParmData(const float maxDist = 150.f, const float distComp = 0.1f,
                       const uint flags = 1, const uchar maxVol = 127, const uchar minVol = 0)
    : x0_pos(0.f, 0.f, 0.f)
    , xc_dir(0.f, 0.f, 0.f)
    , x18_maxDist(maxDist)
    , x1c_distComp(distComp)
    , x20_flags(flags)
    , x24_sfxId(0)
    , x26_maxVol(maxVol)
    , x27_minVol(minVol)
    , x28_important(false)
    , x29_prio(CAudioSys::kEmitterMedPriority) {}

    CVector3f x0_pos;
    CVector3f xc_dir;
    float x18_maxDist;
    float x1c_distComp;
    uint x20_flags;
    ushort x24_sfxId;
    char x26_maxVol;
    char x27_minVol;
    bool x28_important; // Can't be allocated over, regardless of priority
    uchar x29_prio;
  };

  class CTrkData {};

  CAudioSys(uchar, uchar, uchar, uchar, uint);
  ~CAudioSys();

  static void SysSetVolume(uchar, ushort, uchar);
  static void SysSetSfxVolume(uchar, ushort, uchar, uchar);
  static bool SysLoadGroupSet(CSimplePool*, uint);
  static const rstl::string& SysGetGroupSetName(uint);
  static bool SysPushGroupIntoARAM(const rstl::string& name, uchar);
  static void SysPopGroupFromARAM();
  static void SysUnloadGroupSet(const rstl::string& name);
  static void SysUnloadSampleData(const rstl::string& name);

  static void SetDefaultVolumeScale(short);
  static void SetVolumeScale(short);
  static void SetStereoMode(const bool mode);
  static void SetSurroundMode(const ESurroundModes mode);
  static void TrkSetSampleRate(ETRKSampleRate);

  static short GetDefaultVolumeScale();
  static bool GetVerbose();

  static SND_VOICEID SfxStart(const SND_FXID, const uchar, const uchar, const uchar);
  static void SfxStop(SND_VOICEID handle);
  static void SfxCtrl(const SND_VOICEID handle, const uchar ctrl, const uchar val);
  static SND_VOICEID SfxCheck(SND_VOICEID handle);
  static void SfxVolume(SND_VOICEID handle, u8 vol);
  static void SfxSpan(SND_VOICEID handle, uchar vol);
  static void SfxPitchBend(SND_VOICEID handle, const ushort pitch);
  static uint S3dFindLowerPriorityHandle(uint prio);
  static uint S3dFindUnusedHandle();
  static uint S3dAddEmitterParaEx(const C3DEmitterParmData& params, ushort handle,
                                  SND_PARAMETER_INFO* paraInfo);
  static const bool S3dUpdateEmitter(const uint a, const CVector3f& b, const CVector3f& c,
                                     const uchar d);
  static const bool S3dRemoveEmitter(uint handle);
  static const bool S3dCheckEmitter(uint handle);
  static uint S3dEmitterVoiceID(uint handle);

  static void S3dAddListener(const CVector3f& pos, const CVector3f& dir, const CVector3f& heading,
                             const CVector3f& up, const float frontSur, const float backSur,
                             const float soundSpeed, const uint flags, const uchar voiume);
  static bool S3dRemoveListener();
  static bool S3dUpdateListener(const CVector3f& pos, const CVector3f& dir,
                                const CVector3f& heading, const CVector3f& up, const uchar voiume);

  static void S3dAddEmitter(SND_FXID fxid, const CVector3f& pos, const CVector3f& dir,
                            const bool b1, const bool b2, short, int);

  static void S3dFlushAllEmitters();
  static void S3dFlushUnusedEmitters();

  static uint SeqPlayEx(const ushort gid, const ushort sid, void* arrfile, SND_PLAYPARA* para,
                        const uchar studio);
  static void SeqStop(u32 seqId);
  static void SeqVolume(u8, u16, u32, u8);

  static bool mInitialized;
  static bool mIsListenerActive;
  static bool mVerbose;
  static uint mUnusedEmitterHandle;
  static uchar mMaxNumEmitters;
  static rstl::map< rstl::string, rstl::ncrc_ptr< CAudioGroupSet > >* mpGroupSetDB;
  static rstl::map< uint, rstl::string >* mpGroupSetResNameDB;
  static rstl::map< rstl::string, rstl::ncrc_ptr< CTrkData > >* mpDVDTrackDB;
  static rstl::vector< CEmitterData >* mpEmitterDB;
  static SND_LISTENER* mpListener;

  /* TODO: Remaining globals */

  static ESurroundModes mSurroundMode;
  static uint mMaxAramUsage;
  static uint mCurrentAramUsage;
  static bool mProLogic2;
  static ushort mVolumeScale;
  static ushort mDefaultVolumeScale;
  static const uchar kMaxVolume;
  static const uchar kEmitterMedPriority;
};

#endif // _CAUDIOSYS
