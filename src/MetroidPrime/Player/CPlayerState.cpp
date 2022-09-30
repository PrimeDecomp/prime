#include "MetroidPrime/Player/CPlayerState.hpp"

#include "rstl/math.hpp"

bool CPlayerState::ItemEnabled(CPlayerState::EItemType type) const {
  if (HasPowerUp(type))
    return (x4_enabledItems & (1 << u32(type)));
  return false;
}

void CPlayerState::EnableItem(CPlayerState::EItemType type) {
  if (HasPowerUp(type))
    x4_enabledItems |= (1 << u32(type));
}

void CPlayerState::DisableItem(CPlayerState::EItemType type) {
  if (HasPowerUp(type))
    x4_enabledItems &= ~(1 << u32(type));
}

bool CPlayerState::HasPowerUp(CPlayerState::EItemType type) const {
  if (type < 0 || kIT_Max - 1 < type) {
    return false;
  }
  return x24_powerups[u32(type)].x4_capacity != 0;
}

u32 CPlayerState::GetItemCapacity(CPlayerState::EItemType type) const {
  if (type < 0 || kIT_Max - 1 < type) {
    return 0;
  }
  return x24_powerups[u32(type)].x4_capacity;
}

u32 CPlayerState::GetItemAmount(CPlayerState::EItemType type) const {
  if (type < 0 || kIT_Max - 1 < type) {
    return 0;
  }

  switch (type) {
  case kIT_SpaceJumpBoots:
  case kIT_PowerBombs:
  case kIT_Flamethrower:
  case kIT_EnergyTanks:
  case kIT_Missiles:
  case kIT_Truth:
  case kIT_Strength:
  case kIT_Elder:
  case kIT_Wild:
  case kIT_Lifegiver:
  case kIT_Warrior:
  case kIT_Chozo:
  case kIT_Nature:
  case kIT_Sun:
  case kIT_World:
  case kIT_Spirit:
  case kIT_Newborn:
    return x24_powerups[u32(type)].x0_amount;
  }

  return 0;
}

void CPlayerState::DecrPickup(CPlayerState::EItemType type, u32 amount) {
  if (type >= kIT_Max)
    return;

  if ((type == kIT_Missiles || type >= kIT_PowerBombs) && type < kIT_ThermalVisor)
    x24_powerups[u32(type)].x0_amount -= amount;
}

void CPlayerState::IncrPickup(EItemType type, u32 amount) {
  if (type >= kIT_Max)
    return;

  switch (type) {
  case kIT_Missiles:
  case kIT_PowerBombs:
  case kIT_ChargeBeam:
  case kIT_SpaceJumpBoots:
  case kIT_EnergyTanks:
  case kIT_Truth:
  case kIT_Strength:
  case kIT_Elder:
  case kIT_Wild:
  case kIT_Lifegiver:
  case kIT_Warrior:
  case kIT_Chozo:
  case kIT_Nature:
  case kIT_Sun:
  case kIT_World:
  case kIT_Spirit:
  case kIT_Newborn: {
    CPowerUp& pup = x24_powerups[u32(type)];
    pup.x0_amount = rstl::min_val(pup.x0_amount + u32(amount), pup.x4_capacity);

    if (type == kIT_EnergyTanks)
      IncrPickup(kIT_HealthRefill, 9999);
    break;
  }
  case kIT_HealthRefill:
    xc_health.SetHP(rstl::min_val(amount + xc_health.GetHP(), CalculateHealth()));
    break;
  default:
    break;
  }
}

void CPlayerState::ResetAndIncrPickUp(CPlayerState::EItemType type, u32 amount) {
  x24_powerups[u32(type)].x0_amount = 0;
  IncrPickup(type, amount);
}

float CPlayerState::CalculateHealth() {
  return (GetEnergyTankCapacity() * x24_powerups[u32(kIT_EnergyTanks)].x0_amount) + GetBaseHealthCapacity();
}

CPlayerState::CPlayerState()
: x4_enabledItems(0)
, x8_currentBeam(kBI_Power)
, xc_health(99.f, 50.f)
, x14_currentVisor(kPV_Combat)
, x18_transitioningVisor(kPV_Combat)
, x1c_visorTransitionFactor(0.2f)
, x20_currentSuit(kPS_Power)
// , x188_staticIntf({5}) TODO
{}