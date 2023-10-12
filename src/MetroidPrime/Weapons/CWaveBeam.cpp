#include "MetroidPrime/Weapons/CWaveBeam.hpp"

#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CAnimPlaybackParms.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/SFX/Weapons.h"
#include "MetroidPrime/Weapons/CEnergyProjectile.hpp"

#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Particles/CElectricDescription.hpp"
#include "Kyoto/Particles/CElementGen.hpp"
#include "Kyoto/Particles/CParticleElectric.hpp"

static float skShotAnglePitchSource = 120.f;
static const float skShotAnglePitch = skShotAnglePitchSource;

static const ushort kSoundId[2] = {
    SFXwpn_fire_wave_normal,
    SFXwpn_fire_wave_charged,
};

CWaveBeam::CWaveBeam(CAssetId characterId, EWeaponType type, TUniqueId playerId,
                     EMaterialTypes playerMaterial, const CVector3f& scale)
: CGunWeapon(characterId, type, playerId, playerMaterial, scale)
, x21c_waveBeam(gpSimplePool->GetObj("WaveBeam"))
, x228_wave2nd1(gpSimplePool->GetObj("Wave2nd_1"))
, x234_wave2nd2(gpSimplePool->GetObj("Wave2nd_2"))
, x240_wave2nd3(gpSimplePool->GetObj("Wave2nd_3"))
, x24c_effectTimer(0.f)
, x258_24_loaded(false)
, x258_25_effectTimerActive(false) {}

CWaveBeam::~CWaveBeam() {}

void CWaveBeam::ReInitVariables() {
  x24c_effectTimer = 0.f;
  x250_chargeElec = nullptr;
  x254_chargeFx = nullptr;
  x258_24_loaded = false;
  x258_25_effectTimerActive = false;
  x1cc_enabledSecondaryEffect = kSFT_None;
}

void CWaveBeam::PostRenderGunFx(const CStateManager& mgr, const CTransform4f& xf) {
  if (x1cc_enabledSecondaryEffect != kSFT_None) {
    if (x254_chargeFx.get())
      x254_chargeFx->Render();
    if (x250_chargeElec.get())
      x250_chargeElec->Render();
  }
  CGunWeapon::PostRenderGunFx(mgr, xf);
}

void CWaveBeam::UpdateGunFx(bool shotSmoke, float dt, const CStateManager& mgr,
                            const CTransform4f& xf) {
  if (x1cc_enabledSecondaryEffect != kSFT_None) {
    if (x258_25_effectTimerActive && x24c_effectTimer < 0.f) {
      x1cc_enabledSecondaryEffect = kSFT_None;
      x24c_effectTimer = 0.f;
      x258_25_effectTimerActive = false;
    } else {
      if (x254_chargeFx.get()) {
        x254_chargeFx->SetGlobalTranslation(xf.GetTranslation());
        x254_chargeFx->SetGlobalOrientation(xf.GetRotation());
        x254_chargeFx->Update(dt);
      }
      if (x250_chargeElec.get()) {
        x250_chargeElec->SetGlobalTranslation(xf.GetTranslation());
        x250_chargeElec->SetGlobalOrientation(xf.GetRotation());
        x250_chargeElec->Update(dt);
      }
    }
    if (x258_25_effectTimerActive && x24c_effectTimer > 0.f)
      x24c_effectTimer -= dt;
  }
  CGunWeapon::UpdateGunFx(shotSmoke, dt, mgr, xf);
}

void CWaveBeam::Update(float dt, CStateManager& mgr) {
  CGunWeapon::Update(dt, mgr);
  if (IsLoaded())
    return;

  if (CGunWeapon::IsLoaded() && !x258_24_loaded) {
    x258_24_loaded = x228_wave2nd1.IsLoaded() && x234_wave2nd2.IsLoaded() &&
                     x240_wave2nd3.IsLoaded() && x21c_waveBeam.IsLoaded();
  }
}

void CWaveBeam::Fire(bool underwater, float dt, CPlayerState::EChargeStage chargeState,
                     const CTransform4f& xf, CStateManager& mgr, TUniqueId homingTarget,
                     float chargeFactor1, float chargeFactor2) {
  if (chargeState != CPlayerState::kCS_Normal) {
    CGunWeapon::Fire(underwater, dt, chargeState, xf, mgr, homingTarget, chargeFactor1,
                     chargeFactor2);
  } else {
    float randAng = mgr.Random()->Float() * 360.f;
    for (int i = 0; i < 3; ++i) {
      CTransform4f shotXf =
          xf * CTransform4f::RotateY(CRelAngle::FromDegrees((randAng + i) * skShotAnglePitch));
      CEnergyProjectile* proj = rs_new CEnergyProjectile(
          true, x144_weapons[chargeState], GetWeaponType(), shotXf, GetPlayerMaterial(),
          GetDamageInfo(mgr, chargeState, chargeFactor1), mgr.AllocateUniqueId(), kInvalidAreaId,
          GetPlayerId(), homingTarget, kPA_ArmCannon, underwater, CVector3f(1.f, 1.f, 1.f),
          rstl::optional_object_null(), CSfxManager::kInternalInvalidSfxId, false);
      mgr.AddObject(proj);
      proj->Think(dt, mgr);
    }
  }

  if (chargeState != CPlayerState::kCS_Normal)
    x218_25_enableCharge = true;

  NWeaponTypes::play_sfx(kSoundId[size_t(chargeState)], underwater, false, 0x4a);
  x10_solidModelData->AnimationData()->EnableLooping(false);
  const CAnimPlaybackParms parms(skShootAnim[chargeState], -1, 1.f, true);
  x10_solidModelData->AnimationData()->SetAnimation(parms, false);
}

void CWaveBeam::Load(CStateManager& mgr, bool subtypeBasePose) {
  CGunWeapon::Load(mgr, subtypeBasePose);
  x228_wave2nd1.Lock();
  x234_wave2nd2.Lock();
  x240_wave2nd3.Lock();
  x21c_waveBeam.Lock();
}

void CWaveBeam::Unload(CStateManager& mgr) {
  CGunWeapon::Unload(mgr);
  x21c_waveBeam.Unlock();
  x240_wave2nd3.Unlock();
  x234_wave2nd2.Unlock();
  x228_wave2nd1.Unlock();
  ReInitVariables();
}

bool CWaveBeam::IsLoaded() const { return CGunWeapon::IsLoaded() && x258_24_loaded; }

void CWaveBeam::EnableSecondaryFx(ESecondaryFxType type) {
  switch (type) {
  case kSFT_None:
    x1cc_enabledSecondaryEffect = kSFT_None;
    break;
  case kSFT_CancelCharge:
    if (x1cc_enabledSecondaryEffect == kSFT_None)
      break;
    // [[fallthrough]];
  default:
    if (x1cc_enabledSecondaryEffect != kSFT_ToCombo) {
      CToken fx = type == kSFT_Charge ? x228_wave2nd1 : x234_wave2nd2;
      x250_chargeElec = rs_new CParticleElectric(fx);
      x250_chargeElec->SetGlobalScale(x4_scale);
    }
    switch (type) {
    case kSFT_Charge:
      x254_chargeFx = nullptr;
      break;
    case kSFT_CancelCharge:
      if (x1cc_enabledSecondaryEffect != kSFT_CancelCharge) {
        x258_25_effectTimerActive = true;
        x24c_effectTimer = 3.f;
        if (x254_chargeFx.get())
          x254_chargeFx->SetParticleEmission(false);
      }
      break;
    case kSFT_ToCombo:
      x254_chargeFx = rs_new CElementGen(x240_wave2nd3);
      x254_chargeFx->SetGlobalScale(x4_scale);
      x24c_effectTimer = 0.f;
      x258_25_effectTimerActive = true;
      break;
    default:
      break;
    }
    x1cc_enabledSecondaryEffect = type;
  }
}
