#ifndef _CSTREAMAUDIOMANAGER
#define _CSTREAMAUDIOMANAGER

#include "types.h"

class CStreamAudioManager {
public:
  static void Update(f32 dt);
  static void StopAll();
  static void SetMusicVolume(u8);

private:
};

#endif // _CSTREAMAUDIOMANAGER
