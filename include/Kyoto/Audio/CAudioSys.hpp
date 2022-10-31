#ifndef _CAUDIOSYS
#define _CAUDIOSYS

#include "types.h"

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
