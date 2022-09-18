#ifndef _CRUMBLEGENERATOR_HPP
#define _CRUMBLEGENERATOR_HPP

#include "types.h"

#include "Kyoto/Input/CRumbleVoice.hpp"

enum EMotorState {
  kMS_Stop,     // = PAD_MOTOR_STOP,
  kMS_Rumble,   // = PAD_MOTOR_RUMBLE,
  kMS_StopHard, // = PAD_MOTOR_STOP_HARD,
};

class CRumbleGenerator {
private:
  CRumbleVoice x0_voices[4];
  f32 xc0_periodTime[4];
  f32 xd0_onTime[4];
  EMotorState xe0_commandArray[4];
  bool xf0_24_disabled : 1;
};

#endif
