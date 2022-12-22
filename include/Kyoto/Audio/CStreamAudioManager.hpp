#ifndef _CSTREAMAUDIOMANAGER
#define _CSTREAMAUDIOMANAGER

#include "types.h"

#include "rstl/string.hpp"

class CStreamAudioManager {
public:
  static void Update(float dt);
  static void StopAll();
  static void SetMusicVolume(uint);
  static void SetSfxVolume(uint);

  static void FadeBackIn(int, float);
  static void TemporaryFadeOut(int, float);

  static void Start(int, const rstl::string&, int, bool, float, float);
  static void Stop(int, const rstl::string&);

private:
};

#endif // _CSTREAMAUDIOMANAGER
