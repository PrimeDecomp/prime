#ifndef _CSTREAMAUDIOMANAGER
#define _CSTREAMAUDIOMANAGER

#include "types.h"

class CStreamAudioManager {
public:
  static void Update(float dt);
  static void StopAll();
  static void SetMusicVolume(uchar);

private:
};

#endif // _CSTREAMAUDIOMANAGER
