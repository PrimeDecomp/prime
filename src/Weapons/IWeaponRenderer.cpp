#include "Weapons/IWeaponRenderer.hpp"

static CDefaultWeaponRenderer sDefaultRenderer;
IWeaponRenderer* IWeaponRenderer::sWeaponRenderer = &sDefaultRenderer;
