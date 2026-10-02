#ifndef _CCONTROLLERDATA
#define _CCONTROLLERDATA

#include "types.h"

#include "Kyoto/Input/CControllerAxis.hpp"
#include "Kyoto/Input/CControllerButton.hpp"
#include "Kyoto/Input/InputTypes.hpp"
#include "Kyoto/Math/CVector2f.hpp"

#include "rstl/reserved_vector.hpp"

// Inferred name for the controller snapshot shared by the Wii input interface.
class CControllerData {
public:
  enum EPointerState {
    kPS_Tracking,
    kPS_RecentlyLost,
    kPS_Lost,
    kPS_Reacquiring,
  };

  CControllerData();
  void SetSwingMask(int device, uint mask);

  bool DeviceIsPresent() const { return x0_connected; }

  bool GetForceInputEvent() const { return x1_forceInputEvent; }

  EPointerState GetPointerState() const { return static_cast< EPointerState >(x8_pointerState); }

  uint GetPointerValidFrameCount() const { return xc_pointerValidFrameCount; }

  uint GetPointerInvalidFrameCount() const { return x10_pointerInvalidFrameCount; }

  const CVector2f& GetPointerPosition() const { return x14_pointerPosition; }

  const CControllerAxis& GetAxis(int axis) const { return x28_axes[axis]; }

  const CControllerAxis& GetContinuousAngleAxis(int axis) const {
    return xac_continuousAngleAxes[axis];
  }

  const CControllerButton& GetButton(int button) const { return xe4_buttons[button]; }

  const CControllerButton& GetMotionButton(int button) const { return x1a8_motionButtons[button]; }

  const CControllerButton& GetSwingButton(int button) const { return x1dc_swingButtons[button]; }

private:
  friend class CWiiInput;
  friend class CFinalInput;

  bool x0_connected;
  bool x1_forceInputEvent;
  EMotorState x4_motorState;
  short x8_pointerState;
  uint xc_pointerValidFrameCount;
  uint x10_pointerInvalidFrameCount;
  CVector2f x14_pointerPosition;
  float x1c_pointerDistance;
  uint x20_motionMask;
  uint x24_swingMask;
  rstl::reserved_vector< CControllerAxis, 16 > x28_axes;
  rstl::reserved_vector< CControllerAxis, 4 > xac_continuousAngleAxes;
  rstl::reserved_vector< CControllerAxis, 2 > xd0_reservedAxes;
  rstl::reserved_vector< CControllerButton, 64 > xe4_buttons;
  rstl::reserved_vector< CControllerButton, 16 > x1a8_motionButtons;
  rstl::reserved_vector< CControllerButton, 12 > x1dc_swingButtons;
  uint x204_wiimoteSwingMask;
  uint x208_nunchukSwingMask;
};
CHECK_SIZEOF(CControllerData, 0x20c)

#endif // _CCONTROLLERDATA
