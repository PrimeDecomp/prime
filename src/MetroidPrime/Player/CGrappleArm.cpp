#include "MetroidPrime/Player/CGrappleArm.hpp"

#include "MetroidPrime/Weapons/GunController/CGunController.hpp"

void CGrappleArm::EnterStruck(CStateManager& mgr, float angle, bool bigStrike, bool notInFreeLook) {
  if (x3b2_29_suitLoading)
    return;

  if (x3b2_28_isGrappling) {
    DisconnectGrappleBeam();
    x3b2_28_isGrappling = false;
  }

  if (!x3b2_27_armMoving) {
    x3b2_24_active = true;
    x3b2_27_armMoving = true;
    x334_animState = kAS_GunControllerAnimation;
  }

  x328_gunController->EnterStruck(mgr, angle, bigStrike, notInFreeLook);
}
