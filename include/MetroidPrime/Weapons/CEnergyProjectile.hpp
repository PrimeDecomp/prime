#ifndef _CENERGYPROJECTILE
#define _CENERGYPROJECTILE

#include "types.h"

#include "MetroidPrime/Cameras/CCameraShakeData.hpp"
#include "MetroidPrime/Weapons/CGameProjectile.hpp"

#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CEnergyProjectile : public CGameProjectile {
public:
  CEnergyProjectile(bool active, const TToken< CWeaponDescription >& desc, EWeaponType type,
                    const CTransform4f& xf, EMaterialTypes excludeMat, const CDamageInfo& damage,
                    TUniqueId uid, TAreaId aid, TUniqueId owner, TUniqueId homingTarget,
                    uint attribs, bool underwater, const CVector3f& scale,
                    const rstl::optional_object< TLockedToken< CGenDescription > >& visorParticle,
                    ushort visorSfx, bool sendCollideMsg);

  // CEntity
  ~CEnergyProjectile();
  void Accept(IVisitor& visitor);
  void Think(float dt, CStateManager& mgr);
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr);

  // CActor
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const;
  void Render(const CStateManager&) const;
  void Touch(CActor&, CStateManager&);

  // CGameProjectile
  void ResolveCollisionWithActor(const CRayCastResult& res, CActor& act,
                                 CStateManager& mgr);

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

#endif // _CENERGYPROJECTILE
