#ifndef _CPLAYERSTATE_HPP
#define _CPLAYERSTATE_HPP

#include "Kyoto/IObjectStore.hpp"
#include "MetroidPrime/CHealthInfo.hpp"
#include "MetroidPrime/Player/CStaticInterference.hpp"
#include "rstl/pair.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/vector.hpp"
#include "types.h"

class CStateManager;

class CPlayerState {
public:
  enum EItemType {
    kIT_Invalid = -1,
    kIT_PowerBeam = 0,
    kIT_IceBeam = 1,
    kIT_WaveBeam = 2,
    kIT_PlasmaBeam = 3,
    kIT_Missiles = 4,
    kIT_ScanVisor = 5,
    kIT_MorphBallBombs = 6,
    kIT_PowerBombs = 7,
    kIT_Flamethrower = 8,
    kIT_ThermalVisor = 9,
    kIT_ChargeBeam = 10,
    kIT_SuperMissile = 11,
    kIT_GrappleBeam = 12,
    kIT_XRayVisor = 13,
    kIT_IceSpreader = 14,
    kIT_SpaceJumpBoots = 15,
    kIT_MorphBall = 16,
    kIT_CombatVisor = 17,
    kIT_BoostBall = 18,
    kIT_SpiderBall = 19,
    kIT_PowerSuit = 20,
    kIT_GravitySuit = 21,
    kIT_VariaSuit = 22,
    kIT_PhazonSuit = 23,
    kIT_EnergyTanks = 24,
    kIT_UnknownItem1 = 25,
    kIT_HealthRefill = 26,
    kIT_UnknownItem2 = 27,
    kIT_Wavebuster = 28,
    kIT_Truth = 29,
    kIT_Strength = 30,
    kIT_Elder = 31,
    kIT_Wild = 32,
    kIT_Lifegiver = 33,
    kIT_Warrior = 34,
    kIT_Chozo = 35,
    kIT_Nature = 36,
    kIT_Sun = 37,
    kIT_World = 38,
    kIT_Spirit = 39,
    kIT_Newborn = 40,

    /* This must remain at the end of the list */
    kIT_Max
  };

  enum EPlayerVisor {
    kPV_Combat,
    kPV_XRay,
    kPV_Scan,
    kPV_Thermal,
  };
  enum EPlayerSuit {
    kPS_Invalid = -1,
    kPS_Power,
    kPS_Gravity,
    kPS_Varia,
    kPS_Phazon,
    kPS_FusionPower,
    kPS_FusionGravity,
    kPS_FusionVaria,
    kPS_FusionPhazon,
  };
  enum EBeamId {
    kBI_Invalid = -1,
    kBI_Power,
    kBI_Ice,
    kBI_Wave,
    kBI_Plasma,
    kBI_Phazon,
    kBI_Phazon2 = 27,
  };

  CPlayerState();
  explicit CPlayerState(CInputStream& stream);
  void PutTo(COutputStream& stream);

  u32 GetMissileCostForAltAttack() const;
  float GetComboFireAmmoPeriod() const;
  static float GetMissileComboChargeFactor();
  u32 CalculateItemCollectionRate() const;
  u32 GetTotalPickupCount() const;

  void SetIsFusionEnabled(bool v);
  bool GetIsFusionEnabled() const;

  EPlayerSuit GetCurrentSuit();
  EPlayerSuit GetCurrentSuitRaw() const { return x20_currentSuit; }
  EBeamId GetCurrentBeam() const { return x8_currentBeam; }
  void SetCurrentBeam(EBeamId beam) { x8_currentBeam = beam; }
  bool CanVisorSeeFog(const CStateManager& stateMgr) const;
  EPlayerVisor GetCurrentVisor() const { return x14_currentVisor; }
  EPlayerVisor GetTransitioningVisor() const { return x18_transitioningVisor; }
  EPlayerVisor GetActiveVisor(const CStateManager& mgr) const;

  void UpdateStaticInterference(CStateManager& stateMgr, const float& dt);
  void IncreaseScanTime(u32 time, float val);
  void SetScanTime(CAssetId res, float time);
  float GetScanTime(CAssetId time) const;
  bool GetIsVisorTransitioning() const;
  float GetVisorTransitionFactor() const;
  void UpdateVisorTransition(float dt);
  void StartTransitionToVisor(EPlayerVisor visor);
  void ResetVisor();

  bool ItemEnabled(EItemType type) const;
  void DisableItem(EItemType type);
  void EnableItem(EItemType type);
  bool HasPowerUp(EItemType type) const;
  u32 GetPowerUp(EItemType type);
  u32 GetItemCapacity(EItemType type) const;
  u32 GetItemAmount(EItemType type) const;
  void DecrPickUp(EItemType type, int amount);
  void IncrPickUp(EItemType type, int amount);
  void ResetAndIncrPickUp(EItemType type, int amount);
  static float GetEnergyTankCapacity();
  static float GetBaseHealthCapacity();
  float CalculateHealth();
  void InitializePowerUp(CPlayerState::EItemType type, int capacity);
  void ReInitializePowerUp(CPlayerState::EItemType type, int capacity);

  void InitializeScanTimes();

  static uint GetBitCount(uint);

  CStaticInterference& GetStaticInterference() { return x188_staticIntf; }

  const rstl::vector< rstl::pair< CAssetId, float > >& GetScanTimes() const {
    return x170_scanTimes;
  }

  CHealthInfo& GetHealthInfo() { return xc_health; }

  const CHealthInfo& GetHealthInfo() const { return xc_health; }


private:
  struct CPowerUp {
    int x0_amount;
    int x4_capacity;
    CPowerUp() : x0_amount(0), x4_capacity(0) {}
    CPowerUp(int amount, int capacity);
  };

  bool x0_24_alive : 1;
  bool x0_25_firingComboBeam : 1;
  bool x0_26_fusion : 1;
  u32 x4_enabledItems;
  EBeamId x8_currentBeam;
  CHealthInfo xc_health;
  EPlayerVisor x14_currentVisor;
  EPlayerVisor x18_transitioningVisor;
  float x1c_visorTransitionFactor;
  EPlayerSuit x20_currentSuit;
  rstl::reserved_vector< CPowerUp, 41 > x24_powerups;
  rstl::vector< rstl::pair< CAssetId, float > > x170_scanTimes;
  rstl::pair< u32, u32 > x180_scanCompletionRate;
  CStaticInterference x188_staticIntf;
};

#endif
