#ifndef __CDOLPHINCONTROLLER_HPP__
#define __CDOLPHINCONTROLLER_HPP__

#include "Kyoto/Input/IController.hpp"

class CDolphinController : public IController {
  static const uint skTypeUnknown;
  static const uint skTypeStandard;
  static const uint skTypeGBA;
  static const uint skTypeWavebird;

public:
    CDolphinController();
    virtual ~CDolphinController();
    void Poll();
    uint GetDeviceCount() const;
    CControllerGamepadData& GetGamepadData(int controller);
    uint GetControllerType(int) const;
    void SetMotorState(EIOPort port, EMotorState state);
    bool Initialize();

    float GetAnalogStickMaxValue(EJoyAxis axis) const;

private:
  void ReadDevices();
  void ProcessInputData();
  void ProcessAxis(int controller, EJoyAxis axis);
  void ProcessButtons(int controller);
  void ProcessDigitalButton(int value, CControllerButton& button, u16 mapping);
  void ProcessAnalogButton(float value, CControllerAxis& axis);
  PADStatus x4_status[4];
  CControllerGamepadData x34_gamepadStates[4];
  EMotorState x194_motorStates[4];
  uint x1a4_controllerTypes[4];
  u32 x1b4_controllerTypePollTime[4];
  u32 x1c4_;
  u32 x1c8_invalidControllers;
  u32 x1cc_;
};

#endif // __CDOLPHINCONTROLLER_HPP__
