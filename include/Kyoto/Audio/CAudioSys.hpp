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
    CEmitterData() : _50(0), _51(0), _52(kEmitterMedPriority){};

  private:
    char data[0x50];
    char _50;
    char _51;
    uchar _52;
  };

  struct C3DEmitterParmData {
    C3DEmitterParmData(const float maxDist = 150.f, const float distComp = 0.1f,
                       const uint flags = 1, const uchar maxVol = 127, const uchar minVol = 0)
    : x18_maxDist(maxDist)
    , x1c_distComp(distComp)
    , x20_flags(flags)
    , x24_sfxId(0)
    , x26_maxVol(maxVol)
    , x27_minVol(minVol)
    , x28_important(false)
    , x29_prio(127) {}

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

  CAudioSys(char, char, char, char, uint);
  ~CAudioSys();

  static void SysSetVolume(uchar, uint, uchar);
  static void SysSetSfxVolume(uchar, ushort, uchar, uchar);

  static void SetDefaultVolumeScale(short);
  static void SetVolumeScale(short);
  static void SetSurroundMode(ESurroundModes);
  static void TrkSetSampleRate(ETRKSampleRate);

  static short GetDefaultVolumeScale();
  static bool GetVerbose();

  static SND_VOICEID SfxStart(const SND_FXID, const uchar, const uchar, const uchar);
  static void SfxStop(SND_VOICEID handle);
  static void SfxCtrl(SND_VOICEID handle, uchar ctrl, uchar val);
  static SND_VOICEID SfxCheck(SND_VOICEID handle);
  static void SfxVolume(SND_VOICEID handle, u8 vol);
  static uint S3dAddEmitterParaEx(const C3DEmitterParmData& params, short handle,
                                  SND_PARAMETER_INFO* paraInfo);
  static void S3dUpdateEmitter(uint, const CVector3f&, const CVector3f&, uchar);
  static void S3dRemoveEmitter(uint handle);
  static const bool S3dCheckEmitter(uint handle);
  static uint S3dEmitterVoiceID(uint handle);

  static void S3dAddListener(const CVector3f& pos, const CVector3f& dir, const CVector3f& vec1,
                             const CVector3f& vec2, const float f1, const float f2, const float f3,
                             const uint w1, const uchar maxVolume);
  static void S3dUpdateListener(const CVector3f& pos, const CVector3f& dir, const CVector3f& vec1,
                                const CVector3f& vec2, const uchar maxVolume);

  static void S3dAddEmitter(SND_FXID fxid, const CVector3f& pos, const CVector3f& dir,
                            const bool b1, const bool b2, short, int);


  static u32 SeqPlayEx(unsigned short, unsigned short, void*, SND_PLAYPARA*, unsigned char);
  static void SeqStop(u32);
  static void SeqVolume(u8, u16, u32, u8);
  static bool mInitialized;
  static bool mIsListenerActive;
  static bool mVerbose;
  static uchar mMaxNumEmitters;
  static rstl::map< rstl::string, rstl::ncrc_ptr< CAudioGroupSet > >* mpGroupSetDB;
  static rstl::map< uint, rstl::string >* mpGroupSetResNameDB;
  static rstl::map< rstl::string, rstl::ncrc_ptr< CTrkData > >* mpDVDTrackDB;
  static rstl::vector< CEmitterData >* mpEmitterDB;
  static unkptr mpListener;

  /* TODO: Remaining globals */

  static ESurroundModes mSurroundMode;
  static uint mMaxAramUsage;
  static uint mCurrentAramUsage;
  static bool mProLogic2;
  static const uchar kMaxVolume;
  static uchar kEmitterMedPriority;
};

#endif // _CAUDIOSYS
