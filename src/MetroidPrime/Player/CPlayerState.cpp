#include "MetroidPrime/Player/CPlayerState.hpp"

#include "Kyoto/Math/CMath.hpp"
#include "rstl/math.hpp"

#include <math.h>

static int kPowerUpMaxValues[] = {
    1, 1, 1, 1,  250, 1, 1, 8, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 14, 1,   0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
};

static const int kMissileCosts[] = {
    5, 10, 10, 10, 1,
};

static const float kComboAmmoPeriods[] = {
    0.2f, 0.1f, 0.2f, 0.2f, 1.f,
};

u32 CPlayerState::GetMissileCostForAltAttack() const {
  return kMissileCosts[size_t(x8_currentBeam)];
}

float CPlayerState::GetComboFireAmmoPeriod() const {
  return kComboAmmoPeriods[size_t(x8_currentBeam)];
}

float CPlayerState::GetMissileComboChargeFactor() { return 1.8f; }

u32 CPlayerState::CalculateItemCollectionRate() {
  u32 total = GetItemCapacity(kIT_PowerBombs);

  if (total >= 4)
    total -= 3;
  total += GetItemCapacity(kIT_WaveBeam);
  total += GetItemCapacity(kIT_IceBeam);
  total += GetItemCapacity(kIT_PlasmaBeam);
  total += GetItemCapacity(kIT_Missiles) / 5;
  total += GetItemCapacity(kIT_MorphBallBombs);
  total += GetItemCapacity(kIT_Flamethrower);
  total += GetItemCapacity(kIT_ThermalVisor);
  total += GetItemCapacity(kIT_ChargeBeam);
  total += GetItemCapacity(kIT_SuperMissile);
  total += GetItemCapacity(kIT_GrappleBeam);
  total += GetItemCapacity(kIT_XRayVisor);
  total += GetItemCapacity(kIT_IceSpreader);
  total += GetItemCapacity(kIT_SpaceJumpBoots);
  total += GetItemCapacity(kIT_MorphBall);
  total += GetItemCapacity(kIT_BoostBall);
  total += GetItemCapacity(kIT_SpiderBall);
  total += GetItemCapacity(kIT_GravitySuit);
  total += GetItemCapacity(kIT_VariaSuit);
  total += GetItemCapacity(kIT_EnergyTanks);
  total += GetItemCapacity(kIT_Truth);
  total += GetItemCapacity(kIT_Strength);
  total += GetItemCapacity(kIT_Elder);
  total += GetItemCapacity(kIT_Wild);
  total += GetItemCapacity(kIT_Lifegiver);
  total += GetItemCapacity(kIT_Warrior);
  total += GetItemCapacity(kIT_Chozo);
  total += GetItemCapacity(kIT_Nature);
  total += GetItemCapacity(kIT_Sun);
  total += GetItemCapacity(kIT_World);
  total += GetItemCapacity(kIT_Spirit);
  total += GetItemCapacity(kIT_Newborn);
  return total + GetItemCapacity(kIT_Wavebuster);
}

CHealthInfo& CPlayerState::GetHealthInfo() { return xc_health; }

const CHealthInfo& CPlayerState::GetHealthInfo() const { return xc_health; }

u32 CPlayerState::GetTotalPickupCount() { return 99; }

void CPlayerState::SetIsFusionEnabled(bool val) { x0_26_fusion = val; }

bool CPlayerState::GetIsFusionEnabled() { return x0_26_fusion; }

CPlayerState::EPlayerSuit CPlayerState::GetCurrentSuit() {
  if (GetIsFusionEnabled())
    return kPS_FusionPower;

  return x20_currentSuit;
}

bool CPlayerState::CanVisorSeeFog(const CStateManager& stateMgr) const {
  EPlayerVisor activeVisor = GetActiveVisor(stateMgr);
  if (activeVisor == kPV_Combat || activeVisor == kPV_Scan)
    return true;
  return true;
}

CPlayerState::EPlayerVisor CPlayerState::GetActiveVisor(const CStateManager& stateMgr) const {
  void* cam = NULL;
  // const CFirstPersonCamera* cam =
  // TCastToConstPtr<CFirstPersonCamera>(stateMgr.GetCameraManager()->GetCurrentCamera(stateMgr)).GetPtr();
  return (cam ? x14_currentVisor : kPV_Combat);
}

void CPlayerState::UpdateStaticInterference(CStateManager& stateMgr, const float& dt) {
  // TODO
  // x188_staticIntf.Update(stateMgr, dt);
}

void CPlayerState::SetScanTime(CAssetId res, float time) {
  // TODO
  rstl::vector< rstl::pair< CAssetId, float > >::iterator it = x170_scanTimes.end();
  // auto it = std::find_if(x170_scanTimes.begin(), x170_scanTimes.end(),
  //                        [&](const auto& test) -> bool { return test.first == res; });

  if (it != x170_scanTimes.end())
    it->second = time;
}

float CPlayerState::GetScanTime(CAssetId res) const {
  // TODO
  rstl::vector< rstl::pair< CAssetId, float > >::const_iterator it = x170_scanTimes.end();
  // const auto it = std::find_if(x170_scanTimes.cbegin(), x170_scanTimes.cend(),
  //                              [&](const auto& test) -> bool { return test.first == res; });

  if (it == x170_scanTimes.end())
    return 0.f;

  return it->second;
}

bool CPlayerState::GetIsVisorTransitioning() const {
  return x14_currentVisor != x18_transitioningVisor || x1c_visorTransitionFactor < 0.2f;
}

float CPlayerState::GetVisorTransitionFactor() const { return x1c_visorTransitionFactor / 0.2f; }

void CPlayerState::UpdateVisorTransition(float dt) {
  if (!GetIsVisorTransitioning())
    return;

  if (x14_currentVisor == x18_transitioningVisor) {
    x1c_visorTransitionFactor += dt;
    if (x1c_visorTransitionFactor > 0.2f)
      x1c_visorTransitionFactor = 0.2f;
  } else {
    x1c_visorTransitionFactor -= dt;
    if (x1c_visorTransitionFactor < 0.f) {
      x14_currentVisor = x18_transitioningVisor;
      x1c_visorTransitionFactor = fabs(x1c_visorTransitionFactor);
      if (x1c_visorTransitionFactor > 0.19999f)
        x1c_visorTransitionFactor = 0.19999f;
    }
  }
}

void CPlayerState::StartTransitionToVisor(CPlayerState::EPlayerVisor visor) {
  if (x18_transitioningVisor == visor)
    return;
  x18_transitioningVisor = visor;
}

void CPlayerState::ResetVisor() {
  x18_transitioningVisor = x14_currentVisor = kPV_Combat;
  x1c_visorTransitionFactor = 0.0f;
}

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

u32 CPlayerState::GetPowerUp(CPlayerState::EItemType type) {
  if (type < 0 || kIT_Max - 1 < type) {
    return 0;
  }
  return x24_powerups[u32(type)].x4_capacity;
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

void CPlayerState::DecrPickUp(CPlayerState::EItemType type, int amount) {
  if (type >= kIT_Max)
    return;

  if ((type == kIT_Missiles || type >= kIT_PowerBombs) && type < kIT_ThermalVisor)
    x24_powerups[u32(type)].x0_amount -= amount;
}

void CPlayerState::IncrPickUp(EItemType type, int amount) {
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
    pup.x0_amount = rstl::min_val(pup.x0_amount + amount, pup.x4_capacity);

    if (type == kIT_EnergyTanks)
      IncrPickUp(kIT_HealthRefill, 9999);
    break;
  }
  case kIT_HealthRefill:
    xc_health.SetHP(rstl::min_val(amount + xc_health.GetHP(), CalculateHealth()));
    break;
  default:
    break;
  }
}

void CPlayerState::ResetAndIncrPickUp(CPlayerState::EItemType type, int amount) {
  x24_powerups[u32(type)].x0_amount = 0;
  IncrPickUp(type, amount);
}

float CPlayerState::GetEnergyTankCapacity() { return 100.f; }
float CPlayerState::GetBaseHealthCapacity() { return 99.f; }

float CPlayerState::CalculateHealth() {
  return (GetEnergyTankCapacity() * x24_powerups[u32(kIT_EnergyTanks)].x0_amount) +
         GetBaseHealthCapacity();
}

void CPlayerState::InitializePowerUp(CPlayerState::EItemType type, int capacity) {
  if (type >= kIT_Max)
    return;

  CPowerUp& pup = x24_powerups[u32(type)];
  pup.x4_capacity = CMath::Clamp(0, pup.x4_capacity + capacity, kPowerUpMaxValues[u32(type)]);
  pup.x0_amount = rstl::min_val(pup.x0_amount, pup.x4_capacity);
  if (type >= kIT_PowerSuit && type <= kIT_PhazonSuit) {
    if (HasPowerUp(kIT_PhazonSuit))
      x20_currentSuit = kPS_Phazon;
    else if (HasPowerUp(kIT_GravitySuit))
      x20_currentSuit = kPS_Gravity;
    else if (HasPowerUp(kIT_VariaSuit))
      x20_currentSuit = kPS_Varia;
    else
      x20_currentSuit = kPS_Power;
  }
}

void CPlayerState::ReInitializePowerUp(CPlayerState::EItemType type, int capacity) {
  x24_powerups[u32(type)].x4_capacity = 0;
  InitializePowerUp(type, capacity);
}

void CPlayerState::InitializeScanTimes() {
  if (x170_scanTimes.size())
    return;

  // TODO
  // const auto& scanStates = g_MemoryCardSys->GetScanStates();
  // x170_scanTimes.reserve(scanStates.size());
  // for (const auto& state : scanStates)
  //   x170_scanTimes.emplace_back(state.first, 0.f);
}

CStaticInterference& CPlayerState::GetStaticInterference() { return x188_staticIntf; }

const rstl::vector< rstl::pair< CAssetId, float > >& CPlayerState::GetScanTimes() const {
  return x170_scanTimes;
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

CPlayerState::CPlayerState(CInputStream& stream)
: x4_enabledItems(0)
, x8_currentBeam(kBI_Power)
, xc_health(99.f, 50.f)
, x14_currentVisor(kPV_Combat)
, x18_transitioningVisor(kPV_Combat)
, x1c_visorTransitionFactor(0.2f)
, x20_currentSuit(kPS_Power)
// , x188_staticIntf({5}) TODO
{
  // TODO
}

void CPlayerState::PutTo(COutputStream& stream)
{
  /*
  stream.WriteBits(x4_enabledItems, 32);

  const float realHP = xc_health.GetHP();
  u32 integralHP;
  std::memcpy(&integralHP, &realHP, sizeof(u32));

  stream.WriteBits(integralHP, 32);
  stream.WriteBits(u32(x8_currentBeam), COutputStream::GetBitCount(5));
  stream.WriteBits(u32(x20_currentSuit), COutputStream::GetBitCount(4));
  for (size_t i = 0; i < x24_powerups.size(); ++i) {
    const CPowerUp& pup = x24_powerups[i];
    stream.WriteBits(pup.x0_amount, COutputStream::GetBitCount(PowerUpMaxValues[i]));
    stream.WriteBits(pup.x4_capacity, COutputStream::GetBitCount(PowerUpMaxValues[i]));
  }

  for (const auto& scanTime : x170_scanTimes) {
    if (scanTime.second >= 1.f)
      stream.WriteBits(true, 1);
    else
      stream.WriteBits(false, 1);
  }

  stream.WriteBits(x180_scanCompletionRate.first, COutputStream::GetBitCount(0x100));
  stream.WriteBits(x180_scanCompletionRate.second, COutputStream::GetBitCount(0x100));
  */
}