#include "Weapons/CWeaponDescription.hpp"
#include "Kyoto/Alloc/CMemory.hpp"

CWeaponDescription::CWeaponDescription()
: x10_VMD2(false)
, x28_APSO(false)
, x2a_AP11(false)
, x2b_AP21(false)
, x2c_AS11(false)
, x2d_AS12(false)
, x2e_AS13(false)
, xa4_EWTR(true)
, xa5_LWTR(true)
, xa6_SWTR(true)
, xa8_PJFX(-1) {}

CWeaponDescription::~CWeaponDescription() {}
