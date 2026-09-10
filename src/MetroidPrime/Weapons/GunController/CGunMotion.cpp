#include "MetroidPrime/Weapons/GunController/CGunMotion.hpp"

#include "MetroidPrime/CAnimData.hpp"
#include "MetroidPrime/CAnimRes.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/Weapons/WeaponCommon.hpp"

#include "Kyoto/Animation/CPASAnimParmData.hpp"
#include "Kyoto/Animation/CPASDatabase.hpp"
#include "Kyoto/Graphics/CModelFlags.hpp"

CGunMotion::CGunMotion(CAssetId ancsId, const CVector3f& scale)
: x0_modelData(CAnimRes(ancsId, 0, scale, 0, false))
, x4c_gunController(x0_modelData)
, xb8_24_animPlaying(false) {
  LoadAnimations();
}

CGunMotion::~CGunMotion() {}

const bool CGunMotion::PlayPasAnim(SamusGun::EAnimationState state, CStateManager& mgr, float angle,
                             bool bigStrike) {
  const CPASDatabase& pas = x0_modelData.GetAnimationData()->GetCharacterInfo().GetPASDatabase();

  bool loop = true;
  int animId = -1;
  switch (state) {
  case SamusGun::kAS_Wander: {
    const rstl::pair< float, int > anim =
        pas.FindBestAnimation(CPASAnimParmData(pas::EAnimationState(state)), *mgr.Random(), -1);
    animId = anim.second;
    break;
  }
  case SamusGun::kAS_Idle: {
    const rstl::pair< float, int > anim = pas.FindBestAnimation(
        CPASAnimParmData(pas::EAnimationState(state), CPASAnimParm::FromEnum(0)), *mgr.Random(),
        -1);
    animId = anim.second;
    break;
  }
  case SamusGun::kAS_Struck: {
    const rstl::pair< float, int > anim = pas.FindBestAnimation(
        CPASAnimParmData(pas::EAnimationState(state), CPASAnimParm::FromInt32(0),
                         CPASAnimParm::FromReal32(angle), CPASAnimParm::FromBool(bigStrike),
                         CPASAnimParm::FromBool(false)),
        *mgr.Random(), -1);
    animId = anim.second;
    loop = false;
    break;
  }
  case SamusGun::kAS_FreeLook:
    x4c_gunController.EnterFreeLook(mgr, 0, -1);
    break;
  case SamusGun::kAS_ComboFire:
    x4c_gunController.EnterComboFire(mgr, 0);
    break;
  default:
    break;
  }

  if (animId != -1) {
    xb8_24_animPlaying = true;
    CAnimData& animData = *x0_modelData.AnimationData();
    animData.EnableLooping(loop);
    CAnimPlaybackParms aparms(animId, -1, 1.f, true);
    animData.SetAnimation(aparms, false);
  }

  return loop;
}

void CGunMotion::Update(float dt, CStateManager& mgr) {
  x0_modelData.AdvanceAnimation(dt, mgr, kInvalidAreaId, true);
  switch (x4c_gunController.Update(dt, mgr)) {
  case 1:
    xb8_24_animPlaying = false;
  }
}

void CGunMotion::Draw(const CStateManager& mgr, const CTransform4f& xf) const {
  x0_modelData.Render(mgr, xf, nullptr, CModelFlags::Normal());
}

void CGunMotion::ReturnToDefault(CStateManager& mgr, bool b) {
  x4c_gunController.ReturnToDefault(mgr, 0.f, b);
}

int CGunMotion::GetFreeLookSetId() const { return x4c_gunController.GetFreeLookSetId(); }

static inline int GetBasePositionAnimation(bool bigStrikeReset) {
  int animation = 0;
  if (bigStrikeReset) {
    animation = 6;
  }
  return animation;
}

void CGunMotion::BasePosition(bool bigStrikeReset) {
  CAnimData& animData = *x0_modelData.AnimationData();
  animData.EnableLooping(false);
  animData.SetAnimation(CAnimPlaybackParms(GetBasePositionAnimation(bigStrikeReset), -1, 1.f, true),
                        false);
}

void CGunMotion::EnterFidget(CStateManager& mgr, SamusGun::EFidgetType type, int parm2) {
  xb8_24_animPlaying = true;
  x4c_gunController.EnterFidget(mgr, int(type), 0, parm2);
}

void CGunMotion::LoadAnimations() {
  NWeaponTypes::get_token_vector(*x0_modelData.GetAnimationData(), 0, 14, xa8_anims, true);
}
