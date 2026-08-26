#ifndef _CFLAMETHROWER
#define _CFLAMETHROWER
#include "CFlameInfo.hpp"
#include "MetroidPrime/CFlameWarp.hpp"
#include "MetroidPrime/Weapons/CGameProjectile.hpp"

class CFlameThrower : public CGameProjectile {
public:
  enum EFlameState {
    kFS_Default,
    kFS_FireStart,
    kFS_FireActive,
    kFS_FireStopTimer,
    kFS_FireWaitForParticlesDone,
  };
  CFlameThrower(const TToken< CWeaponDescription >& wDesc, const rstl::string& name,
                const EWeaponType wType, const CFlameInfo& flameInfo, const CTransform4f& xf,
                const EMaterialTypes matType, const CDamageInfo& dInfo, const TUniqueId uid,
                const TAreaId aId, const TUniqueId owner, EProjectileAttrib attribs,
                const CAssetId playerSteamTxtr, const ushort playerHitSfx,
                const CAssetId playerIceTxtr);
  void Reset(CStateManager& mgr, bool);
  bool GetParticlesActive() const { return x400_25_particlesActive; }

  void Fire(const CTransform4f&, CStateManager& mgr, bool);

  void SetTransform(const CTransform4f& xf, CStateManager& mgr, float);

private:
  CTransform4f x2e8_;
  CAABox x318_;
  float x330_;
  float x334_;
  float x338_flame;
  TCachedToken< CGenDescription > x33c_flamethrowerDesc;
  rstl::single_ptr< CElementGen > x348_flameGen;
  CFlameWarp x34c_flameWarp;
  EFlameState x3f0_flameState;
  CAssetId x3f4_playerSteamTextureId;
  short x3f8_playerHitSfx;
  CAssetId x3f8_playerIceTextureId;
  bool x400_24_active : 1;
  bool x400_25_particlesActive : 1;
  bool x400_26_ : 1;
  bool x400_27_coneCollision : 1; /* Z-sort and finer collision detection */

  static const CVector3f kLightOffset;
};
#endif
