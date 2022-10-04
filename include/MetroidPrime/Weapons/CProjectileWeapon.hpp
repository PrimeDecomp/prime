#ifndef _CPROJECTILEWEAPON_HPP
#define _CPROJECTILEWEAPON_HPP

#include "types.h"

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/Graphics/CColor.hpp"
#include "Kyoto/Math/CTransform4f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/optional_object.hpp"
#include "rstl/single_ptr.hpp"

class CWeaponDescription;
class CElementGen;
class CModel;
class CParticleSwoosh;

class CProjectileWeapon {
public:
  // TODO ctor

  virtual ~CProjectileWeapon();
  virtual void Update(float dt);
  virtual void AddToRenderer();
  virtual void Render();
  virtual CVector3f GetTranslation() const;
  virtual CTransform4f GetTransform() const;

private:
  TLockedToken< CWeaponDescription > x4_weaponDesc;
  CRandom16 x10_random;
  CTransform4f x14_localToWorldXf;
  CTransform4f x44_localXf;
  CVector3f x74_worldOffset;
  CVector3f x80_localOffset;
  CVector3f x8c_projOffset;
  CVector3f x98_scale;
  CVector3f xa4_localOffset2;
  CVector3f xb0_velocity;
  CVector3f xbc_gravity;
  CColor xc8_ambientLightColor;
  double xd0_curTime;
  double xd8_remainderTime;
  float xe0_maxTurnRate;
  int xe4_flags;
  int xe8_lifetime;
  int xec_childSystemUpdateRate;
  int xf0_;
  int xf4_curFrame;
  int xf8_lastParticleFrame;
  rstl::single_ptr< CElementGen > xfc_APSMGen;
  rstl::single_ptr< CElementGen > x100_APS2Gen;
  rstl::single_ptr< CElementGen > x104_;
  rstl::optional_object< TLockedToken< CModel > > x108_model;
  rstl::single_ptr< CParticleSwoosh > x118_swoosh1;
  rstl::single_ptr< CParticleSwoosh > x11c_swoosh2;
  rstl::single_ptr< CParticleSwoosh > x120_swoosh3;
  bool x124_24_active : 1;
  bool x124_25_APSO : 1;
  bool x124_26_AP11 : 1;
  bool x124_27_AP21 : 1;
  bool x124_28_AS11 : 1;
  bool x124_29_AS12 : 1;
  bool x124_30_AS13 : 1;
  bool x124_31_VMD2 : 1;
};
CHECK_SIZEOF(CProjectileWeapon, 0x128)

#endif
