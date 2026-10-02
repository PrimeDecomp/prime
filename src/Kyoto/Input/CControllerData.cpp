#include "Kyoto/Input/CControllerData.hpp"

CControllerData::CControllerData()
: x0_connected(false)
, x1_forceInputEvent(false)
, x4_motorState(kMS_Stop)
, x8_pointerState(kPS_Tracking)
, xc_pointerValidFrameCount(0)
, x10_pointerInvalidFrameCount(0)
, x14_pointerPosition(CVector2f::Zero())
, x1c_pointerDistance(0.f)
, x20_motionMask(0)
, x24_swingMask(0)
, x28_axes(16)
, xac_continuousAngleAxes(4)
, xd0_reservedAxes(2)
, xe4_buttons(64)
, x1a8_motionButtons(16)
, x1dc_swingButtons(12)
, x204_wiimoteSwingMask(0)
, x208_nunchukSwingMask(0) {}

void CControllerData::SetSwingMask(int device, uint mask) {
  switch (device) {
  case 0:
    x204_wiimoteSwingMask = mask;
    break;
  case 1:
    x208_nunchukSwingMask = mask;
    break;
  }
}
