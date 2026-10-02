#include "Kyoto/Input/CWiiInput.hpp"

#include "Kyoto/Alloc/CMemory.hpp"
#include "Kyoto/Basics/CBasics.hpp"
#include "Kyoto/Input/CInputFilter.hpp"
#include "Kyoto/Input/CWiiMotionProcessor.hpp"
#include "Kyoto/Math/CMath.hpp"

#include <dolphin/vi.h>
#include <revolution/os.h>

namespace {
// Inferred RAII helper: the original stores the saved state and an explicit restore flag.
class CInterruptGuard {
public:
  CInterruptGuard() : x0_enabled(OSDisableInterrupts()), x1_restored(false) {}
  ~CInterruptGuard() { Restore(); }
  void Restore() {
    if (!x1_restored) {
      OSRestoreInterrupts(x0_enabled);
      x1_restored = true;
    }
  }

private:
  bool x0_enabled;
  bool x1_restored;
};
} // namespace

static CWiiInput* sWiiInput;
static uint sButtonMasks[64] = {
    0, 0x8000, 0x1000, 0x800, 0x400,  0x100,  0x200, 0x10, 0x8,  0x4, 0x2, 0x1, 0xf, 0, 0, 0, 0,
    0, 0,      0,      0,     0x2000, 0x4000, 0,     0,    0,    0,   0,   0,   0,   0, 0, 0, 0,
    0, 0x100,  0x200,  0x400, 0x800,  0x1000, 0x10,  0x40, 0x20, 0x8, 0x2, 0x4, 0x1, 0, 0, 0, 0,
    0, 0,      0,      0,     0,      0,      0,     0,    0,    0,   0,   0,   0,
};
static uint sMotionButtonMasks[16] = {
    0x1,     0x2,     0x4,     0x8,     0x10,     0x20,     0x40,     0x80,
    0x10000, 0x20000, 0x40000, 0x80000, 0x100000, 0x200000, 0x400000, 0x800000,
};
static uint sSwingButtonMasks[12] = {
    0x1, 0x2, 0x4, 0x8, 0x10, 0x20, 0x10000, 0x20000, 0x40000, 0x80000, 0x100000, 0x200000,
};

void* CWiiInput::AllocateWpadMemory(u32 size) {
  return CMemory::Alloc(size, static_cast< IAllocator::EHint >(6));
}

int CWiiInput::FreeWpadMemory(void* memory) {
  CMemory::Free(memory);
  return 1;
}

CWiiInput::CWiiInput()
: x4_status(KPADStatus())
, x218_controllerTypes(kDT_Disconnected)
, x22c_input(CControllerData())
, xa60_pointerRecenterMode(kPRM_Hold)
, xa74_pointerReacquireFrames(4, 0)
, xa88_motionProcessors(4)
, xa9c_unknownInputData(SUnknownInputData())
, xb24_wpadInfo(4)
, xb88_wpadInfoBuf(4)
, xbec_infoPollTimers(4)
, xc00_motionIdleTimes(4)
, xc14_buttonIdleTimes(4)
, xc28_pendingConnectionEvents(kCE_None)
, xc3c_pendingExtensionEvents(kEE_None)
, xc50_pointerFilterX(4)
, xc64_pointerFilterY(4)
, xc78_motorEnabledFlags(0xf)
, xc7c_pointerMinDistance(0.75f)
, xc80_pointerMaxDistance(4.f)
, xc84_pointerMinScale(1.3f)
, xc88_pointerMaxScale(1.f)
, xc8c_acceptAdditionalConnections(false) {
  sWiiInput = this;
  Initialize();
}

CWiiInput::~CWiiInput() {
  sWiiInput = nullptr;
  for (int i = 0; i < 4; ++i) {
    WPADSetConnectCallback(i, nullptr);
    WPADSetExtensionCallback(i, nullptr);
  }
}

void CWiiInput::Poll() {}

uint CWiiInput::GetDeviceCount() const { return 4; }

CControllerData& CWiiInput::GetInput(uint channel) { return x22c_input[channel]; }

IController::EDeviceType CWiiInput::GetControllerType(int channel) const {
  return x218_controllerTypes[channel];
}

void CWiiInput::QueueConnectionEvent(int channel, EConnectionEvent event) {
  xc28_pendingConnectionEvents[channel] = event;
}

void CWiiInput::QueueExtensionEvent(int channel, EExtensionEvent event) {
  xc3c_pendingExtensionEvents[channel] = event;
}

void CWiiInput::ProcessConnectionEvents() {
  rstl::reserved_vector< EConnectionEvent, 4 > connections(4);
  rstl::reserved_vector< EExtensionEvent, 4 > extensions(4);
  CInterruptGuard interrupts;
  for (int i = 0; i < 4; ++i) {
    connections[i] = xc28_pendingConnectionEvents[i];
    extensions[i] = xc3c_pendingExtensionEvents[i];
    xc28_pendingConnectionEvents[i] = kCE_None;
    xc3c_pendingExtensionEvents[i] = kEE_None;
  }
  interrupts.Restore();

  for (int i = 0; i < 4; ++i) {
    switch (connections[i]) {
    case kCE_Connected:
      InitializeController(i);
      if (i == 0 && !xc8c_acceptAdditionalConnections) {
        WPADSetAcceptConnection(false);
      }
      break;
    case kCE_Disconnected:
      if (i == 0 && !xc8c_acceptAdditionalConnections) {
        WPADSetAcceptConnection(true);
      }
      break;
    case kCE_Rejected:
      WPADDisconnect(i);
      break;
    }
  }
  for (int i = 0; i < 4; ++i) {
    switch (extensions[i]) {
    case kEE_Wiimote:
      InitializeController(i);
      break;
    case kEE_Nunchuk:
      InitializeController(i);
      break;
    }
  }
}

void CWiiInput::Update(float dt) {
  KPADStatus samples[16];
  KPADUnifiedWpadStatus rawSamples[16];
  ProcessConnectionEvents();
  for (int channel = 0; channel < 1; ++channel) {
    if (x22c_input[channel].DeviceIsPresent()) {
      if (x218_controllerTypes[channel] != kDT_Unsupported) {
        CInterruptGuard interrupts;
        const int count = KPADRead(channel, samples, 16);
        if (count != 0 && samples[0].wpad_err == WPAD_ERR_OK) {
          CBasics::CopyMemory(&x4_status[channel], samples, sizeof(KPADStatus));
          xbec_infoPollTimers[channel] -= dt;
          if (xbec_infoPollTimers[channel] < 0.f) {
            xbec_infoPollTimers[channel] = 5.f;
            WPADGetInfoAsync(channel, &xb88_wpadInfoBuf[channel], WpadInfoCallback);
          }
          UpdateIdleTimes(channel, dt);
          if (!xa88_motionProcessors[channel].null()) {
            KPADGetUnifiedWpadStatus(channel, rawSamples, 16);
            interrupts.Restore();
            if (rawSamples[0].u.core.err == WPAD_ERR_OK &&
                rawSamples[0].u.core.dev == WPAD_DEV_FS && uint(rawSamples[0].fmt - 3) <= 2) {
              for (int i = count - 1; i >= 0; --i) {
                xa88_motionProcessors[channel]->Update(rawSamples[i].u.fs, samples[i], 0.005f);
              }
              x22c_input[channel].x20_motionMask = xa88_motionProcessors[channel]->GetMotionMask();
              x22c_input[channel].x24_swingMask = xa88_motionProcessors[channel]->GetSwingMask();
            }
          }
          ProcessControllerInput(channel);
        }
      }
      if (uint(x218_controllerTypes[channel] - kDT_Unsupported) <= 1) {
        CBasics::ZeroMemory(&x4_status[channel], sizeof(KPADStatus));
        x4_status[channel].dev_type = 0xff;
        x4_status[channel].wpad_err = 0;
      }
    } else {
      CBasics::ZeroMemory(&x4_status[channel], sizeof(KPADStatus));
      x4_status[channel].dev_type = 0xff;
      x4_status[channel].wpad_err = 0;
    }
  }
}

bool CWiiInput::IsPointerValid(int channel) const {
  if (IsPointerDevicePresent(channel) && x4_status[channel].dpd_valid_fg > 0) {
    return true;
  }
  return false;
}

bool CWiiInput::IsPointerDevicePresent(int channel) const {
#if NONMATCHING
  if (channel < 0) {
    return false;
  }
#endif
  if (channel >= 4 || !x22c_input[channel].DeviceIsPresent()) {
    return false;
  }
  switch (x218_controllerTypes[channel]) {
  case kDT_Wiimote:
  case kDT_Nunchuk:
  case kDT_Classic:
    return true;
  default:
    return false;
  }
}

CControllerData::EPointerState CWiiInput::GetPointerState(int channel) const {
  if (IsPointerDevicePresent(channel)) {
    return x22c_input[channel].GetPointerState();
  }
  return CControllerData::kPS_RecentlyLost;
}

uint CWiiInput::GetPointerValidFrameCount(int channel) const {
  return x22c_input[channel].GetPointerValidFrameCount();
}

uint CWiiInput::GetPointerInvalidFrameCount(int channel) const {
  return x22c_input[channel].GetPointerInvalidFrameCount();
}

CVector2f CWiiInput::GetPointerPosition(int channel) const {
  return x22c_input[channel].GetPointerPosition();
}

void CWiiInput::ApplyPointerDistanceScale(int channel) {
  const float distance = (x22c_input[channel].x1c_pointerDistance - xc7c_pointerMinDistance) /
                         (xc80_pointerMaxDistance - xc7c_pointerMinDistance);
  const float scale = xc84_pointerMinScale + (xc88_pointerMaxScale - xc84_pointerMinScale) *
                                                 CMath::FastMin(CMath::FastMax(0.f, distance), 1.f);
  x4_status[channel].pos.x =
      CMath::FastMin(CMath::FastMax(-1.f, x4_status[channel].pos.x * scale), 1.f);
}

void CWiiInput::UpdatePointerState(int channel) {
  const bool valid = IsPointerValid(channel);
  CControllerData& input = x22c_input[channel];
  if (valid) {
    ++input.xc_pointerValidFrameCount;
    input.x10_pointerInvalidFrameCount = 0;
  } else {
    ++input.x10_pointerInvalidFrameCount;
    input.xc_pointerValidFrameCount = 0;
  }

  if (input.x8_pointerState == CControllerData::kPS_Tracking) {
    if (valid) {
      input.x14_pointerPosition[0] = xc50_pointerFilterX[channel]->Filter(x4_status[channel].pos.x);
      input.x14_pointerPosition[1] = xc64_pointerFilterY[channel]->Filter(x4_status[channel].pos.y);
      x4_status[channel].pos.x = input.x14_pointerPosition.GetX();
      x4_status[channel].pos.y = input.x14_pointerPosition.GetY();
    } else {
      input.x8_pointerState = CControllerData::kPS_RecentlyLost;
      x4_status[channel].pos.x = input.x14_pointerPosition.GetX();
      x4_status[channel].pos.y = input.x14_pointerPosition.GetY();
    }
  } else if (input.x8_pointerState == CControllerData::kPS_RecentlyLost) {
    if (valid) {
      if (input.xc_pointerValidFrameCount >= 3) {
        input.x8_pointerState = CControllerData::kPS_Reacquiring;
        input.xc_pointerValidFrameCount = 0;
        xa74_pointerReacquireFrames[channel] = 0;
      }
    } else if (input.x10_pointerInvalidFrameCount >= 120) {
      input.x8_pointerState = CControllerData::kPS_Lost;
    }
    x4_status[channel].pos.x = input.x14_pointerPosition.GetX();
    x4_status[channel].pos.y = input.x14_pointerPosition.GetY();
  } else if (input.x8_pointerState == CControllerData::kPS_Lost) {
    bool recenter = true;
    if (valid && input.xc_pointerValidFrameCount > 3) {
      input.x8_pointerState = CControllerData::kPS_Reacquiring;
      input.xc_pointerValidFrameCount = 0;
      recenter = false;
    }
    if (recenter) {
      if (xa60_pointerRecenterMode[channel] == kPRM_Both) {
        if (input.x14_pointerPosition.IsMagnitudeSafe()) {
          const float magnitude = input.x14_pointerPosition.Magnitude() * 0.95f;
          input.x14_pointerPosition = input.x14_pointerPosition.AsNormalized() * magnitude;
        }
      } else if (xa60_pointerRecenterMode[channel] == kPRM_X) {
        input.x14_pointerPosition[0] *= 0.95f;
      } else if (xa60_pointerRecenterMode[channel] == kPRM_Y) {
        input.x14_pointerPosition[1] *= 0.95f;
      }
    }
    x4_status[channel].pos.x = input.x14_pointerPosition.GetX();
    x4_status[channel].pos.y = input.x14_pointerPosition.GetY();
  } else if (input.x8_pointerState == CControllerData::kPS_Reacquiring) {
    if (valid) {
      if (++xa74_pointerReacquireFrames[channel] >= 10) {
        input.x8_pointerState = CControllerData::kPS_Tracking;
      }
      x4_status[channel].pos.x = xc50_pointerFilterX[channel]->Filter(x4_status[channel].pos.x);
      x4_status[channel].pos.y = xc64_pointerFilterY[channel]->Filter(x4_status[channel].pos.y);
      const float blend =
          CMath::FastMin(CMath::FastMax(0.f, xa74_pointerReacquireFrames[channel] / 10.f), 1.f);
      input.x14_pointerPosition[0] =
          (1.f - blend) * input.x14_pointerPosition.GetX() + blend * x4_status[channel].pos.x;
      input.x14_pointerPosition[1] =
          (1.f - blend) * input.x14_pointerPosition.GetY() + blend * x4_status[channel].pos.y;
    } else {
      input.x8_pointerState = CControllerData::kPS_Lost;
    }
  }
}

void CWiiInput::ProcessControllerInput(int channel) {
  if (IsPointerDevicePresent(channel) && x4_status[channel].wpad_err == WPAD_ERR_OK) {
    if (IsPointerValid(channel)) {
      x22c_input[channel].x1c_pointerDistance = x4_status[channel].dist;
      ApplyPointerDistanceScale(channel);
    }
    UpdatePointerState(channel);
  }
  if (!x22c_input[channel].DeviceIsPresent()) {
    return;
  }
  ClearButtonEvents(channel);
  CControllerData& input = x22c_input[channel];
  switch (x218_controllerTypes[channel]) {
  case kDT_Nunchuk:
    if (x4_status[channel].wpad_err == WPAD_ERR_OK) {
      UpdateAnalogInput(0.7f, channel, 0, input.xe4_buttons[20], input.xe4_buttons[19]);
      UpdateAnalogInput(0.7f, channel, 1, input.xe4_buttons[16], input.xe4_buttons[13]);
      UpdateAnalogInput(0.7f, channel, 2, input.xe4_buttons[14], input.xe4_buttons[18]);
      UpdateAnalogInput(0.7f, channel, 3, input.xe4_buttons[17], input.xe4_buttons[15]);
      UpdateAnalogInput(0.5f, channel, 4, input.xe4_buttons[23], input.xe4_buttons[24]);
      UpdateAnalogInput(0.5f, channel, 5, input.xe4_buttons[25], input.xe4_buttons[26]);
      UpdateContinuousAngleAxis(channel, 0);
      UpdateContinuousAngleAxis(channel, 1);
    }
  case kDT_Classic:
  case kDT_Wiimote:
    if (x4_status[channel].wpad_err == WPAD_ERR_OK) {
      UpdateAnalogInput(0.7f, channel, 6, input.xe4_buttons[30], input.xe4_buttons[29]);
      UpdateAnalogInput(0.7f, channel, 7, input.xe4_buttons[27], input.xe4_buttons[28]);
      UpdateAnalogInput(0.5f, channel, 8, input.xe4_buttons[31], input.xe4_buttons[32]);
      UpdateAnalogInput(0.5f, channel, 9, input.xe4_buttons[33], input.xe4_buttons[34]);
      UpdateContinuousAngleAxis(channel, 2);
      UpdateContinuousAngleAxis(channel, 3);
      if (!xa88_motionProcessors[channel].null()) {
        input.SetSwingMask(0, xa88_motionProcessors[channel]->GetSwingMask(0));
        input.SetSwingMask(1, xa88_motionProcessors[channel]->GetSwingMask(1));
      }
    }
    break;
  }
  if (x218_controllerTypes[channel] == kDT_Unsupported) {
    CBasics::ZeroMemory(&x4_status[channel], sizeof(KPADStatus));
    x4_status[channel].dev_type = 0xff;
    for (int i = 0; i < 64; ++i) {
      input.xe4_buttons[i].SetIsPressed(false);
      input.xe4_buttons[i].SetPressEvent(false);
      input.xe4_buttons[i].SetReleaseEvent(false);
    }
  } else {
    UpdateDigitalInput(channel);
  }
}

void CWiiInput::UpdateAnalogInput(float threshold, int channel, int axis,
                                  CControllerButton& negativeButton,
                                  CControllerButton& positiveButton) {
  CControllerData& input = x22c_input[channel];
  if (!input.DeviceIsPresent()) {
    return;
  }
  float value = 0.f;
  const float previous = input.x28_axes[axis].GetAbsoluteValue();
  switch (x218_controllerTypes[channel]) {
  case kDT_Nunchuk:
    if (axis == 0) {
      CVector2f stick(x4_status[channel].ex_status.fs.stick.x,
                      x4_status[channel].ex_status.fs.stick.y);
      if (stick.IsMagnitudeSafe()) {
        const float magnitude =
            CMath::FastMin(CMath::FastMax(0.f, stick.Magnitude() / 0.707f), 1.f);
        stick = stick.AsNormalized() * magnitude;
      }
      value = stick.GetX();
    } else if (axis == 1) {
      CVector2f stick(x4_status[channel].ex_status.fs.stick.x,
                      x4_status[channel].ex_status.fs.stick.y);
      if (stick.IsMagnitudeSafe()) {
        const float magnitude =
            CMath::FastMin(CMath::FastMax(0.f, stick.Magnitude() / 0.707f), 1.f);
        stick = stick.AsNormalized() * magnitude;
      }
      value = stick.GetY();
    } else if (axis == 2) {
      const CVector2f stick(x4_status[channel].ex_status.fs.stick.x,
                            x4_status[channel].ex_status.fs.stick.y);
      if (stick.IsMagnitudeSafe()) {
        value = CVector2f::Dot(stick, CVector2f(1.f, -1.f).AsNormalized()) / 1.4142135f / 0.707f;
        value = CMath::FastMin(CMath::FastMax(0.f, value), 1.f);
      }
    } else if (axis == 3) {
      const CVector2f stick(x4_status[channel].ex_status.fs.stick.x,
                            x4_status[channel].ex_status.fs.stick.y);
      if (stick.IsMagnitudeSafe()) {
        value = CVector2f::Dot(stick, CVector2f(1.f, 1.f).AsNormalized()) / 1.4142135f / 0.707f;
        value = CMath::FastMin(CMath::FastMax(0.f, value), 1.f);
      }
    } else if (axis == 4) {
      if (!xa88_motionProcessors[channel].null()) {
        value =
            xa88_motionProcessors[channel]->GetNunchukTracker().GetWrappedRoll() / (M_PIF / 2.f);
        value = CMath::FastMin(CMath::FastMax(-2.f, value), 2.f);
      }
    } else if (axis == 5 && !xa88_motionProcessors[channel].null()) {
      value = xa88_motionProcessors[channel]->GetNunchukTracker().GetWrappedPitch() / (M_PIF / 2.f);
      value = CMath::FastMin(CMath::FastMax(-2.f, value), 2.f);
    }
  case kDT_Classic:
  case kDT_Wiimote:
    if (axis == 6) {
      value = x4_status[channel].pos.x;
    } else if (axis == 7) {
      value = x4_status[channel].pos.y;
    } else if (axis == 8) {
      if (!xa88_motionProcessors[channel].null()) {
        value =
            xa88_motionProcessors[channel]->GetWiimoteTracker().GetWrappedRoll() / (M_PIF / 2.f);
        value = CMath::FastMin(CMath::FastMax(-2.f, value), 2.f);
      }
    } else if (axis == 9 && !xa88_motionProcessors[channel].null()) {
      value = xa88_motionProcessors[channel]->GetWiimoteTracker().GetWrappedPitch() / (M_PIF / 2.f);
      value = CMath::FastMin(CMath::FastMax(-2.f, value), 2.f);
    }
    break;
  }

  input.x28_axes[axis].SetRelativeValue(value - input.x28_axes[axis].GetAbsoluteValue());
  input.x28_axes[axis].SetAbsoluteValue(value);
  const bool wasNegative = negativeButton.GetIsPressed();
  bool negative = wasNegative;
  if (!negative) {
    if (previous > -threshold && value <= -threshold) {
      negative = true;
    }
  } else {
    const float releaseThreshold = -threshold + 0.2f;
    if (previous <= releaseThreshold && value > releaseThreshold) {
      negative = false;
    }
  }
  negativeButton.SetIsPressed(negative);
  negativeButton.SetPressEvent(negative & (negative ^ wasNegative));
  negativeButton.SetReleaseEvent(wasNegative & (negative ^ wasNegative));

  const bool wasPositive = positiveButton.GetIsPressed();
  bool positive = wasPositive;
  if (!positive) {
    if (previous < threshold && value >= threshold) {
      positive = true;
    }
  } else {
    const float releaseThreshold = threshold - 0.2f;
    if (previous >= releaseThreshold && value < releaseThreshold) {
      positive = false;
    }
  }
  positiveButton.SetIsPressed(positive);
  positiveButton.SetPressEvent(positive & (positive ^ wasPositive));
  positiveButton.SetReleaseEvent(wasPositive & (positive ^ wasPositive));
}

void CWiiInput::UpdateContinuousAngleAxis(int channel, int axis) {
  CControllerData& input = x22c_input[channel];
  if (!input.DeviceIsPresent()) {
    return;
  }
  CControllerAxis& data = input.xac_continuousAngleAxes[axis];
  float value = 0.f;
  switch (x218_controllerTypes[channel]) {
  case kDT_Nunchuk:
    switch (axis) {
    case 0:
      if (!xa88_motionProcessors[channel].null()) {
        value = xa88_motionProcessors[channel]->GetNunchukTracker().GetContinuousRoll();
      }
      break;
    case 1:
      if (!xa88_motionProcessors[channel].null()) {
        value = xa88_motionProcessors[channel]->GetNunchukTracker().GetContinuousPitch();
      }
      break;
    }
  case kDT_Classic:
  case kDT_Wiimote:
    switch (axis) {
    case 2:
      if (!xa88_motionProcessors[channel].null()) {
        value = xa88_motionProcessors[channel]->GetWiimoteTracker().GetContinuousRoll();
      }
      break;
    case 3:
      if (!xa88_motionProcessors[channel].null()) {
        value = xa88_motionProcessors[channel]->GetWiimoteTracker().GetContinuousPitch();
      }
      break;
    }
    break;
  }
  data.SetRelativeValue(value - data.GetAbsoluteValue());
  data.SetAbsoluteValue(value);
}

void CWiiInput::ClearButtonEvents(int channel) {
  CControllerData& input = x22c_input[channel];
  if (!input.DeviceIsPresent()) {
    return;
  }
  for (int i = 0; i < 64; ++i) {
    if (sButtonMasks[i] != 0) {
      input.xe4_buttons[i].SetPressEvent(false);
      input.xe4_buttons[i].SetReleaseEvent(false);
    }
  }
  for (int i = 0; i < 16; ++i) {
    if (sMotionButtonMasks[i] != 0) {
      input.x1a8_motionButtons[i].SetPressEvent(false);
      input.x1a8_motionButtons[i].SetReleaseEvent(false);
    }
  }
  for (int i = 0; i < 12; ++i) {
    if (sSwingButtonMasks[i] != 0) {
      input.x1dc_swingButtons[i].SetPressEvent(false);
      input.x1dc_swingButtons[i].SetReleaseEvent(false);
    }
  }
}

void CWiiInput::UpdateDigitalInput(int channel) {
  if (x22c_input[channel].DeviceIsPresent()) {
    if (int(x218_controllerTypes[channel]) >= 0 && int(x218_controllerTypes[channel]) < 3) {
      const uint held = x4_status[channel].hold;
      for (int i = 1; i < 35; ++i) {
        if (sButtonMasks[i] != 0) {
          UpdateButton(held, x22c_input[channel].xe4_buttons[i], sButtonMasks[i]);
        }
      }
    }
    UpdateMotionButtons(channel);
    UpdateSwingButtons(channel);
  }
}

void CWiiInput::UpdateButton(uint heldMask, CControllerButton& button, uint mask) {
  const int wasPressed = button.GetIsPressed();
  const bool pressed = (heldMask & mask) != 0;
  button.SetIsPressed(pressed);
  const int changed = pressed ^ wasPressed;
  button.SetPressEvent(pressed & changed);
  button.SetReleaseEvent(wasPressed & changed);
}

void CWiiInput::UpdateMotionButton(int channel, CControllerButton& button, uint mask) {
  if (!x22c_input[channel].DeviceIsPresent()) {
    return;
  }
  const int wasPressed = button.GetIsPressed();
  const bool pressed = (x22c_input[channel].x20_motionMask & mask) != 0;
  button.SetIsPressed(pressed);
  const int changed = pressed ^ wasPressed;
  button.SetPressEvent(pressed & changed);
  button.SetReleaseEvent(wasPressed & changed);
}

void CWiiInput::UpdateMotionButtons(int channel) {
  CControllerData& input = x22c_input[channel];
  if (input.DeviceIsPresent()) {
    for (int i = 0; i < 16; ++i) {
      if (sMotionButtonMasks[i] != 0) {
        UpdateMotionButton(channel, input.x1a8_motionButtons[i], sMotionButtonMasks[i]);
      }
    }
  }
}

void CWiiInput::UpdateSwingButton(int channel, CControllerButton& button, uint mask) {
  if (!x22c_input[channel].DeviceIsPresent()) {
    return;
  }
  const int wasPressed = button.GetIsPressed();
  const bool pressed = (x22c_input[channel].x24_swingMask & mask) != 0;
  button.SetIsPressed(pressed);
  const int changed = pressed ^ wasPressed;
  button.SetPressEvent(pressed & changed);
  button.SetReleaseEvent(wasPressed & changed);
}

void CWiiInput::UpdateSwingButtons(int channel) {
  CControllerData& input = x22c_input[channel];
  if (input.DeviceIsPresent()) {
    for (int i = 0; i < 12; ++i) {
      if (sSwingButtonMasks[i] != 0) {
        UpdateSwingButton(channel, input.x1dc_swingButtons[i], sSwingButtonMasks[i]);
      }
    }
  }
}

void CWiiInput::SetMotorState(int channel, EMotorState state) {
#if NONMATCHING
  if (uint(channel) >= 4) {
    return;
  }
#endif
  if (x22c_input[channel].DeviceIsPresent()) {
    x22c_input[channel].x4_motorState = state;
    if (!IsControllerIdle(channel) && channel < 4 && (xc78_motorEnabledFlags & (1 << channel))) {
      switch (state) {
      case kMS_Rumble:
        WPADControlMotor(channel, WPAD_MOTOR_RUMBLE);
        break;
      case kMS_Stop:
        WPADControlMotor(channel, WPAD_MOTOR_STOP);
        break;
      }
    }
  }
}

void CWiiInput::SetMotorEnabled(int channel, bool enabled) {
#if NONMATCHING
  if (channel < 0) {
    return;
  }
#endif
  if (channel >= 4) {
    return;
  }
  const uint bit = 1 << channel;
  const uint value = uint(enabled) << channel;
  if (value == (xc78_motorEnabledFlags & bit)) {
    return;
  }
  xc78_motorEnabledFlags = (xc78_motorEnabledFlags & ~bit) | value;
  if (!enabled) {
    WPADControlMotor(channel, 0);
  }
}

bool CWiiInput::HasMotionActivity(uint channel) const {
#if NONMATCHING
  if (channel >= 4) {
#else
  if (channel > 4) {
#endif
    return false;
  }
  const KPADStatus& status = x4_status[channel];
  if (status.dev_type > WPAD_DEV_FS) {
    return false;
  }
  bool active = status.acc_speed > 0.03f || (status.speed > 0.f && status.dpd_valid_fg > 0);
  if (status.dev_type == WPAD_DEV_FS && status.ex_status.fs.acc_speed > 0.03f) {
    active = true;
  }
  return active;
}

float CWiiInput::GetMotionIdleTime(uint channel) const {
#if NONMATCHING
  if (channel < 4) {
#else
  if (channel <= 4) {
#endif
    return xc00_motionIdleTimes[channel];
  }
  return 0.f;
}

bool CWiiInput::HasButtonActivity(uint channel) const {
#if NONMATCHING
  if (channel >= 4) {
#else
  if (channel > 4) {
#endif
    return false;
  }
  const KPADStatus& status = x4_status[channel];
  if (status.dev_type > WPAD_DEV_FS) {
    return false;
  }
  bool active = false;
  if (status.hold != 0) {
    active = true;
  }
  if (status.dev_type == WPAD_DEV_FS &&
      (!CMath::IsEpsilon(status.ex_status.fs.stick.x, 0.f, 1.e-5f) ||
       !CMath::IsEpsilon(status.ex_status.fs.stick.y, 0.f, 1.e-5f))) {
    active = true;
  }
  return active;
}

float CWiiInput::GetButtonIdleTime(uint channel) const {
#if NONMATCHING
  if (channel < 4) {
#else
  if (channel <= 4) {
#endif
    return xc14_buttonIdleTimes[channel];
  }
  return 0.f;
}

bool CWiiInput::IsControllerIdle(uint channel) const { return GetButtonIdleTime(channel) >= 60.f; }

void CWiiInput::UpdateIdleTimes(uint channel, float dt) {
#if NONMATCHING
  if (channel >= 4) {
#else
  if (channel > 4) {
#endif
    return;
  }
  if (x4_status[channel].dev_type <= WPAD_DEV_FS) {
    if (HasMotionActivity(channel)) {
      xc00_motionIdleTimes[channel] = 0.f;
    } else {
      xc00_motionIdleTimes[channel] += dt;
    }
    if (HasButtonActivity(channel)) {
      xc14_buttonIdleTimes[channel] = 0.f;
    } else {
      const float previous = xc14_buttonIdleTimes[channel];
      xc14_buttonIdleTimes[channel] += dt;
      if (previous < 60.f && xc14_buttonIdleTimes[channel] >= 60.f) {
        WPADControlMotor(channel, 0);
      }
    }
  }
}

bool CWiiInput::Initialize() {
  for (int i = 0; i < 4; ++i) {
    x22c_input[i].x0_connected = false;
    x22c_input[i].x14_pointerPosition = CVector2f::Zero();
    x22c_input[i].x4_motorState = kMS_StopHard;
    x22c_input[i].x8_pointerState = CControllerData::kPS_Tracking;
  }
  for (int i = 0; i < 4; ++i) {
    xc50_pointerFilterX[i] = rs_new CAdaptiveInputFilter(2, 3, 0, 0.1f);
    xc64_pointerFilterY[i] = rs_new CAdaptiveInputFilter(2, 3, 0, 0.1f);
  }

  VIWaitForRetrace();
  VIWaitForRetrace();
  VIWaitForRetrace();
  VIWaitForRetrace();
  WPADRegisterAllocator(AllocateWpadMemory, FreeWpadMemory);
  KPADInit();
  while (WPADGetStatus() != 3) {
  }

  for (int i = 0; i < 4; ++i) {
    KPADSetPosParam(i, 0.05f, 1.f);
    KPADSetDistParam(i, 0.05f, 1.f);
    KPADDisableAimingMode(i);
    WPADSetConnectCallback(i, WpadConnectCallback);
    xbec_infoPollTimers[i] = 1.f;
    xc00_motionIdleTimes[i] = 0.f;
    xc14_buttonIdleTimes[i] = 0.f;
  }
  return true;
}

void CWiiInput::InitializeController(uint channel) {
#if NONMATCHING
  if (channel >= 4) {
#else
  if (channel > 4) {
#endif
    return;
  }
  if (int(x218_controllerTypes[channel]) >= 0 && int(x218_controllerTypes[channel]) < 3) {
    if (xa88_motionProcessors[channel].null()) {
      rstl::single_ptr< CWiiMotionProcessor > processor(rs_new CWiiMotionProcessor(channel, 0));
      xa88_motionProcessors[channel] = processor;
    }
    if (!xa88_motionProcessors[channel].null()) {
      xa88_motionProcessors[channel]->ConfigureFiltersAndCalibration(channel);
    }
    x22c_input[channel] = CControllerData();
    x22c_input[channel].x0_connected = true;
  }
}

void CWiiInput::SetPointerRecenterMode(uint channel, EPointerRecenterMode mode) {
#if NONMATCHING
  if (channel >= 4) {
#else
  if (channel > 4) {
#endif
    return;
  }
  xa60_pointerRecenterMode[channel] = mode;
}

void CWiiInput::SetControllerType(int channel, EDeviceType type) {
  x218_controllerTypes[channel] = type;
  x22c_input[channel].x0_connected = type != kDT_Disconnected;
}

WPADInfo CWiiInput::GetWpadInfo(int channel) const { return xb24_wpadInfo[channel]; }

const KPADStatus& CWiiInput::GetKpadStatus(int channel) const { return x4_status[channel]; }

void CWiiInput::CopyWpadInfo(int channel) { xb24_wpadInfo[channel] = xb88_wpadInfoBuf[channel]; }

void CWiiInput::WpadInfoCallback(s32 channel, s32 result) {
  if (sWiiInput != nullptr && result == 0) {
    sWiiInput->CopyWpadInfo(channel);
  }
}

void CWiiInput::WpadConnectCallback(s32 channel, s32 result) {
  if (sWiiInput != nullptr) {
    if (channel >= 1) {
      sWiiInput->QueueConnectionEvent(channel, kCE_Rejected);
    } else {
      switch (result) {
      case WPAD_ERR_OK:
        sWiiInput->QueueConnectionEvent(channel, kCE_Connected);
        sWiiInput->SetControllerType(channel, kDT_Wiimote);
        WPADSetExtensionCallback(channel, WpadExtensionCallback);
        break;
      case WPAD_ERR_NO_CONTROLLER:
        sWiiInput->QueueConnectionEvent(channel, kCE_Disconnected);
        sWiiInput->SetControllerType(channel, kDT_Disconnected);
        break;
      case WPAD_ERR_BUSY:
        sWiiInput->SetControllerType(channel, kDT_Disconnected);
        break;
      case WPAD_ERR_TRANSFER:
        sWiiInput->SetControllerType(channel, kDT_Disconnected);
        break;
      }
    }
  }
}

void CWiiInput::WpadExtensionCallback(s32 channel, s32 extension) {
  if (sWiiInput != nullptr) {
    if (channel >= 1) {
      sWiiInput->SetControllerType(channel, kDT_Wiimote);
    } else {
      switch (extension) {
      case WPAD_DEV_CORE:
        sWiiInput->QueueExtensionEvent(channel, kEE_Wiimote);
        sWiiInput->SetControllerType(channel, kDT_Wiimote);
        break;
      case WPAD_DEV_FS:
        sWiiInput->QueueExtensionEvent(channel, kEE_Nunchuk);
        sWiiInput->SetControllerType(channel, kDT_Nunchuk);
        break;
      case WPAD_DEV_CLASSIC:
        sWiiInput->QueueExtensionEvent(channel, kEE_Classic);
        sWiiInput->SetControllerType(channel, kDT_Classic);
        break;
      case 0xfd:
        sWiiInput->SetControllerType(channel, kDT_Wiimote);
        break;
      case 0xfb:
        sWiiInput->QueueExtensionEvent(channel, kEE_Unsupported);
        sWiiInput->SetControllerType(channel, kDT_Wiimote);
        break;
      default:
        sWiiInput->QueueExtensionEvent(channel, kEE_Unsupported);
        sWiiInput->SetControllerType(channel, kDT_Unsupported);
        break;
      }
    }
  }
}

void CWiiInput::SetAcceptAdditionalConnections(bool accept) {
  if (accept == xc8c_acceptAdditionalConnections) {
    return;
  }
  xc8c_acceptAdditionalConnections = accept;
  if (!xc8c_acceptAdditionalConnections && x22c_input[0].DeviceIsPresent()) {
    WPADSetAcceptConnection(false);
  }
}

void CWiiInput::SetInput(const CControllerData& input, int channel) { x22c_input[channel] = input; }
