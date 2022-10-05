#ifndef _CRUMBLEGENERATOR_HPP
#define _CRUMBLEGENERATOR_HPP

#include "types.h"

#include "Kyoto/Input/CRumbleVoice.hpp"
#include "Kyoto/Input/InputTypes.hpp"

class CRumbleGenerator {
private:
  CRumbleVoice x0_voices[4];
  f32 xc0_periodTime[4];
  f32 xd0_onTime[4];
  EMotorState xe0_commandArray[4];
  bool xf0_24_disabled : 1;
};

#endif
