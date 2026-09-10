#include "MetroidPrime/Weapons/CAuxWeapon.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/CSimplePool.hpp"
#include "Kyoto/Particles/CElementGen.hpp"
#include "MetroidPrime/CRumbleManager.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CCameraShakeData.hpp"
#include "MetroidPrime/SFX/Weapons.h"
#include "MetroidPrime/Tweaks/CTweakPlayerGun.hpp"
#include "MetroidPrime/Weapons/CEnergyProjectile.hpp"
#include "MetroidPrime/Weapons/CNewFlameThrower.hpp"
#include "MetroidPrime/Weapons/CWaveBuster.hpp"
#include "MetroidPrime/Weapons/CWeaponAssetInfo.hpp"

const ushort CAuxWeapon::skSoundId[5] = {SFXsam_a_co1fire_00, SFXsam_a_icecofir_00,
                                         SFXsam_a_wavcofir_lp_00, SFXsam_a_placofir_lp_00,
                                         SFXsam_a_co1fire_00};

CAuxWeapon::CAuxWeapon(TUniqueId playerId)
: x0_missile(gpSimplePool->GetObj("Missile"))
, xc_flameMuzzle(gpSimplePool->GetObj("FlameMuzzle"))
, x18_busterMuzzle(gpSimplePool->GetObj("BusterMuzzle"))
, x24_muzzleFxGen(nullptr)
, x68_ammoConsumeTimer(0.f)
, x6c_playerId(playerId)
, x6e_flameThrowerId(kInvalidUniqueId)
, x70_waveBusterId(kInvalidUniqueId)
, x74_firingBeamId(CPlayerState::kBI_Invalid)
, x78_loadBeamId(CPlayerState::kBI_Power)
, x80_24_isLoaded(false) {
  InitComboData();
}

void CAuxWeapon::Fire(float dt, bool underwater, int currentBeam,
                      CPlayerState::EChargeStage chargeState, const CTransform4f& xf,
                      CStateManager& mgr, EWeaponType type, TUniqueId homingId) {
  if (!x80_24_isLoaded) {
    return;
  }

  const bool charged = chargeState != CPlayerState::kCS_Normal;
  uint attribs = charged ? CGameProjectile::GetBeamAttribType(type) | CWeapon::kPA_ComboShot : 0;
  if (!charged) {
    LaunchMissile(dt, underwater, charged, currentBeam, attribs, xf, homingId, mgr);
  } else {
    switch (currentBeam) {
    case CPlayerState::kBI_Power:
    case CPlayerState::kBI_Ice:
      LaunchMissile(dt, underwater, charged, currentBeam, attribs, xf, homingId, mgr);
      break;
    case CPlayerState::kBI_Wave:
      CreateWaveBusterBeam(attribs, homingId, xf, mgr);
      break;
    case CPlayerState::kBI_Plasma:
      CreateFlameThrower(xf, mgr, dt);
      break;
    }
  }
}

void CAuxWeapon::SetNewTarget(TUniqueId target, CStateManager& mgr) {
  switch (x74_firingBeamId) {
  case CPlayerState::kBI_Wave:
    if (CWaveBuster* beam = static_cast< CWaveBuster* >(mgr.ObjectById(x70_waveBusterId))) {
      beam->SetNewTarget(target, mgr);
    }
    break;
  }
}

TUniqueId CAuxWeapon::HasTarget(const CStateManager& mgr) const {
  switch (x74_firingBeamId) {
  case CPlayerState::kBI_Wave:
    if (const CWaveBuster* beam =
            static_cast< const CWaveBuster* >(mgr.GetObjectById(x70_waveBusterId))) {
      return beam->GetHomingTargetId();
    }
    break;
  }
  return kInvalidUniqueId;
}

void CAuxWeapon::RenderMuzzleFx() const {
  switch (x74_firingBeamId) {
  case CPlayerState::kBI_Wave:
  case CPlayerState::kBI_Plasma:
    x24_muzzleFxGen->Render();
    break;
  }
}

const bool CAuxWeapon::UpdateComboFx(float dt, const CVector3f& scale, const CVector3f& firePos,
                                     const CTransform4f& targetXf, CStateManager& mgr) {
  if (!x80_24_isLoaded || x74_firingBeamId == CPlayerState::kBI_Invalid) {
    return false;
  }

  bool firing = false;
  CPlayerState& playerState = *mgr.PlayerState();
  if (!CSfxManager::IsPlaying(x7c_comboSfx) && x7c_comboSfx) {
    FreeComboVoiceId();
  }

  switch (x74_firingBeamId) {
  case CPlayerState::kBI_Wave:
  case CPlayerState::kBI_Plasma: {
    bool firingFx = false;
    if (x74_firingBeamId == CPlayerState::kBI_Wave) {
      CWaveBuster* beam = static_cast< CWaveBuster* >(mgr.ObjectById(x70_waveBusterId));
      if (beam && beam->IsFiring()) {
        beam->UpdateFx(targetXf, dt, mgr);
        firing = true;
        firingFx = true;
      } else {
        DeleteWaveBusterBeam(mgr);
        playerState.SetFiringComboBeam(false);
      }
    } else {
      CNewFlameThrower* flame =
          static_cast< CNewFlameThrower* >(mgr.ObjectById(x6e_flameThrowerId));
      bool needsDelete = true;
      if (flame) {
        firingFx = flame->CanRenderAuxEffects();
        if (flame->GetActive()) {
          flame->UpdateFx(targetXf, dt, mgr);
          firing = flame->IsFiring();
        }
        if (x6e_flameThrowerId != kInvalidUniqueId) {
          needsDelete = flame->AreEffectsFinished();
        }
      }
      if (needsDelete) {
        DeleteFlameThrower(mgr);
        playerState.SetFiringComboBeam(false);
      }
    }

    if (firingFx) {
      x68_ammoConsumeTimer += dt;
      if (playerState.GetItemAmount(CPlayerState::kIT_Missiles) > 0 &&
          x68_ammoConsumeTimer >= playerState.GetComboFireAmmoPeriod()) {
        playerState.DecrPickUp(CPlayerState::kIT_Missiles, 1);
        x68_ammoConsumeTimer = 0.f;
      }
    }
    if (playerState.GetItemAmount(CPlayerState::kIT_Missiles) == 0) {
      StopComboFx(mgr, false);
    }

    x24_muzzleFxGen->SetGlobalTranslation(firePos);
    x24_muzzleFxGen->SetGlobalScale(scale);
    x24_muzzleFxGen->SetParticleEmission(firingFx);
    x24_muzzleFxGen->Update(dt);
    break;
  }
  }
  return firing;
}

void CAuxWeapon::StopComboFx(CStateManager& mgr, bool deactivate) {
  switch (x74_firingBeamId) {
  case CPlayerState::kBI_Wave:
    if (CWaveBuster* beam = static_cast< CWaveBuster* >(mgr.ObjectById(x70_waveBusterId))) {
      beam->ResetBeam(deactivate);
      DeleteWaveBusterBeam(mgr);
    }
    break;
  case CPlayerState::kBI_Plasma:
    if (CNewFlameThrower* flame =
            static_cast< CNewFlameThrower* >(mgr.ObjectById(x6e_flameThrowerId))) {
      mgr.PlayerState()->SetFiringComboBeam(false);
      if (flame->IsFiring()) {
        flame->Reset(mgr, deactivate);
        FreeComboVoiceId();
      } else if (flame->GetActive() && deactivate) {
        flame->Reset(mgr, deactivate);
      }
    }
    break;
  }

  if (deactivate) {
    x74_firingBeamId = CPlayerState::kBI_Invalid;
    x68_ammoConsumeTimer = 0.f;
  }
}

bool CAuxWeapon::IsComboFxActive(const CStateManager& mgr) const {
  switch (x74_firingBeamId) {
  case CPlayerState::kBI_Wave:
    if (const CWaveBuster* beam =
            static_cast< const CWaveBuster* >(mgr.GetObjectById(x70_waveBusterId))) {
      return beam->IsFiring();
    }
    break;
  case CPlayerState::kBI_Plasma:
    if (const CNewFlameThrower* flame =
            static_cast< const CNewFlameThrower* >(mgr.GetObjectById(x6e_flameThrowerId))) {
      return flame->IsFiring();
    }
    break;
  }
  return false;
}

void CAuxWeapon::InitComboData() {
  static const char* const skComboNames[] = {"SuperMissile", "IceCombo", "WaveBuster",
                                             "FlameThrower", "SuperMissile"};
  for (int i = 0; i < 5; ++i) {
    x28_combos.push_back(gpSimplePool->GetObj(skComboNames[i]));
  }
}

void CAuxWeapon::LaunchMissile(float dt, const bool underwater, bool charged, int currentBeam,
                               uint attribs, const CTransform4f& xf, TUniqueId target,
                               CStateManager& mgr) {
  const TToken< CWeaponDescription >& combo = x28_combos[currentBeam];
  const CDamageInfo& damage =
      charged ? gpTweakPlayerGun->GetComboDamage(currentBeam) : gpTweakPlayerGun->GetMissleDamage();
  const ushort sfx = charged ? skSoundId[currentBeam] : ushort(SFXsam_a_mislfire_00);
  CEntity* projectile = rs_new CEnergyProjectile(
      true, charged ? combo : static_cast< const TToken< CWeaponDescription >& >(x0_missile),
      charged ? kWT_Power : kWT_Missile, xf, kMT_Player, NWeaponTypes::get_shot_damage(damage, mgr),
      mgr.AllocateUniqueId(), kInvalidAreaId, x6c_playerId, target,
      attribs | CWeapon::kPA_ArmCannon, underwater, CVector3f(1.f, 1.f, 1.f),
      rstl::optional_object< TLockedToken< CGenDescription > >(),
      CSfxManager::kInternalInvalidSfxId, false);
  if (projectile) {
    mgr.AddObject(projectile);
    projectile->Think(dt, mgr);
  }

  if (charged) {
    static_cast< CEnergyProjectile* >(projectile)
        ->SetCameraShake(CCameraShakeData::HardVertShakeDistance(
            0.25f, 0.75f, 50.f, static_cast< CEnergyProjectile* >(projectile)->GetTranslation()));
    mgr.CameraManager()->AddCameraShaker(CCameraShakeData::skHardRecoil, false);
  } else {
    mgr.GetRumbleManager()->Rumble(mgr, kRFX_PlayerMissileFire, 0.5f, kRP_One);
  }
  x7c_comboSfx = NWeaponTypes::play_sfx(sfx, underwater, false, 0x4a);
}

void CAuxWeapon::CreateFlameThrower(const CTransform4f& xf, CStateManager& mgr, float dt) {
  DeleteFlameThrower(mgr);
  if (x6e_flameThrowerId != kInvalidUniqueId) {
    return;
  }

  const CWeaponAssetInfo resources(NWeaponTypes::get_asset_id_from_name("NFTMainFire"),
                                   NWeaponTypes::get_asset_id_from_name("NFTMainSmoke"),
                                   NWeaponTypes::get_asset_id_from_name("NFTSwooshCenter"),
                                   NWeaponTypes::get_asset_id_from_name("NFTSwooshFire"),
                                   NWeaponTypes::get_asset_id_from_name("NFTSecondarySmoke"),
                                   NWeaponTypes::get_asset_id_from_name("NFTSecondaryFire"),
                                   NWeaponTypes::get_asset_id_from_name("NFTSecondarySparks"));
  x6e_flameThrowerId = mgr.AllocateUniqueId();
  CNewFlameThrower* flame = rs_new CNewFlameThrower(
      x28_combos[3], rstl::string_l("Player_FlameThrower"), kWT_Plasma, resources, xf, kMT_Player,
      NWeaponTypes::get_shot_damage(gpTweakPlayerGun->GetComboDamage(3), mgr), x6e_flameThrowerId,
      kInvalidAreaId, x6c_playerId, CWeapon::kPA_None);
  mgr.AddObject(*flame);
  flame->Think(dt, mgr);
  flame->Fire(xf, mgr, false);
  x24_muzzleFxGen = rs_new CElementGen(xc_flameMuzzle);
  x7c_comboSfx = NWeaponTypes::play_sfx(SFXsam_a_placofir_lp_00, false, true, 0x4a);
  mgr.CameraManager()->AddCameraShaker(CCameraShakeData::skHardRecoil, false);
  mgr.PlayerState()->SetFiringComboBeam(true);
  x74_firingBeamId = CPlayerState::kBI_Plasma;
}

void CAuxWeapon::CreateWaveBusterBeam(uint attribs, TUniqueId target, const CTransform4f& xf,
                                      CStateManager& mgr) {
  DeleteWaveBusterBeam(mgr);
  if (x70_waveBusterId != kInvalidUniqueId) {
    return;
  }

  x70_waveBusterId = mgr.AllocateUniqueId();
  CWaveBuster* beam =
      rs_new CWaveBuster(x28_combos[2], kWT_Wave, xf, kMT_Player,
                         NWeaponTypes::get_shot_damage(gpTweakPlayerGun->GetComboDamage(2), mgr),
                         x70_waveBusterId, kInvalidAreaId, x6c_playerId, target, attribs);
  mgr.AddObject(*beam);
  x24_muzzleFxGen = rs_new CElementGen(x18_busterMuzzle);
  x7c_comboSfx = NWeaponTypes::play_sfx(SFXsam_a_wavcofir_lp_00, false, true, 0x4a);
  mgr.CameraManager()->AddCameraShaker(CCameraShakeData::skSoftRecoil, false);
  mgr.PlayerState()->SetFiringComboBeam(true);
  x74_firingBeamId = CPlayerState::kBI_Wave;
}

void CAuxWeapon::DeleteFlameThrower(CStateManager& mgr) {
  FreeComboVoiceId();
  if (x6e_flameThrowerId != kInvalidUniqueId) {
    mgr.DeleteObjectRequest(x6e_flameThrowerId);
    x6e_flameThrowerId = kInvalidUniqueId;
    x74_firingBeamId = CPlayerState::kBI_Invalid;
    CPlayerState& playerState = *mgr.PlayerState();
    if (playerState.IsFiringComboBeam()) {
      playerState.SetFiringComboBeam(false);
    }
  }
}

void CAuxWeapon::DeleteWaveBusterBeam(CStateManager& mgr) {
  FreeComboVoiceId();
  if (x70_waveBusterId != kInvalidUniqueId) {
    mgr.DeleteObjectRequest(x70_waveBusterId);
    x70_waveBusterId = kInvalidUniqueId;
    x74_firingBeamId = CPlayerState::kBI_Invalid;
    CPlayerState& playerState = *mgr.PlayerState();
    if (playerState.IsFiringComboBeam()) {
      playerState.SetFiringComboBeam(false);
    }
  }
}

void CAuxWeapon::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId sender, CStateManager& mgr) {
  switch (msg) {
  case kSM_Registered:
    break;
  case kSM_Deleted:
    DeleteFlameThrower(mgr);
    DeleteWaveBusterBeam(mgr);
    break;
  default:
    break;
  }
}

void CAuxWeapon::FreeComboVoiceId() {
  CSfxManager::SfxStop(x7c_comboSfx);
  x7c_comboSfx.Clear();
}

void CAuxWeapon::Load(int curBeam, CStateManager& mgr) {
  x80_24_isLoaded = false;
  switch (x78_loadBeamId) {
  case CPlayerState::kBI_Wave:
    DeleteWaveBusterBeam(mgr);
    break;
  case CPlayerState::kBI_Plasma:
    DeleteFlameThrower(mgr);
    break;
  }
  x28_combos[x78_loadBeamId].Unlock();
  x28_combos[curBeam].Lock();
  x78_loadBeamId = curBeam;
  LoadIdle();
}

void CAuxWeapon::LoadIdle() { x80_24_isLoaded = x28_combos[x78_loadBeamId].TryCache(); }
