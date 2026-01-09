#include "MetroidPrime/Weapons/CIceBeam.hpp"

#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/SFX/Weapons.h"

#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/Particles/CElementGen.hpp"

CIceBeam::CIceBeam(CAssetId characterId, EWeaponType type, TUniqueId playerId,
                   EMaterialTypes playerMaterial, const CVector3f& scale)
: CGunWeapon(characterId, type, playerId, playerMaterial, scale)

, x21c_iceSmoke(gpSimplePool->GetObj("IceSmoke"))
, x228_ice2nd1(gpSimplePool->GetObj("Ice2nd_1"))
, x234_ice2nd2(gpSimplePool->GetObj("Ice2nd_2"))

, x248_24_loaded(false)
, x248_25_inEndFx(false) {}

CIceBeam::~CIceBeam() {}

void CIceBeam::ReInitVariables() {
  x240_smokeGen = nullptr;
  x244_chargeFx = nullptr;
  x248_24_loaded = false;
  x248_25_inEndFx = false;
  x1cc_enabledSecondaryEffect = kSFT_None;
}

void CIceBeam::PreRenderGunFx(const CStateManager& mgr, const CTransform4f& xf) {
  // Empty
}

void CIceBeam::PostRenderGunFx(const CStateManager& mgr, const CTransform4f& xf) {
  bool subtractBlend = mgr.GetThermalDrawFlag() == kTD_Hot;
  if (subtractBlend)
    CElementGen::SetSubtractBlend(true);
  if (x240_smokeGen.get())
    x240_smokeGen->Render();
  if (x1cc_enabledSecondaryEffect != kSFT_None && x244_chargeFx.get())
    x244_chargeFx->Render();
  CGunWeapon::PostRenderGunFx(mgr, xf);
  if (subtractBlend)
    CElementGen::SetSubtractBlend(false);
}

void CIceBeam::UpdateGunFx(bool shotSmoke, float dt, const CStateManager& mgr,
                           const CTransform4f& xf) {
  if (x240_smokeGen.get()) {
    CTransform4f beamLoc =
        x10_solidModelData->GetScaledLocatorTransform(rstl::string_l(GetMuzzleLocator()));
    x240_smokeGen->SetTranslation(beamLoc.GetTranslation());
    x240_smokeGen->SetOrientation(beamLoc.GetRotation());
    x240_smokeGen->Update(dt);
  }

  if (x244_chargeFx.get()) {
    if (x248_25_inEndFx && x244_chargeFx->IsSystemDeletable()) {
      x1cc_enabledSecondaryEffect = kSFT_None;
      x244_chargeFx = nullptr;
    }
    if (x1cc_enabledSecondaryEffect != kSFT_None) {
      if (x248_25_inEndFx) {
        x244_chargeFx->SetTranslation(xf.GetTranslation());
        x244_chargeFx->SetOrientation(xf.GetRotation());
      } else {
        x244_chargeFx->SetGlobalOrientAndTrans(xf);
      }
      x244_chargeFx->Update(dt);
    }
  }

  CGunWeapon::UpdateGunFx(shotSmoke, dt, mgr, xf);
}

void CIceBeam::Update(float dt, CStateManager& mgr) {
  CGunWeapon::Update(dt, mgr);

  if (!x248_24_loaded) {
    x248_24_loaded = x21c_iceSmoke.TryCache() && x228_ice2nd1.TryCache() && x234_ice2nd2.TryCache();
    if (x248_24_loaded) {
      x240_smokeGen = rs_new CElementGen(x21c_iceSmoke);
      x240_smokeGen->SetGlobalScale(x4_scale);
      x240_smokeGen->SetParticleEmission(false);
    }
  }
}

void CIceBeam::Fire(bool underwater, float dt, CPlayerState::EChargeStage chargeState,
                    const CTransform4f& xf, CStateManager& mgr, TUniqueId homingTarget,
                    float chargeFactor1, float chargeFactor2) {
  static const ushort soundId[2] = {SFXwpn_fire_ice_normal, SFXwpn_fire_ice_charged};

  CGunWeapon::Fire(underwater, dt, chargeState, xf, mgr, homingTarget, chargeFactor1,
                   chargeFactor2);
  NWeaponTypes::play_sfx(soundId[size_t(chargeState)], underwater, false, 0x4a);
}

void CIceBeam::Load(CStateManager& mgr, bool subtypeBasePose) {
  CGunWeapon::Load(mgr, subtypeBasePose);
  x21c_iceSmoke.Lock();
  x228_ice2nd1.Lock();
  x234_ice2nd2.Lock();
  x248_25_inEndFx = false;
}

void CIceBeam::Unload(CStateManager& mgr) {
  CGunWeapon::Unload(mgr);
  x234_ice2nd2.Unlock();
  x228_ice2nd1.Unlock();
  x21c_iceSmoke.Unlock();
  ReInitVariables();
}

bool CIceBeam::IsLoaded() const { return CGunWeapon::IsLoaded() && x248_24_loaded; }

void CIceBeam::EnableSecondaryFx(ESecondaryFxType type) {
  switch (type) {
  case kSFT_CancelCharge:
  case kSFT_None:
    if (x1cc_enabledSecondaryEffect == kSFT_None)
      break;
  default:
    switch (type) {
    case kSFT_None:
    case kSFT_ToCombo:
    case kSFT_CancelCharge:
      if (!x248_25_inEndFx) {
        x244_chargeFx = rs_new CElementGen(x234_ice2nd2);
        x244_chargeFx->SetGlobalScale(x4_scale);
        x248_25_inEndFx = true;
        x1cc_enabledSecondaryEffect = kSFT_CancelCharge;
      }
      break;
    case kSFT_Charge:
      x244_chargeFx = rs_new CElementGen(x228_ice2nd1);
      x244_chargeFx->SetGlobalScale(x4_scale);
      x1cc_enabledSecondaryEffect = type;
      x248_25_inEndFx = false;
      break;
    }
    break;
  }
}

void CIceBeam::EnableFx(bool enable) {
  if (x240_smokeGen.get())
    x240_smokeGen->SetParticleEmission(enable);
}
