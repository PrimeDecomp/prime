#ifndef _CMETROIDPRIMEPROJECTILE
#define _CMETROIDPRIMEPROJECTILE

#include "MetroidPrime/Weapons/CEnergyProjectile.hpp"

struct SPrimeProjectileInfo {
  uint x0_propertyCount;
  TToken< CGenDescription > x4_particle;
  CDamageInfo xc_dInfo;
  float x28_;
  float x2c_;
  float x30_;
  CAssetId x34_texture;
  bool x38_24_ : 1;
  bool x38_25_ : 1;
  bool x38_26_ : 1;
  bool x38_27_ : 1;
  explicit SPrimeProjectileInfo(CInputStream& in);

  const CDamageInfo& GetDamageInfo() const { return xc_dInfo; }
  float Get_0x28() const { return x28_; }
  float Get_0x2c() const { return x2c_; }
  float Get_0x30() const { return x30_; }
  CAssetId GetTexture() const { return x34_texture; }
  bool GetFlag_24() const { return x38_24_; }
  bool GetFlag_25() const { return x38_25_; }
  bool GetFlag_26() const { return x38_26_; }
  bool GetFlag_27() const { return x38_27_; }
};
CHECK_SIZEOF(SPrimeProjectileInfo, 60);

class CMetroidPrimeProjectile : public CEnergyProjectile {
  SPrimeProjectileInfo x3d8_auxData;

public:
  CMetroidPrimeProjectile(
      bool active, const TToken< CWeaponDescription >& desc, EWeaponType type,
      const CTransform4f& xf, EMaterialTypes materials, const CDamageInfo& damage, TUniqueId uid,
      TAreaId aid, TUniqueId owner, const SPrimeProjectileInfo& auxData, TUniqueId homingTarget,
      uint attribs, const CVector3f& scale,
      const rstl::optional_object< TLockedToken< CGenDescription > >& visorParticle, ushort visorSfx,
      bool sendCollideMsg);

  // CEntity
  ~CMetroidPrimeProjectile() override;
  void Accept(IVisitor& visitor) override;

  // CEnergyProjectile
  bool Explode(const CVector3f& pos, const CVector3f& normal, EWeaponCollisionResponseTypes type,
               CStateManager& mgr, const CDamageVulnerability& dVuln, TUniqueId hitActor) override;
};

#endif // _CMETROIDPRIMEPROJECTILE
