#include "MetroidPrime/Weapons/CEnergyProjectile.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "MetroidPrime/Player/CPlayerState.hpp"

#define MATERIAL_FLAG(x) (1 << x)

const CMaterialList CEnergyProjectile::kCheckMaterial(
    MATERIAL_FLAG(kMT_Stone) | MATERIAL_FLAG(kMT_Metal) | MATERIAL_FLAG(kMT_Grass) |
    MATERIAL_FLAG(kMT_Ice) | MATERIAL_FLAG(kMT_Pillar) | MATERIAL_FLAG(kMT_MetalGrating) |
    MATERIAL_FLAG(kMT_Phazon) | MATERIAL_FLAG(kMT_Dirt) | MATERIAL_FLAG(kMT_Lava) |
    MATERIAL_FLAG(kMT_LavaStone) | MATERIAL_FLAG(kMT_Snow) | MATERIAL_FLAG(kMT_MudSlow) |
    MATERIAL_FLAG(kMT_HalfPipe) | MATERIAL_FLAG(kMT_Mud) | MATERIAL_FLAG(kMT_Glass) |
    MATERIAL_FLAG(kMT_Shield) | MATERIAL_FLAG(kMT_Sand) | MATERIAL_FLAG(kMT_CameraPassthrough) |
    MATERIAL_FLAG(kMT_Wood) | MATERIAL_FLAG(kMT_Organic));
#undef MATERIAL_FLAG

CEnergyProjectile::CEnergyProjectile(
    const bool active, const TToken< CWeaponDescription >& desc, const EWeaponType type,
    const CTransform4f& xf, const EMaterialTypes excludeMat, const CDamageInfo& damage,
    const TUniqueId uid, TAreaId aid, const TUniqueId owner, const TUniqueId homingTarget,
    const uint attribs, const bool underwater, const CVector3f& scale,
    const rstl::optional_object< TLockedToken< CGenDescription > >& visorParticle,
    const ushort visorSfx, const bool sendCollideMsg)
: CGameProjectile(active, desc, rstl::string_l("GameProjectile"), type, xf, excludeMat, damage, uid,
                  aid, owner, homingTarget, attribs, underwater, scale, visorParticle, visorSfx,
                  sendCollideMsg)
, x2ec_dir(xf.GetForward())
, x2f8_mag(x2ec_dir.Magnitude())
, x2fc_camShake(CCameraShakeData::BuildProjectileCameraShake(0.5f, 0.75f))
, x3d0_24_dead(false)
, x3d0_25_(false)
, x3d0_26_(false)
, x3d0_27_camShakeDirty(false)
, x3d4_curTime(0.f) {
  SetThermalFlags(kTF_Hot);
}

void CEnergyProjectile::StopProjectile(CStateManager& mgr) {
  DeleteProjectileLight(mgr);
  mgr.RemoveWeaponId(GetOwnerId(), GetType());
  x2e4_24_active = false;
  SetMaterial(CMaterialList());
  mgr.UpdateActorInSortedLists(*this);
  if (x2e8_sfx) {
    CSfxManager::RemoveEmitter(x2e8_sfx);
    x2e8_sfx.Clear();
  }
}

bool CEnergyProjectile::Explode(const CVector3f& pos, const CVector3f& normal,
                                const EWeaponCollisionResponseTypes type, CStateManager& mgr,
                                const CDamageVulnerability& dVuln, const TUniqueId hitActor) {
  
}

void CEnergyProjectile::Touch(CActor&, CStateManager&) {}

void CEnergyProjectile::AddToRenderer(const CFrustumPlanes& frustum,
                                      const CStateManager& mgr) const {
  const rstl::optional_object< CAABox > bounds = GetProjectile().GetBounds();
  if (bounds.valid() && !frustum.BoxInFrustumPlanes(bounds)) {
    return;
  }

  const CPlayerState::EPlayerVisor visor = mgr.GetPlayerState()->GetActiveVisor(mgr);

  if (visor != CPlayerState::kPV_XRay &&
      ((GetAttribField() & kPA_Ice) != kPA_Ice || mgr.GetThermalDrawFlag() != kTD_Hot)) {
    GetProjectile().AddToRenderer();
  }

  EnsureRendered(mgr);
}

void CEnergyProjectile::SetCameraShake(const CCameraShakeData& data) {
  x2fc_camShake = data;
  x3d0_27_camShakeDirty = true;
}