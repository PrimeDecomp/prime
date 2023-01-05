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

  static void sub_803653f8(float);
  static void sub_80365424(float);
  static void sub_8036590c(float);

  static void SetDefaultAudio(const rstl::string&, float, float, unsigned char);
  static void SetCurrentAudio(const rstl::string&, float, float, unsigned char);

private:
};

#endif // _CSTREAMAUDIOMANAGER
