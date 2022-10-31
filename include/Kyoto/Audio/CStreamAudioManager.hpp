#ifndef _CSTREAMAUDIOMANAGER
#define _CSTREAMAUDIOMANAGER

#include "types.h"

class CStreamAudioManager {
public:
  static void Update(float dt);
  static void StopAll();
  static void SetMusicVolume(uint);
  static void SetSfxVolume(uint);

private:
};

#endif // _CSTREAMAUDIOMANAGER
