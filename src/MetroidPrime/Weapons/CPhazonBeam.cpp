#include "MetroidPrime/Weapons/CPhazonBeam.hpp"

#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "MetaRender/CCubeRenderer.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/CWorld.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/SFX/Weapons.h"
#include "MetroidPrime/Weapons/CProjectileWeapon.hpp"

#include <Kyoto/Particles/CElementGen.hpp>

const ushort CPhazonBeam::skSoundIds[] = {
    SFXcra_a_phazfire_00,
    SFXsam_a_cbmfire_00,
};

const char* const CPhazonBeam::skPhazonVeins = "PhazonVeins";
const char* const CPhazonBeam::skPhazonVeins2 = "PhazonVeins_2";

const char* const CPhazonBeam::skScaleLocator = "phazonScale_LCTR_SDK";

CPhazonBeam::CPhazonBeam(CAssetId characterId, EWeaponType type, TUniqueId playerId,
                         EMaterialTypes playerMaterial, const CVector3f& scale)
: CGunWeapon(characterId, type, playerId, playerMaterial, scale)
, mVeins(gpSimplePool->GetObj(skPhazonVeins))
, mPhazon2nd1(gpSimplePool->GetObj("Phazon2nd_1"))
, mAABoxScale(CVector3f(-0.14664599f, 0.f, -0.14909725f) * scale.GetY(),
              CVector3f(0.14664599f, 0.64619601f, 0.14909725f) * scale.GetY())
, mAABoxTranslate(CVector3f(-0.0625f, 0.f, -0.09375f) * scale.GetY(),
                  CVector3f(0.0625f, -0.25f, 0.09375f) * scale.GetY())
, mClipWipeScale(0.f)
, mClipWipeTranslate(0.f)
, mIndirectAlpha(1.f)
, mLoaded(false)
, mClipWipeActive(true)
, mVeinsAlphaActive(false)
, mPhazonVeinsIdx(false)
, mFireTime(0.33334f) {}

CPhazonBeam::~CPhazonBeam() {}

void CPhazonBeam::ReInitVariables() {
  mClipWipeScale = 0.f;
  mClipWipeTranslate = 0.f;
  mIndirectAlpha = 1.f;
  mChargeFxGen = nullptr;
  mVeinsData = nullptr;
  mLoaded = false;
  mClipWipeActive = true;
  mVeinsAlphaActive = false;
  x1cc_enabledSecondaryEffect = kSFT_None;
}

bool CPhazonBeam::IsFiring(const CStateManager& mgr) const { return mFireTime < 1.f / 6.f; }

void CPhazonBeam::PreRenderGunFx(const CStateManager& mgr, const CTransform4f& xf) {
  if (!IsFiring(mgr)) {
    return;
  }

  const CTransform4f tmpXf = CGraphics::GetViewMatrix();
  CGraphics::SetViewPointMatrix(xf.GetInverse() * tmpXf);
  gpRender->SetModelMatrix(CTransform4f::Identity());
  CGunWeapon::DrawMuzzleFx(mgr);
  CGraphics::SetViewPointMatrix(tmpXf);
}

void CPhazonBeam::PostRenderGunFx(const CStateManager& mgr, const CTransform4f& xf) {
  if (!mChargeFxGen.null()) {
    mChargeFxGen->Render();
  }

  CGunWeapon::PostRenderGunFx(mgr, xf);
}

void CPhazonBeam::UpdateGunFx(bool shotSmoke, float dt, const CStateManager& mgr,
                              const CTransform4f& xf) {
  if (!mChargeFxGen.null()) {
    mChargeFxGen->SetGlobalOrientAndTrans(xf);
    mChargeFxGen->Update(dt);
  }

  CGunWeapon::UpdateGunFx(shotSmoke, dt, mgr, xf);
}

void CPhazonBeam::DrawMuzzleFx(const CStateManager& mgr) const {
  if (!IsFiring(mgr)) {
    return;
  }

  CGunWeapon::DrawMuzzleFx(mgr);
}

void CPhazonBeam::Draw(bool drawSuitArm, const CStateManager& mgr, const CTransform4f& xf,
                       const CModelFlags& flags, const CActorLights* lights) const {}

void CPhazonBeam::Fire(const bool underwater, const float dt,
                       const CPlayerState::EChargeStage chargeState, const CTransform4f& xf,
                       CStateManager& mgr, const TUniqueId homingTarget, const float chargeFactor1,
                       const float chargeFactor2) {
  bool playSound = false;
  if (chargeState == CPlayerState::kCS_Normal) {
    ActivateCharge(false, false);

    const int iterations = mFireTime > 0.33334f ? 5 : 2;

    uint seed = 0;
    int i = 0;
    for (i = 0, seed = 0; i < iterations; ++i) {
      CProjectileWeapon::SetGlobalSeed(seed + mgr.GetUpdateFrameIndex());
      CGunWeapon::Fire(underwater, dt, chargeState, xf, mgr, homingTarget, chargeFactor1,
                       chargeFactor2);
      CProjectileWeapon::SetGlobalSeed(mgr.GetUpdateFrameIndex());
      seed += 1000;
    }
    mFireTime = 0.f;
    playSound = true;
  } else {
    CGunWeapon::Fire(underwater, dt, chargeState, xf, mgr, homingTarget, chargeFactor1,
                     chargeFactor2);
    playSound = true;
  }

  if (playSound) {
    NWeaponTypes::play_sfx(skSoundIds[chargeState], underwater, false, 74);
  }
}

void CPhazonBeam::Update(float dt, CStateManager& mgr) {}

void CPhazonBeam::UpdateBeam(float dt, const CTransform4f& xf, const CVector3f& localBeamPos,
                             CStateManager& mgr) {}

void CPhazonBeam::StopBeam(CStateManager& mgr, bool reset) {
  if (mChargeFxGen.null()) {
    return;
  }

  mChargeFxGen->SetParticleEmission(false);
}
void CPhazonBeam::Load(CStateManager& mgr, bool subtypeBasePose) {
  CGunWeapon::Load(mgr, subtypeBasePose);
  mPhazon2nd1.Lock();
  mPhazonVeinsIdx = (mgr.Random()->Next() & 2) != 0;
  mVeins = gpSimplePool->GetObj(mPhazonVeinsIdx ? skPhazonVeins2 : skPhazonVeins);
  mVeins.Lock();
}
void CPhazonBeam::Unload(CStateManager& mgr) {}
bool CPhazonBeam::IsLoaded() const { return CGunWeapon::IsLoaded() && mLoaded; }

void CPhazonBeam::CreateBeam(CStateManager& mgr) {
  mChargeFxGen = rs_new CElementGen(mPhazon2nd1);
  if (!mChargeFxGen.null()) {
    mChargeFxGen->SetGlobalScale(x4_scale);
    mChargeFxGen->SetParticleEmission(false);
  }
}

void CPhazonBeam::AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId sender, CStateManager& mgr) {
  switch (msg) {
  case kSM_Deleted: {
    const TAreaId aid = mgr.GetPlayer()->GetCurrentAreaId();
    if (aid == kInvalidAreaId) {
      break;
    }

    mgr.World()->Area(aid)->SetWeaponWorldLighting(4.f, 1.f);
  } break;
  default:
    break;
  }
}
