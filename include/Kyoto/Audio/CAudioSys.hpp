#ifndef _CAUDIOSYS
#define _CAUDIOSYS

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
    C3DEmitterParmData(const CVector3f& pos, const CVector3f& dir, float maxDist, float distComp,
                       uint flags, ushort sfxId, float maxVol, float minVol, bool important,
                       uchar prio)
    : x0_pos(pos)
    , xc_dir(dir)
    , x18_maxDist(maxDist)
    , x1c_distComp(distComp)
    , x20_flags(flags)
    , x24_sfxId(sfxId)
    , x26_maxVol(maxVol)
    , x27_minVol(minVol)
    , x28_important(important)
    , x29_prio(prio) {}

    CVector3f x0_pos;
    CVector3f xc_dir;
    float x18_maxDist;
    float x1c_distComp;
    uint x20_flags;
    ushort x24_sfxId;
    float x26_maxVol;
    float x27_minVol;
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
