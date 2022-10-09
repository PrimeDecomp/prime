#ifndef _INPUTTYPES
#define _INPUTTYPES

#include <dolphin/pad.h>

enum EIOPort {
  kIOP_Player1 = PAD_CHAN0,
  kIOP_Player2 = PAD_CHAN1,
  kIOP_Player3 = PAD_CHAN2,
  kIOP_Player4 = PAD_CHAN3,
};

enum EMotorState {
  kMS_Stop = PAD_MOTOR_STOP,
  kMS_Rumble = PAD_MOTOR_RUMBLE,
  kMS_StopHard = PAD_MOTOR_STOP_HARD,
};

enum EJoyAxis { kJA_LeftX, kJA_LeftY, kJA_RightX, kJA_RightY, kJA_MAX };

enum EButton {
  kBU_A,
  kBU_B,
  kBU_X,
  kBU_Y,
  kBU_Start,
  kBU_Z,
  kBU_Up,
  kBU_Right,
  kBU_Down,
  kBU_Left,
  kBU_L,
  kBU_R,
  kBU_MAX,
};

enum EAnalogButton { kBA_Left, kBA_Right, kBA_MAX };

#endif // _INPUTTYPES
