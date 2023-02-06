#ifndef _CELECTRICBEAMPROJECTILE
#define _CELECTRICBEAMPROJECTILE

#include "MetroidPrime/Weapons/CBeamProjectile.hpp"

class CParticleElectric;
class CElectricDescription;

struct SElectricBeamInfo {
  TToken< CElectricDescription > x0_electricDescription;
  float x8_maxLength;
  float xc_radius;
  float x10_travelSpeed;
  CAssetId x14_particleId;
  float x18_fadeSpeed;
  float x1c_damageInterval;
};

class CElectricBeamProjectile : public CBeamProjectile {
public:
  CElectricBeamProjectile(const TToken< CWeaponDescription >&, EWeaponType,
                          const SElectricBeamInfo&, const CTransform4f&, EMaterialTypes,
                          const CDamageInfo&, TUniqueId, TAreaId, TUniqueId, EProjectileAttrib);

  // CEntity
  void Accept(IVisitor&);
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);

  // CActor
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const;
  void Touch(CActor&, CStateManager&);

  // CBeamProjectile
  void UpdateFx(const CTransform4f&, float, CStateManager&);
  void ResetBeam(CStateManager&, bool);
  void Fire(const CTransform4f&, CStateManager&, bool);

private:
  rstl::single_ptr< CParticleElectric > x468_electric;
  TLockedToken< CGenDescription > x46c_genDescription;
  rstl::single_ptr< CElementGen > x478_elementGen;
  float x47c_fadeSpeed;
  float x480_intensity;
  float x484_damageTimer;
  float x488_damageInterval;
  bool x48c_;
};

#endif // _CELECTRICBEAMPROJECTILE
