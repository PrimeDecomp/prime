#ifndef _CRUMBLEGENERATOR
#define _CRUMBLEGENERATOR

#include "types.h"

#include "Kyoto/Input/CRumbleVoice.hpp"
#include "Kyoto/Input/InputTypes.hpp"

class CRumbleGenerator {
private:
  CRumbleVoice x0_voices[4];
  float xc0_periodTime[4];
  float xd0_onTime[4];
  EMotorState xe0_commandArray[4];
  bool xf0_24_disabled : 1;

public:
  CRumbleGenerator();
  ~CRumbleGenerator();

  s16 Rumble(const SAdsrData& adsr, float, ERumblePriority prio, EIOPort port);
  void Stop(short id, EIOPort port) {
    if (id == -1)
      return;
    CRumbleVoice& vox = x0_voices[size_t(port)];
    vox.Deactivate(id, false);
  }
  void Deactivate(short, bool);
  void Update(float);
  void HardStopAll();
};

#endif // _CRUMBLEGENERATOR
