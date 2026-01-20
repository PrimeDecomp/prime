#ifndef _CFLAMETHROWER
#define _CFLAMETHROWER
#include "CFlameInfo.hpp"
#include "MetroidPrime/Weapons/CGameProjectile.hpp"

class CFlameThrower : public CGameProjectile {
public:
  CFlameThrower(const TToken< CWeaponDescription >& wDesc, const rstl::string& name,
                const EWeaponType wType, const CFlameInfo& flameInfo, const CTransform4f& xf,
                const EMaterialTypes matType, const CDamageInfo& dInfo, const TUniqueId uid,
                const TAreaId aId, const TUniqueId owner, EProjectileAttrib attribs,
                const CAssetId playerSteamTxtr, const ushort playerHitSfx,
                const CAssetId playerIceTxtr);
  void Reset(CStateManager& mgr, bool);
  bool GetParticlesActive() const { return x400_25_particlesActive; }

private:
  char data[0x400 - 0x2e8];
  bool x400_24_active : 1;
  bool x400_25_particlesActive : 1;
  bool x400_26_ : 1;
  bool x400_27_coneCollision : 1; /* Z-sort and finer collision detection */
};
#endif
