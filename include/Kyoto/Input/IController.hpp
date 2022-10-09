#ifndef _ICONTROLLER
#define _ICONTROLLER

#include <types.h>

#include "Kyoto/Input/CControllerGamepadData.hpp"
#include "Kyoto/Input/InputTypes.hpp"

class COsContext;
class IController {
protected:
  static const float kAbsoluteMinimum;
  static const float kAbsoluteMaximum;
  static const float kRelativeMinimum;
  static const float kRelativeMaximum;

public:
  IController();
  virtual ~IController();
  virtual void Poll() = 0;
  virtual uint GetDeviceCount() const = 0;
  virtual CControllerGamepadData& GetGamepadData(int controller) = 0;
  virtual uint GetControllerType(int) const = 0;
  virtual void SetMotorState(EIOPort port, EMotorState state) = 0;

  static IController* Create(const COsContext& ctx);
};

#endif // _ICONTROLLER
