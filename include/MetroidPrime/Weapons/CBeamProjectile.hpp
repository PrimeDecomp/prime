#ifndef _CBEAMPROJECTILE
#define _CBEAMPROJECTILE

#include "types.h"

#include "MetroidPrime/Weapons/CGameProjectile.hpp"

#include "rstl/reserved_vector.hpp"

class CBeamProjectile : public CGameProjectile {
public:
  enum EDamageType {
    kDT_None,
    kDT_Actor,
    kDT_World,
  };

  virtual void UpdateFx(const CTransform4f&, float, CStateManager&);
  virtual void ResetBeam(CStateManager&, bool);
  virtual void Fire(const CTransform4f&, CStateManager&, bool) = 0;

private:
  int x2e8_intMaxLength;
  float x2ec_maxLength;
  float x2f0_invMaxLength;
  float x2f4_beamRadius;
  EDamageType x2f8_damageType;
  TUniqueId x2fc_;
  TUniqueId x2fe_collisionActorId;
  float x300_intBeamLength;
  float x304_beamLength;
  float x308_travelSpeed;
  CVector3f x30c_collisionNormal;
  CVector3f x318_collisionPoint;
  CTransform4f x324_xf;
  CAABox x354_;
  CAABox x36c_;
  rstl::reserved_vector< CVector3f, 10 > x384_;
  rstl::reserved_vector< CVector3f, 8 > x400_pointCache;
  bool x464_24_growingBeam : 1;
  bool x464_25_enableTouchDamage : 1;
};
CHECK_SIZEOF(CBeamProjectile, 0x468)

#endif // _CBEAMPROJECTILE
