#ifndef _CPOISONPROJECTILE
#define _CPOISONPROJECTILE

#include "MetroidPrime/Weapons/CEnergyProjectile.hpp"

struct CPoisonInfo {
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

  explicit CPoisonInfo(CInputStream& in);

  const CDamageInfo& GetDamageInfo() const { return xc_dInfo; }
  float Get_0x28() const { return x28_; }
  float Get_0x2c() const { return x2c_; }
  float Get_0x30() const { return x30_; }
  CAssetId GetTexture() const { return x34_texture; }
  const bool GetFlag_24() const { return x38_24_; }
  const bool GetFlag_25() const { return x38_25_; }
  const bool GetFlag_26() const { return x38_26_; }
  const bool GetFlag_27() const { return x38_27_; }
};
CHECK_SIZEOF(CPoisonInfo, 0x3C);

class CPoisonProjectile : public CEnergyProjectile {
  CPoisonInfo x3d8_auxData;

public:
  CPoisonProjectile(bool active, const TToken< CWeaponDescription >& desc, EWeaponType type,
                    const CTransform4f& xf, EMaterialTypes materials, const CDamageInfo& damage,
                    TUniqueId uid, TAreaId aid, TUniqueId owner, const CPoisonInfo& auxData,
                    TUniqueId homingTarget, uint attribs, const CVector3f& scale,
                    const rstl::optional_object< TLockedToken< CGenDescription > >& visorParticle,
                    ushort visorSfx, bool sendCollideMsg);

  // CEntity
  ~CPoisonProjectile() override;
  void Accept(IVisitor& visitor) override;

  // CEnergyProjectile
  bool Explode(const CVector3f& pos, const CVector3f& normal, EWeaponCollisionResponseTypes type,
               CStateManager& mgr, const CDamageVulnerability& dVuln, TUniqueId hitActor) override;
};

#endif // _CPOISONPROJECTILE
