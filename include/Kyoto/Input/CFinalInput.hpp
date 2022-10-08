#ifndef __CFINALINPUT_HPP__
#define __CFINALINPUT_HPP__

#include <types.h>
#ifdef __MWERKS__
#pragma cpp_extensions on
#endif

class CControllerGamepadData;
class COsContext;
class CFinalInput {

  static const float kInput_AnalogOnThreshhold;
  static const float kInput_AnalogTriggerOnThreshhold;
public:
  CFinalInput();
  CFinalInput(int channel, float dt, const CControllerGamepadData& data, float leftDif,
              float rightDiv);
  CFinalInput(int channel, float dt, const COsContext& context);
  CFinalInput(const CFinalInput& other)
  : x0_dt(other.x0_dt)
  , x4_controllerIdx(other.x4_controllerIdx)
  , x8_anaLeftX(other.x8_anaLeftX)
  , xc_anaLeftY(other.xc_anaLeftY)
  , x10_anaRightX(other.x10_anaRightX)
  , x14_anaRightY(other.x14_anaRightY)
  , x18_anaLeftTrigger(other.x18_anaLeftTrigger)
  , x1c_anaRightTrigger(other.x1c_anaRightTrigger)
  , x20_enableAnaLeftXP(other.x20_enableAnaLeftXP)
  , x21_enableAnaLeftYP(other.x21_enableAnaLeftYP)
  , x22_enableAnaRightXP(other.x22_enableAnaRightXP)
  , x23_enableAnaRightYP(other.x23_enableAnaRightYP)
  , x24_anaLeftTriggerP(other.x24_anaLeftTriggerP)
  , x28_anaRightTriggerP(other.x28_anaRightTriggerP)
  , btns1(other.btns1)
  , btns2(other.btns2)
  , btns3(other.btns3) {}

  void InitializeAnalog(float leftDiv, float rightDiv);

  CFinalInput ScaleAnalogueSticks(float leftDiv, float rightDiv) const;

private:
  float x0_dt;
  uint x4_controllerIdx;
  float x8_anaLeftX;
  float xc_anaLeftY;
  float x10_anaRightX;
  float x14_anaRightY;
  float x18_anaLeftTrigger;
  float x1c_anaRightTrigger;

  bool x20_enableAnaLeftXP;
  bool x21_enableAnaLeftYP;
  bool x22_enableAnaRightXP;
  bool x23_enableAnaRightYP;

  float x24_anaLeftTriggerP;
  float x28_anaRightTriggerP;

  union {
    struct {
      uchar x2c_b24_A : 1;
      uchar x2c_b25_B : 1;
      uchar x2c_b26_X : 1;
      uchar x2c_b27_Y : 1;
      uchar x2c_b28_Z : 1;
      uchar x2c_b29_L : 1;
      uchar x2c_b30_R : 1;
      uchar x2c_b31_DPUp : 1;
    };
    uchar btns1;
  };
  union {
    struct {
      uchar x2d_b24_DPRight : 1;
      uchar x2d_b25_DPDown : 1;
      uchar x2d_b26_DPLeft : 1;
      uchar x2d_b27_Start : 1;
      uchar x2d_b28_PA : 1;
      uchar x2d_b29_PB : 1;
      uchar x2d_b30_PX : 1;
      uchar x2d_b31_PY : 1;
    };
    uchar btns2;
  };
  union {
    struct {
      uchar x2e_b24_PZ : 1;
      uchar x2e_b25_PL : 1;
      uchar x2e_b26_PR : 1;
      uchar x2e_b27_PDPUp : 1;
      uchar x2e_b28_PDPRight : 1;
      uchar x2e_b29_PDPDown : 1;
      uchar x2e_b30_PDPLeft : 1;
      uchar x2e_b31_PStart : 1;
    };
    uchar btns3;
  };
};

#ifdef __MWERKS__
#pragma cpp_extensions reset
#endif

#endif // __CFINALINPUT_HPP__
