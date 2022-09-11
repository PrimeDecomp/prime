#ifndef __CDOLPHINCONTROLLER_HPP__
#define __CDOLPHINCONTROLLER_HPP__

#include "Kyoto/Input/IController.hpp"

class CDolphinController : public IController {
public:
    CDolphinController();
    void Poll();
    uint GetDeviceCount() const;
    CControllerGamepadData& GetGamepadData(int controller);
    u32 GetControllerType(int) const;
    void SetMotorState(EIOPort port, EMotorState state);
    bool Initialize();
private:
  PADStatus x4_status[4];
  CControllerGamepadData x34_gamepadStates[4];
  EMotorState x194_motorStates[4];
  u32 x1a4_controllerTypes[4];
  u32 x1b4_controllerTypePollTime[4];
  u32 x1c4_;
  u32 x1c8_invalidControllers;
  u32 x1cc_;
};

#endif // __CDOLPHINCONTROLLER_HPP__
