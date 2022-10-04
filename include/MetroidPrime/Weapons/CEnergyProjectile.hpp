#ifndef _CENERGYPROJECTILE_HPP
#define _CENERGYPROJECTILE_HPP

#include "types.h"

#include "MetroidPrime/Cameras/CCameraShakeData.hpp"
#include "MetroidPrime/Weapons/CGameProjectile.hpp"

#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CEnergyProjectile : public CGameProjectile {
public:
  // TODO ctor

  // CEntity
  ~CEnergyProjectile() override;
  void Accept(IVisitor& visitor) override;
  void Think(f32 dt, CStateManager& mgr) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;

  // CActor
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const override;
  void Render(const CStateManager&) const override;
  void Touch(CActor&, CStateManager&) override;

  // CGameProjectile
  void ResolveCollisionWithActor(const CRayCastResult& res, CActor& act,
                                 CStateManager& mgr) override;

  // CEnergyProjectile
  virtual bool Explode(const CVector3f& pos, const CVector3f& normal,
                       EWeaponCollisionResponseTypes type, CStateManager& mgr,
                       const CDamageVulnerability& dVuln, TUniqueId hitActor);

  void Set3d0_26(bool v) { x3d0_26_ = v; }

private:
  CSfxHandle x2e8_sfx;
  CVector3f x2ec_dir;
  float x2f8_mag;
  CCameraShakeData x2fc_camShake;
  bool x3d0_24_dead : 1;
  bool x3d0_25_ : 1;
  bool x3d0_26_ : 1;
  bool x3d0_27_camShakeDirty : 1;
  float x3d4_curTime;
};
CHECK_SIZEOF(CEnergyProjectile, 0x3d8);

#endif
