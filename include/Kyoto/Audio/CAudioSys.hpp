#ifndef _CAUDIOSYS
#define _CAUDIOSYS

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

enum ETRKSampleRate {
  kTSR_Zero,
  kTSR_One,
  // TODO
};

enum ETRKRepeatMode {
  // TODO
};

class CAudioSys {
public:
  enum ESurroundModes { kSM_Mono, kSM_Stereo, kSM_Surround };

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

  CAudioSys(uchar, uchar, uchar, uchar, uint);
  ~CAudioSys();

  static void SysSetVolume(uchar, uint, uchar);
  static void SysSetSfxVolume(uchar, ushort, uchar, uchar);

  static void SetDefaultVolumeScale(short);
  static void SetVolumeScale(short);
  static void SetSurroundMode(ESurroundModes);
  static void TrkSetSampleRate(ETRKSampleRate);

  static short GetDefaultVolumeScale();

  static const uchar kMaxVolume;
};

#endif // _CAUDIOSYS
