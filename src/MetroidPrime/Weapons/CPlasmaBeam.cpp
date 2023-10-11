#include "MetroidPrime/Weapons/CPlasmaBeam.hpp"

#include "MetroidPrime/CGameArea.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Cameras/CCameraManager.hpp"
#include "MetroidPrime/Cameras/CCameraShakeData.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Player/CPlayerGun.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"
#include "MetroidPrime/SFX/Weapons.h"

#include "Kyoto/Particles/CElementGen.hpp"

#include "rstl/math.hpp"

CCameraShakeData CameraShaker = CCameraShakeData(0.125f, 0.25f);
static const ushort kSoundId[2] = {SFXwpn_fire_plasma_normal, SFXwpn_fire_plasma_charged};

CPlasmaBeam::CPlasmaBeam(CAssetId characterId, EWeaponType type, TUniqueId playerId,
                         EMaterialTypes playerMaterial, const CVector3f& scale)
: CGunWeapon(characterId, type, playerId, playerMaterial, scale)
, x21c_plasma2nd1(gpSimplePool->GetObj("Plasma2nd_1"))
, x22c_24_loaded(false)
, x22c_25_worldLighingDim(false)
, x230_fireShotDelayTimer(0.f)
, x234_fireShotDelay(0.f)
, x238_lightingResetDelayTimer(0.f)
, x23c_stateArea(kInvalidAreaId) {}

CPlasmaBeam::~CPlasmaBeam() {}

void CPlasmaBeam::ReInitVariables() {
  x228_chargeFx = nullptr;
  x22c_24_loaded = false;
  x1cc_enabledSecondaryEffect = kSFT_None;
}

bool CPlasmaBeam::IsFiring(const CStateManager& mgr) const { return x234_fireShotDelay > 0.f; }

void CPlasmaBeam::PostRenderGunFx(const CStateManager& mgr, const CTransform4f& xf) {
  if (x228_chargeFx.get() && x1cc_enabledSecondaryEffect != kSFT_None)
    x228_chargeFx->Render();
  CGunWeapon::PostRenderGunFx(mgr, xf);
}

void CPlasmaBeam::UpdateGunFx(bool shotSmoke, float dt, const CStateManager& mgr,
                              const CTransform4f& xf) {
  if (x228_chargeFx.get() && x1cc_enabledSecondaryEffect != kSFT_None) {
    if (x228_chargeFx->IsSystemDeletable())
      x1cc_enabledSecondaryEffect = kSFT_None;
    x228_chargeFx->SetTranslation(xf.GetTranslation());
    x228_chargeFx->SetOrientation(xf.GetRotation());
    x228_chargeFx->Update(dt);
  }
  CGunWeapon::UpdateGunFx(shotSmoke, dt, mgr, xf);
}

void CPlasmaBeam::Update(float dt, CStateManager& mgr) {
  CGunWeapon::Update(dt, mgr);
  x230_fireShotDelayTimer -= dt;
  x230_fireShotDelayTimer = rstl::max_val(0.f, x230_fireShotDelayTimer);
  x238_lightingResetDelayTimer -= dt;

  if (mgr.GetPlayer()->GetPlayerGun()->GetChargeBeamFactor() > 0.5f) {
    SetWorldLighting(mgr, mgr.GetPlayer()->GetCurrentAreaId(), 0.2f, 0.8f);
  } else {
    if (x238_lightingResetDelayTimer < 0.f && x22c_25_worldLighingDim) {
      SetWorldLighting(mgr, mgr.GetPlayer()->GetCurrentAreaId(), 2.f, 1.f);
    }
  }

  if (IsLoaded())
    return;

  if (CGunWeapon::IsLoaded() && !x22c_24_loaded) {
    x22c_24_loaded = x21c_plasma2nd1.IsLoaded();
    if (x22c_24_loaded)
      CreateBeam(mgr);
  }
}

void CPlasmaBeam::Fire(bool underwater, float dt, CPlayerState::EChargeStage chargeState,
                       const CTransform4f& xf, CStateManager& mgr, TUniqueId homingTarget,
                       float chargeFactor1, float chargeFactor2) {
  bool fired = false;
  if (chargeState == CPlayerState::kCS_Normal) {
    if (x230_fireShotDelayTimer < 0.01f) {
      ActivateCharge(false, true);
      CGunWeapon::Fire(underwater, dt, chargeState, xf, mgr, homingTarget, chargeFactor1,
                       chargeFactor2);
      x230_fireShotDelayTimer += 0.33f;
      x234_fireShotDelay = 0.33f;
      fired = true;
    }
  } else {
    CGunWeapon::Fire(underwater, dt, chargeState, xf, mgr, homingTarget, chargeFactor1, 1.f);
    mgr.CameraManager()->AddCameraShaker(CameraShaker, false);
    x238_lightingResetDelayTimer = 0.65f;
    SetWorldLighting(mgr, mgr.GetPlayer()->GetCurrentAreaId(), 8.f, 0.7f);
    fired = true;
  }

  if (!fired) {
    return;
  }

  NWeaponTypes::play_sfx(kSoundId[chargeState], underwater, false, 0x4a);
}

void CPlasmaBeam::UpdateBeam(float dt, const CTransform4f& targetXf, const CVector3f& localBeamPos,
                             CStateManager& mgr) {}

void CPlasmaBeam::StopBeam(CStateManager& mgr, bool b1) {}

void CPlasmaBeam::CreateBeam(CStateManager& mgr) {}

void CPlasmaBeam::DeleteBeam(CStateManager& mgr) {
  if (x22c_25_worldLighingDim)
    SetWorldLighting(mgr, mgr.GetPlayer()->GetCurrentAreaId(), 2.f, 1.f);
}

void CPlasmaBeam::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId sender, CStateManager& mgr) {
  switch (msg) {
  case kSM_Deleted:
    DeleteBeam(mgr);
    break;

  case kSM_Registered:
  default:
    break;
  }
}


void CPlasmaBeam::Load(CStateManager& mgr, bool subtypeBasePose) {
  CGunWeapon::Load(mgr, subtypeBasePose);
  x21c_plasma2nd1.Lock();
}

void CPlasmaBeam::Unload(CStateManager& mgr) {
  CGunWeapon::Unload(mgr);
  x21c_plasma2nd1.Unlock();
  DeleteBeam(mgr);
  ReInitVariables();
}

bool CPlasmaBeam::IsLoaded() const { return CGunWeapon::IsLoaded() && x22c_24_loaded; }

void CPlasmaBeam::EnableSecondaryFx(ESecondaryFxType type) {
  switch (type) {
  case kSFT_CancelCharge:
    if (x1cc_enabledSecondaryEffect == kSFT_None)
      return;

    if (!x228_chargeFx.null()) {
      x228_chargeFx->SetParticleEmission(false);
      break;
    } else {
      return;
    }

  case kSFT_Charge:
    x228_chargeFx = new CElementGen(x21c_plasma2nd1);
    x228_chargeFx->SetGlobalScale(x4_scale);

  default:
    break;
  }
  x1cc_enabledSecondaryEffect = type;
}

void CPlasmaBeam::SetWorldLighting(CStateManager& mgr, TAreaId aid, float speed, float target) {
  if (x22c_25_worldLighingDim && x23c_stateArea != aid && x23c_stateArea != kInvalidAreaId) {
    CGameArea* area = mgr.World()->Area(x23c_stateArea);
    if (area->IsLoaded())
      area->SetWeaponWorldLighting(2.f, 1.f);
  }

  x23c_stateArea = aid;
  x22c_25_worldLighingDim = target != 1.f;

  if (x23c_stateArea != kInvalidAreaId) {
    CGameArea* area = mgr.World()->Area(x23c_stateArea);
    if (area->IsLoaded())
      area->SetWeaponWorldLighting(speed, target);
  }
}
