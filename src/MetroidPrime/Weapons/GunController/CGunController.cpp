#include "MetroidPrime/Weapons/GunController/CGunController.hpp"

CGunController::CGunController(CModelData& modelData)
: x0_modelData(modelData)
, x50_gunState(kGS_Inactive)
, x54_curAnimId(-1)
, x58_24_animDone(true)
, x58_25_enteredComboFire(false) {}

void CGunController::EnterFreeLook(CStateManager&, int, int) {}

void CGunController::EnterComboFire(CStateManager&, int) {}

void CGunController::EnterFidget(CStateManager&, int, int, int) {}

void CGunController::EnterStruck(CStateManager&, float, bool, bool) {}

void CGunController::LoadFidgetAnimAsync(CStateManager&, int, int, int) {}

int CGunController::Update(float, CStateManager&) { return 0; }

void CGunController::EnterIdle(CStateManager&) {}

void CGunController::ReturnToDefault(CStateManager&, float) {}

void CGunController::Reset() {}

void CGunController::ReturnToBasePosition(CStateManager&) {}
