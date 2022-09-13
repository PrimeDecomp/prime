#include "Kyoto/Input/CDolphinController.hpp"
#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Math/CMath.hpp"

#include <dolphin/gba.h>
#include <string.h>

CDolphinController::CDolphinController() : x1c4_(0xf0000000), x1c8_invalidControllers(0), x1cc_(0) {
  static bool sIsInitialized = false;
  if (!sIsInitialized) {
    PADSetSpec(5);
    PADInit();
    sIsInitialized = true;
  }
}

CDolphinController::~CDolphinController() {}

bool CDolphinController::Initialize() {
  GBAInit();
  memset(x4_status, 0, sizeof(PADStatus) * 4);
  for (uint i = 0; i < 4; ++i) {
    x34_gamepadStates[i].SetDeviceIsPresent(false);
    x194_motorStates[i] = kMS_StopHard;
    x1b4_controllerTypePollTime[i] = 0;
    x1a4_controllerTypes[i] = skTypeUnknown;
  }

  PADControlAllMotors((const u32*)x194_motorStates);
  Poll();
  return true;
}

void CDolphinController::Poll() {
  ReadDevices();
  ProcessInputData();
}

void CDolphinController::ReadDevices() {}

void CDolphinController::ProcessInputData() {
  for (int i = 0; i < 4; ++i) {
    if (x34_gamepadStates[i].DeviceIsPresent()) {
      ProcessAxis(i, kJA_LeftX);
      ProcessAxis(i, kJA_LeftY);
      ProcessAxis(i, kJA_RightX);
      ProcessAxis(i, kJA_RightY);
      ProcessButtons(i);
    }
  }
}

void CDolphinController::ProcessAxis(int controller, EJoyAxis axis) {
  const float maxAxisValue = 1.f / GetAnalogStickMaxValue(axis);
  CControllerAxis& data = x34_gamepadStates[controller].GetAxis(axis);

  float axisValue = 0.f;
  switch (axis) {
  case kJA_LeftX: axisValue = x4_status[controller].stickX; break;
  case kJA_LeftY: axisValue = x4_status[controller].stickY; break;
  case kJA_RightX: axisValue = x4_status[controller].substickX; break;
  case kJA_RightY: axisValue = x4_status[controller].substickY; break;
  }
#if 0
  float absolute = CMath::Clamp(kAbsoluteMinimum, axisValue * maxAxisValue, kAbsoluteMaximum);
  float relativeValue = CMath::Clamp(kRelativeMinimum, absolute - data.GetAbsoluteValue(), kRelativeMaximum);
  data.SetRelativeValue(relativeValue);
  data.SetAbsoluteValue(absolute);
#endif
}

static u16 mButtonMapping[size_t(kBU_MAX)] = {
    PAD_BUTTON_A,  PAD_BUTTON_B,     PAD_BUTTON_X,    PAD_BUTTON_Y,    PAD_BUTTON_START, PAD_TRIGGER_Z,
    PAD_BUTTON_UP, PAD_BUTTON_RIGHT, PAD_BUTTON_DOWN, PAD_BUTTON_LEFT, PAD_TRIGGER_L,    PAD_TRIGGER_R,
};

void CDolphinController::ProcessButtons(int controller) {
    for (s32 i = 0; i < s32(kBU_MAX); ++i) {
    ProcessDigitalButton(controller, x34_gamepadStates[controller].GetButton(EButton(i)), mButtonMapping[i]);
  }

  ProcessAnalogButton(x4_status[controller].triggerL,
                      x34_gamepadStates[controller].GetAnalogButton(kBA_Left));
  ProcessAnalogButton(x4_status[controller].triggerR,
                      x34_gamepadStates[controller].GetAnalogButton(kBA_Right));
}

void CDolphinController::ProcessDigitalButton(int controller, CControllerButton& button, u16 mapping) {
  bool btnPressed = (x4_status[controller].button & mapping);
  button.SetPressEvent(PADButtonDown(button.GetIsPressed(), btnPressed));
  button.SetReleaseEvent(PADButtonUp(button.GetIsPressed(), btnPressed));
  button.SetIsPressed(btnPressed);
}

void CDolphinController::ProcessAnalogButton(float value, CControllerAxis& axis) {}

uint CDolphinController::GetDeviceCount() const { return 4; }

CControllerGamepadData& CDolphinController::GetGamepadData(int controller) { return x34_gamepadStates[controller]; }

uint CDolphinController::GetControllerType(int controller) const { return x1a4_controllerTypes[controller]; }

void CDolphinController::SetMotorState(EIOPort port, EMotorState state) {
  x194_motorStates[port] = state;
  PADControlAllMotors((const u32*)x194_motorStates);
}

float CDolphinController::GetAnalogStickMaxValue(EJoyAxis axis) const {
  switch (axis) {
  case kJA_LeftX:
  case kJA_LeftY:
    return 72.0f;

  case kJA_RightX:
  case kJA_RightY:
    return 59.0f;

  default:
    return 0.0f;
  }
}

const uint CDolphinController::skTypeUnknown = 'UNKN';
const uint CDolphinController::skTypeStandard = 'STND';
const uint CDolphinController::skTypeGBA = 'GBA_';
const uint CDolphinController::skTypeWavebird = 'WAVE';
