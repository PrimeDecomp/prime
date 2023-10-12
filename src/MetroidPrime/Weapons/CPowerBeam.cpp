#include "MetroidPrime/Weapons/CPowerBeam.hpp"

#include "MetroidPrime/SFX/Weapons.h"

#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "Kyoto/Particles/CElementGen.hpp"
#include "MetaRender/CCubeRenderer.hpp"

CPowerBeam::CPowerBeam(CAssetId characterId, EWeaponType type, TUniqueId playerId,
                       EMaterialTypes playerMaterial, const CVector3f& scale)
: CGunWeapon(characterId, type, playerId, playerMaterial, scale)
, x21c_shotSmoke(gpSimplePool->GetObj("ShotSmoke"))
, x228_power2nd1(gpSimplePool->GetObj("Power2nd_1"))
, x23c_smokeTimer(0.f)
, x240_smokeState(kSS_Inactive)
, x244_24(false)
, x244_25_loaded(false) {}

CPowerBeam::~CPowerBeam() {}

void CPowerBeam::ReInitVariables() {
  x234_shotSmokeGen = nullptr;
  x238_power2ndGen = nullptr;
  x23c_smokeTimer = 0.f;
  x240_smokeState = kSS_Inactive;
  x244_24 = false;
  x244_25_loaded = false;
  x1cc_enabledSecondaryEffect = kSFT_None;
}

void CPowerBeam::PreRenderGunFx(const CStateManager& mgr, const CTransform4f& xf) {
  CTransform4f backupView = CGraphics::GetViewMatrix();

  CGraphics::SetViewPointMatrix(xf.GetInverse() * backupView);
  gpRender->SetModelMatrix(CTransform4f::Identity());
  if (!x234_shotSmokeGen.null() && x240_smokeState != kSS_Inactive)
    x234_shotSmokeGen->Render();

  CGraphics::SetViewPointMatrix(backupView);
}

void CPowerBeam::PostRenderGunFx(const CStateManager& mgr, const CTransform4f& xf) {
  if (x1cc_enabledSecondaryEffect != kSFT_None && !x238_power2ndGen.null())
    x238_power2ndGen->Render();
  CGunWeapon::PostRenderGunFx(mgr, xf);
}

void CPowerBeam::UpdateGunFx(bool shotSmoke, float dt, const CStateManager& mgr,
                             const CTransform4f& xf) {
  switch (x240_smokeState) {
  case kSS_Inactive:
    if (shotSmoke) {
      if (!x234_shotSmokeGen.null())
        x234_shotSmokeGen->SetParticleEmission(true);
      x23c_smokeTimer = 2.f;
      x240_smokeState = kSS_Active;
    }
    break;
  case kSS_Active:
    if (x23c_smokeTimer > 0.f) {
      x23c_smokeTimer -= dt;
    } else {
      if (!x234_shotSmokeGen.null())
        x234_shotSmokeGen->SetParticleEmission(false);
      x240_smokeState = kSS_Done;
    }
    // [[fallthrough]];
  case kSS_Done:
    if (!x234_shotSmokeGen.null()) {
      CTransform4f locator = x10_solidModelData->GetScaledLocatorTransform(
          rstl::string_l(CGunWeapon::skMuzzleLocator));
      x234_shotSmokeGen->SetGlobalTranslation(locator.GetTranslation());
      x234_shotSmokeGen->Update(dt);
      if (x240_smokeState == kSS_Done && x234_shotSmokeGen->GetSystemCount() == 0)
        x240_smokeState = kSS_Inactive;
    } else {
      x240_smokeState = kSS_Inactive;
    }
    break;
  }

  if (x1cc_enabledSecondaryEffect != kSFT_None && !x238_power2ndGen.null()) {
    x238_power2ndGen->SetGlobalOrientAndTrans(xf);
    x238_power2ndGen->Update(dt);
  }

  CGunWeapon::UpdateGunFx(shotSmoke, dt, mgr, xf);
}

void CPowerBeam::Update(float dt, CStateManager& mgr) {
  CGunWeapon::Update(dt, mgr);
  if (IsLoaded())
    return;

  if (CGunWeapon::IsLoaded() && !x244_25_loaded) {
    x244_25_loaded = x21c_shotSmoke.IsLoaded() && x228_power2nd1.IsLoaded();
    if (x244_25_loaded) {
      x234_shotSmokeGen = NEW CElementGen(x21c_shotSmoke);
      x234_shotSmokeGen->SetParticleEmission(false);
    }
  }
}

void CPowerBeam::Fire(bool underwater, float dt, CPlayerState::EChargeStage chargeState,
                      const CTransform4f& xf, CStateManager& mgr, TUniqueId homingTarget,
                      float chargeFactor1, float chargeFactor2) {
  static const ushort skSoundId[] = {
      SFXwpn_fire_power_normal,
      SFXwpn_fire_power_charged,
  };

  CGunWeapon::Fire(underwater, dt, chargeState, xf, mgr, homingTarget, chargeFactor1,
                   chargeFactor2);
  NWeaponTypes::play_sfx(skSoundId[size_t(chargeState)], underwater, false, 0x4a);
}

void CPowerBeam::Load(CStateManager& mgr, bool subtypeBasePose) {
  CGunWeapon::Load(mgr, subtypeBasePose);
  x21c_shotSmoke.Lock();
  x228_power2nd1.Lock();
}

void CPowerBeam::Unload(CStateManager& mgr) {
  CGunWeapon::Unload(mgr);
  x228_power2nd1.Unlock();
  x21c_shotSmoke.Unlock();
  ReInitVariables();
}

bool CPowerBeam::IsLoaded() const { return CGunWeapon::IsLoaded() && x244_25_loaded; }

void CPowerBeam::EnableSecondaryFx(ESecondaryFxType type) {
  switch (type) {
  case kSFT_None:
  case kSFT_ToCombo:
  case kSFT_CancelCharge:
    if (x1cc_enabledSecondaryEffect != kSFT_None && !x238_power2ndGen.null())
      x238_power2ndGen->SetParticleEmission(false);
    x1cc_enabledSecondaryEffect = kSFT_None;
    break;
  case kSFT_Charge:
    x238_power2ndGen = NEW CElementGen(x228_power2nd1);
    x238_power2ndGen->SetGlobalScale(x4_scale);
    x1cc_enabledSecondaryEffect = type;
    break;
  default:
    break;
  }
}
