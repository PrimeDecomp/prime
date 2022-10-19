#ifndef _CDOLPHINCONTROLLER
#define _CDOLPHINCONTROLLER

#include "Kyoto/Input/IController.hpp"

class CDolphinController : public IController {
  static const uint skTypeUnknown;
  static const uint skTypeStandard;
  static const uint skTypeGBA;
  static const uint skTypeWavebird;

public:
  CDolphinController();
  ~CDolphinController() override;
  void Poll() override;
  uint GetDeviceCount() const override;
  CControllerGamepadData& GetGamepadData(int controller) override;
  uint GetControllerType(int) const override;
  void SetMotorState(EIOPort port, EMotorState state) override;

  bool Initialize();
  float GetAnalogStickMaxValue(EJoyAxis axis) const;

private:
  void ReadDevices();
  void ProcessInputData();
  void ProcessAxis(int controller, EJoyAxis axis);
  void ProcessButtons(int controller);
  void ProcessDigitalButton(int value, CControllerButton& button, ushort mapping);
  void ProcessAnalogButton(float value, CControllerAxis& axis);
  PADStatus x4_status[4];
  CControllerGamepadData x34_gamepadStates[4];
  EMotorState x194_motorStates[4];
  uint x1a4_controllerTypes[4];
  uint x1b4_controllerTypePollTime[4];
  uint x1c4_;
  uint x1c8_invalidControllers;
  uint x1cc_;
};

#endif // _CDOLPHINCONTROLLER
