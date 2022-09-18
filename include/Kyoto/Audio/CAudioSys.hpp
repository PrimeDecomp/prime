#ifndef _CAUDIOSYS_HPP
#define _CAUDIOSYS_HPP

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
  CAudioSys(u8, u8, u8, u8, uint);

  static void SysSetVolume(u8, uint, u8);
  static void SetDefaultVolumeScale(s16);
  static void SetVolumeScale(s16);
  static void TrkSetSampleRate(ETRKSampleRate);

  static s16 GetDefaultVolumeScale();

  static const u8 kMaxVolume;
};

#endif
