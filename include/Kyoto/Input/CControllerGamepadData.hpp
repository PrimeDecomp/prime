#ifndef _CCONTROLLERGAMEPADDATA
#define _CCONTROLLERGAMEPADDATA

#include "Kyoto/Input/CControllerAxis.hpp"
#include "Kyoto/Input/CControllerButton.hpp"
#include "Kyoto/Input/InputTypes.hpp"

class CControllerGamepadData {
public:
  void SetDeviceIsPresent(bool present) { x0_present = present; }
  bool DeviceIsPresent() const { return x0_present; }

  const CControllerAxis& GetAxis(EJoyAxis axis) const { return x4_axes[axis]; }
  CControllerAxis& GetAxis(EJoyAxis axis) { return x4_axes[axis]; }

  const CControllerButton& GetButton(EButton button) const { return x34_buttons[button]; }
  CControllerButton& GetButton(EButton button) { return x34_buttons[button]; }

  const CControllerAxis& GetAnalogButton(EAnalogButton button) const {
    return x24_triggers[button];
  }
  CControllerAxis& GetAnalogButton(EAnalogButton button) { return x24_triggers[button]; }

private:
  bool x0_present;
  CControllerAxis x4_axes[4];
  CControllerAxis x24_triggers[2];
  CControllerButton x34_buttons[12];
};

#endif // _CCONTROLLERGAMEPADDATA
