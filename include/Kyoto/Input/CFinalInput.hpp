#ifndef __CFINALINPUT_HPP__
#define __CFINALINPUT_HPP__

#include <types.h>
#ifdef __MWERKS__
#pragma cpp_extensions on
#endif

class CFinalInput {
public:
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
      bool x2c_b24_A : 1;
      bool x2c_b25_B : 1;
      bool x2c_b26_X : 1;
      bool x2c_b27_Y : 1;
      bool x2c_b28_Z : 1;
      bool x2c_b29_L : 1;
      bool x2c_b30_R : 1;
      bool x2c_b31_DPUp : 1;
    };
    u8 btns1;
  };
  union {
    struct {
      bool x2d_b24_DPRight : 1;
      bool x2d_b25_DPDown : 1;
      bool x2d_b26_DPLeft : 1;
      bool x2d_b27_Start : 1;
      bool x2d_b28_PA : 1;
      bool x2d_b29_PB : 1;
      bool x2d_b30_PX : 1;
      bool x2d_b31_PY : 1;
    };
    u8 btns2;
  };
  union {
    struct {
      bool x2e_b24_PZ : 1;
      bool x2e_b25_PL : 1;
      bool x2e_b26_PR : 1;
      bool x2e_b27_PDPUp : 1;
      bool x2e_b28_PDPRight : 1;
      bool x2e_b29_PDPDown : 1;
      bool x2e_b30_PDPLeft : 1;
      bool x2e_b31_PStart : 1;
    };
    u8 btns3;
  };

};

#ifdef __MWERKS__
#pragma cpp_extensions reset
#endif

#endif // __CFINALINPUT_HPP__
