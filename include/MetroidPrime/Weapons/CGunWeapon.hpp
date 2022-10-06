#pragma once

#include "types.h"

#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/Weapons/WeaponTypes.hpp"

#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"

#include "Collision/CMaterialList.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"

class CModelData;
class CGenDescription;
class CGunController;
class CAnimCharacterSet;
class CWeaponDescription;
class CElementGen;
class CRainSplashGenerator;

class CVelocityInfo {
public:
  const CVector3f& GetVelocity(int i) const { return x0_vel[i]; }
  bool GetTargetHoming(int i) const { return x1c_targetHoming[i]; }
  void Clear() {
    x0_vel.clear();
    x1c_targetHoming.clear();
    x24_trat.clear();
  }

private:
  rstl::reserved_vector< CVector3f, 2 > x0_vel;
  rstl::reserved_vector< bool, 2 > x1c_targetHoming;
  rstl::reserved_vector< float, 2 > x24_trat;
};

class CGunWeapon {
public:
  // TODO ctor
  virtual ~CGunWeapon();
  // TODO other virtual methods

  enum ESecondaryFxType {
    kSFT_None,
    kSFT_Charge,
    kSFT_ToCombo,
    kSFT_CancelCharge,
  };
  enum EFrozenFxType {
    kFFT_None,
    kFFT_Frozen,
    kFFT_Thawed,
  };

private:
  CVector3f x4_scale;
  rstl::optional_object< CModelData > x10_solidModelData;
  rstl::optional_object< CModelData > x60_holoModelData;
  rstl::optional_object< CModelData > xb0_suitArmModelData;
  rstl::single_ptr< CGunController > x100_gunController;
  TToken< CAnimCharacterSet > x104_gunCharacter;
  rstl::vector< CToken > x10c_anims;
  rstl::vector< CToken > x12c_deps;
  TToken< CAnimCharacterSet > x13c_armCharacter;
  rstl::reserved_vector< TCachedToken< CWeaponDescription >, 2 > x144_weapons;
  TCachedToken< CGenDescription > x160_xferEffect;
  rstl::reserved_vector< TCachedToken< CGenDescription >, 2 > x16c_muzzleEffects;
  rstl::reserved_vector< TCachedToken< CGenDescription >, 2 > x188_frozenEffects;
  rstl::reserved_vector< rstl::single_ptr< CElementGen >, 2 > x1a4_muzzleGenerators;
  rstl::single_ptr< CElementGen > x1b8_frozenGenerator;
  CRainSplashGenerator* x1bc_rainSplashGenerator;
  EWeaponType x1c0_weaponType;
  TUniqueId x1c4_playerId;
  EMaterialTypes x1c8_playerMaterial;
  ESecondaryFxType x1cc_enabledSecondaryEffect;
  CVelocityInfo x1d0_velInfo;
  CPlayerState::EBeamId x200_beamId;
  EFrozenFxType x204_frozenEffect;
  uint x208_muzzleEffectIdx;
  uint x20c_shaderIdx;
  // 0x1: load request, 0x2: muzzle fx, 0x4: projectile data, 0x8: anims, 0x10: everything else
  uint x210_loadFlags;
  CAssetId x214_ancsId;
  bool x218_24 : 1;
  bool x218_25_enableCharge : 1;
  bool x218_26_loaded : 1;
  // Initialize in selected beam's pose, rather than power beam's pose
  bool x218_27_subtypeBasePose : 1;
  bool x218_28_suitArmLocked : 1;
  bool x218_29_drawHologram : 1;

  static const int skShootAnim[32];
};
CHECK_SIZEOF(CGunWeapon, 0x218)