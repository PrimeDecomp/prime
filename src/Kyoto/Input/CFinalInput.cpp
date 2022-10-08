#include "Kyoto/Input/CFinalInput.hpp"

#include "Kyoto/Basics/COsContext.hpp"
#include "Kyoto/Input/CControllerGamepadData.hpp"
#include "Kyoto/Math/CMath.hpp"

const float CFinalInput::kInput_AnalogOnThreshhold = 0.7f;
const float CFinalInput::kInput_AnalogTriggerOnThreshhold = 0.05f;

CFinalInput::CFinalInput()
: x0_dt(0.f)
, x4_controllerIdx(0)
, x8_anaLeftX(0.f)
, xc_anaLeftY(0.f)
, x10_anaRightX(0.f)
, x14_anaRightY(0.f)
, x18_anaLeftTrigger(0.f)
, x1c_anaRightTrigger(0.f)
, x20_enableAnaLeftXP(false)
, x21_enableAnaLeftYP(false)
, x22_enableAnaRightXP(false)
, x23_enableAnaRightYP(false)
, x24_anaLeftTriggerP(0.f)
, x28_anaRightTriggerP(0.f)
, x2c_b24_A(false)
, x2c_b25_B(false)
, x2c_b26_X(false)
, x2c_b27_Y(false)
, x2c_b28_Z(false)
, x2c_b29_L(false)
, x2c_b30_R(false)
, x2c_b31_DPUp(false)
, x2d_b24_DPRight(false)
, x2d_b25_DPDown(false)
, x2d_b26_DPLeft(false)
, x2d_b27_Start(false)
, x2d_b28_PA(false)
, x2d_b29_PB(false)
, x2d_b30_PX(false)
, x2d_b31_PY(false)
, x2e_b24_PZ(false)
, x2e_b25_PL(false)
, x2e_b26_PR(false)
, x2e_b27_PDPUp(false)
, x2e_b28_PDPRight(false)
, x2e_b29_PDPDown(false)
, x2e_b30_PDPLeft(false)
, x2e_b31_PStart(false) {}

CFinalInput::CFinalInput(int channel, float dt, const CControllerGamepadData& data, float leftDiv,
                         float rightDiv)
: x0_dt(dt)
, x4_controllerIdx(channel)
, x8_anaLeftX(data.GetAxis(kJA_LeftX).GetAbsoluteValue())
, xc_anaLeftY(data.GetAxis(kJA_LeftY).GetAbsoluteValue())
, x10_anaRightX(data.GetAxis(kJA_RightX).GetAbsoluteValue())
, x14_anaRightY(data.GetAxis(kJA_RightY).GetAbsoluteValue())
, x18_anaLeftTrigger(data.GetAnalogButton(kBA_Left).GetAbsoluteValue())
, x1c_anaRightTrigger(data.GetAnalogButton(kBA_Right).GetAbsoluteValue())
, x24_anaLeftTriggerP(data.GetAnalogButton(kBA_Left).GetRelativeValue())
, x28_anaRightTriggerP(data.GetAnalogButton(kBA_Right).GetRelativeValue())
, x20_enableAnaLeftXP(false)
, x21_enableAnaLeftYP(false)
, x22_enableAnaRightXP(false)
, x23_enableAnaRightYP(false)
, x2c_b24_A(data.GetButton(kBU_A).GetIsPressed())
, x2c_b25_B(data.GetButton(kBU_B).GetIsPressed())
, x2c_b26_X(data.GetButton(kBU_X).GetIsPressed())
, x2c_b27_Y(data.GetButton(kBU_Y).GetIsPressed())
, x2c_b28_Z(data.GetButton(kBU_Z).GetIsPressed())
, x2c_b29_L(data.GetButton(kBU_L).GetIsPressed())
, x2c_b30_R(data.GetButton(kBU_R).GetIsPressed())
, x2c_b31_DPUp(data.GetButton(kBU_Up).GetIsPressed())
, x2d_b24_DPRight(data.GetButton(kBU_Right).GetIsPressed())
, x2d_b25_DPDown(data.GetButton(kBU_Down).GetIsPressed())
, x2d_b26_DPLeft(data.GetButton(kBU_Left).GetIsPressed())
, x2d_b27_Start(data.GetButton(kBU_Start).GetIsPressed())
, x2d_b28_PA(data.GetButton(kBU_A).GetPressEvent())
, x2d_b29_PB(data.GetButton(kBU_B).GetPressEvent())
, x2d_b30_PX(data.GetButton(kBU_X).GetPressEvent())
, x2d_b31_PY(data.GetButton(kBU_Y).GetPressEvent())
, x2e_b24_PZ(data.GetButton(kBU_Z).GetPressEvent())
, x2e_b25_PL(data.GetButton(kBU_L).GetPressEvent())
, x2e_b26_PR(data.GetButton(kBU_R).GetPressEvent())
, x2e_b27_PDPUp(data.GetButton(kBU_Up).GetPressEvent())
, x2e_b28_PDPRight(data.GetButton(kBU_Right).GetPressEvent())
, x2e_b29_PDPDown(data.GetButton(kBU_Down).GetPressEvent())
, x2e_b30_PDPLeft(data.GetButton(kBU_Left).GetPressEvent())
, x2e_b31_PStart(data.GetButton(kBU_Start).GetPressEvent()) {
  InitializeAnalog(leftDiv, rightDiv);
}

static bool sIsAnalogPressed[4][4] = {};

void CFinalInput::InitializeAnalog(float leftDiv, float rightDiv) {
  x8_anaLeftX = CMath::Clamp(-1.f, x8_anaLeftX / leftDiv, 1.f);
  xc_anaLeftY = CMath::Clamp(-1.f, xc_anaLeftY / leftDiv, 1.f);
  x10_anaRightX = CMath::Clamp(-1.f, x10_anaRightX / rightDiv, 1.f);
  x14_anaRightY = CMath::Clamp(-1.f, x14_anaRightY / rightDiv, 1.f);

  if (xc_anaLeftY > 0.7f && !sIsAnalogPressed[x4_controllerIdx][0]) {
    sIsAnalogPressed[x4_controllerIdx][0] = true;
    x21_enableAnaLeftYP = true;
  } else if (xc_anaLeftY > 0.7f && sIsAnalogPressed[x4_controllerIdx][0]) {
    x21_enableAnaLeftYP = false;
  } else if (xc_anaLeftY < -0.7f && !sIsAnalogPressed[x4_controllerIdx][0]) {
    x21_enableAnaLeftYP = true;
    sIsAnalogPressed[x4_controllerIdx][0] = true;
  } else if (xc_anaLeftY < -0.7f && sIsAnalogPressed[x4_controllerIdx][0]) {
    x21_enableAnaLeftYP = false;
  } else if (fabsf(xc_anaLeftY) < 0.7f) {
    x21_enableAnaLeftYP = false;
    sIsAnalogPressed[x4_controllerIdx][0] = false;
  }

  if (x8_anaLeftX > 0.7f && !sIsAnalogPressed[x4_controllerIdx][1]) {
    x20_enableAnaLeftXP = true;
    sIsAnalogPressed[x4_controllerIdx][1] = true;
  } else if (x8_anaLeftX > 0.7f && sIsAnalogPressed[x4_controllerIdx][1]) {
    x20_enableAnaLeftXP = false;
  } else if (x8_anaLeftX < -0.7f && !sIsAnalogPressed[x4_controllerIdx][1]) {
    sIsAnalogPressed[x4_controllerIdx][1] = true;
    x20_enableAnaLeftXP = true;
  } else if (x8_anaLeftX < -0.7f && sIsAnalogPressed[x4_controllerIdx][1]) {
    x20_enableAnaLeftXP = false;
  } else if (fabsf(x8_anaLeftX) < 0.7f) {
    x20_enableAnaLeftXP = false;
    sIsAnalogPressed[x4_controllerIdx][1] = false;
  }

  if (x14_anaRightY > 0.7f && !sIsAnalogPressed[x4_controllerIdx][2]) {
    sIsAnalogPressed[x4_controllerIdx][2] = true;
    x23_enableAnaRightYP = true;
  } else if (x14_anaRightY > 0.7f && sIsAnalogPressed[x4_controllerIdx][2]) {
    x23_enableAnaRightYP = false;
  } else if (x14_anaRightY < -0.7f && !sIsAnalogPressed[x4_controllerIdx][2]) {
    x23_enableAnaRightYP = true;
    sIsAnalogPressed[x4_controllerIdx][2] = true;
  } else if (x14_anaRightY < -0.7f && sIsAnalogPressed[x4_controllerIdx][2]) {
    x23_enableAnaRightYP = false;
  } else if (fabsf(x14_anaRightY) < 0.7f) {
    x23_enableAnaRightYP = false;
    sIsAnalogPressed[x4_controllerIdx][2] = false;
  }

  if (x10_anaRightX > 0.7f && !sIsAnalogPressed[x4_controllerIdx][3]) {
    x22_enableAnaRightXP = true;
    sIsAnalogPressed[x4_controllerIdx][3] = true;
  } else if (x10_anaRightX > 0.7f && sIsAnalogPressed[x4_controllerIdx][3]) {
    x22_enableAnaRightXP = false;
  } else if (x10_anaRightX < -0.7f && !sIsAnalogPressed[x4_controllerIdx][3]) {
    sIsAnalogPressed[x4_controllerIdx][3] = true;
    x22_enableAnaRightXP = true;
  } else if (x10_anaRightX < -0.7f && sIsAnalogPressed[x4_controllerIdx][3]) {
    x22_enableAnaRightXP = false;
  } else if (fabsf(x10_anaRightX) < 0.7f) {
    x22_enableAnaRightXP = false;
    sIsAnalogPressed[x4_controllerIdx][3] = false;
  }
}

CFinalInput::CFinalInput(int channel, float dt, const COsContext& ctx)
: x0_dt(dt)
, x4_controllerIdx(channel)
, x8_anaLeftX(0.f)
, xc_anaLeftY(0.f)
, x10_anaRightX(0.f)
, x14_anaRightY(0.f)
, x18_anaLeftTrigger(0.f)
, x1c_anaRightTrigger(0.f)
, x22_enableAnaRightXP(false)
, x23_enableAnaRightYP(false)
, x24_anaLeftTriggerP(0.f)
, x28_anaRightTriggerP(0.f)
, x2c_b24_A(ctx.GetOsKeyState(0x6d).IsPressed())
, x2c_b25_B(ctx.GetOsKeyState(0x6e).IsPressed())
, x2c_b26_X(ctx.GetOsKeyState(0x84).IsPressed())
, x2c_b27_Y(ctx.GetOsKeyState(0x85).IsPressed())
, x2c_b28_Z(ctx.GetOsKeyState(0x16).IsPressed())
, x2c_b29_L(ctx.GetOsKeyState(0x78).IsPressed())
, x2c_b30_R(ctx.GetOsKeyState(0x7e).IsPressed())
, x2c_b31_DPUp(ctx.GetOsKeyState(0x1c).IsPressed())
, x2d_b24_DPRight(ctx.GetOsKeyState(0x1d).IsPressed())
, x2d_b25_DPDown(ctx.GetOsKeyState(0x1e).IsPressed())
, x2d_b26_DPLeft(ctx.GetOsKeyState(0x1b).IsPressed())
, x2d_b27_Start(ctx.GetOsKeyState(5).IsPressed())
, x2d_b28_PA(ctx.GetOsKeyState(0x6d).JustPressed())
, x2d_b29_PB(ctx.GetOsKeyState(0x6e).JustPressed())
, x2d_b30_PX(ctx.GetOsKeyState(0x84).JustPressed())
, x2d_b31_PY(ctx.GetOsKeyState(0x85).JustPressed())
, x2e_b24_PZ(ctx.GetOsKeyState(0x16).JustPressed())
, x2e_b25_PL(ctx.GetOsKeyState(0x78).JustPressed())
, x2e_b26_PR(ctx.GetOsKeyState(0x7e).JustPressed())
, x2e_b27_PDPUp(ctx.GetOsKeyState(0x1c).JustPressed())
, x2e_b28_PDPRight(ctx.GetOsKeyState(0x1d).JustPressed())
, x2e_b29_PDPDown(ctx.GetOsKeyState(0x1e).JustPressed())
, x2e_b30_PDPLeft(ctx.GetOsKeyState(0x1b).JustPressed())
, x2e_b31_PStart(ctx.GetOsKeyState(5).JustPressed()) {}

CFinalInput CFinalInput::ScaleAnalogueSticks(float leftDiv, float rightDiv) const {
  CFinalInput ret = *this;
  ret.x8_anaLeftX = CMath::Clamp(-1.f, x8_anaLeftX / leftDiv, 1.f);
  ret.xc_anaLeftY = CMath::Clamp(-1.f, xc_anaLeftY / leftDiv, 1.f);
  ret.x10_anaRightX = CMath::Clamp(-1.f, x10_anaRightX / rightDiv, 1.f);
  ret.x14_anaRightY = CMath::Clamp(-1.f, x14_anaRightY / rightDiv, 1.f);
  return ret;
}
