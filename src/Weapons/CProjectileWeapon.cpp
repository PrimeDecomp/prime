#include "Weapons/CProjectileWeapon.hpp"

#include "Weapons/CWeaponDescription.hpp"

#include "Kyoto/Math/CloseEnough.hpp"
#include "Kyoto/Math/CRelAngle.hpp"
#include "Kyoto/Particles/CElementGen.hpp"
#include "Kyoto/Particles/CParticleSwoosh.hpp"

#include "rstl/math.hpp"

CProjectileWeapon::CProjectileWeapon(const TToken< CWeaponDescription >& desc,
                                     const CVector3f& worldOffset, const CTransform4f& orient,
                                     const CVector3f& scale, int flags)
: x4_weaponDesc(desc)
, x14_localToWorldXf(orient)
, x44_localXf(CTransform4f::Identity())
, x74_worldOffset(worldOffset)
, x80_localOffset(CVector3f::Zero())
, x8c_projOffset(CVector3f::Zero())
, x98_scale(CVector3f(1.f, 1.f, 1.f))
, xa4_localOffset2(CVector3f::Zero())
, xb0_velocity(CVector3f::Zero())
, xbc_gravity(CVector3f::Zero())
, xc8_ambientLightColor(CColor::White())
, xd0_curTime(0.0)
, xd8_remainderTime(0.0)
, xe0_maxTurnRate(0.f)
, xe4_flags(flags)
, xe8_lifetime(0)
, xec_childSystemUpdateRate(0)
, xf0_(0)
, xf4_curFrame(0)
, xf8_lastParticleFrame(-1)
, xfc_APSMGen(nullptr)
, x100_APS2Gen(nullptr)
, x104_(nullptr)
, x118_swoosh1(nullptr)
, x11c_swoosh2(nullptr)
, x120_swoosh3(nullptr)
, x124_24_active(true)
, x124_25_APSO(false)
, x124_26_AP11(false)
, x124_27_AP21(false)
, x124_28_AS11(false)
, x124_29_AS12(false)
, x124_30_AS13(false)
, x124_31_VMD2(false) {
  CGlobalRandom gr(x10_random);
  x124_31_VMD2 = x4_weaponDesc->x10_VMD2;
  x124_25_APSO = x4_weaponDesc->x28_APSO;
  /* TODO: Getters */
  if (x4_weaponDesc->x34_APSM) {
    xfc_APSMGen =
        new CElementGen(*x4_weaponDesc->x34_APSM, CElementGen::kMOT_Normal,
                        (xe4_flags & 0x1) == 0x1 ? CElementGen::kOSF_Two : CElementGen::kOSF_One);
    xfc_APSMGen->SetGlobalScale(scale);
  }

  if (x4_weaponDesc->x44_APS2) {
    x100_APS2Gen =
        new CElementGen(*x4_weaponDesc->x44_APS2, CElementGen::kMOT_Normal,
                        (xe4_flags & 0x1) == 0x1 ? CElementGen::kOSF_Two : CElementGen::kOSF_One);
    x100_APS2Gen->SetGlobalScale(scale);
  }
  if (x4_weaponDesc->x54_ASW1) {
    x118_swoosh1 = new CParticleSwoosh(*x4_weaponDesc->x54_ASW1, 0);
    x118_swoosh1->SetGlobalScale(scale);
  }
  if (x4_weaponDesc->x64_ASW2) {
    x11c_swoosh2 = new CParticleSwoosh(*x4_weaponDesc->x64_ASW2, 0);
    x11c_swoosh2->SetGlobalScale(scale);
  }
  if (x4_weaponDesc->x74_ASW3) {
    x120_swoosh3 = new CParticleSwoosh(*x4_weaponDesc->x74_ASW3, 0);
    x120_swoosh3->SetGlobalScale(scale);
  }

  if (x4_weaponDesc->x14_PSLT) {
    x4_weaponDesc->x14_PSLT->GetValue(0, xe8_lifetime);
  } else {
    xe8_lifetime = 0x7FFFFF;
  }

  if (x4_weaponDesc->x4_IVEC) {
    x4_weaponDesc->x4_IVEC->GetValue(0, xb0_velocity);
  }

  if (x4_weaponDesc->x0_IORN) {
    CTransform4f xf(CTransform4f::Identity());
    CVector3f orn(0.f, 0.f, 0.f);
    x4_weaponDesc->x0_IORN->GetValue(0, orn);
    xf.RotateLocalX(CRelAngle::FromDegrees(orn.GetX()));
    xf.RotateLocalY(CRelAngle::FromDegrees(orn.GetY()));
    xf.RotateLocalZ(CRelAngle::FromDegrees(orn.GetZ()));
    SetRelativeOrientation(xf);
  } else {
    SetRelativeOrientation(CTransform4f::Identity());
  }
  x108_model = x4_weaponDesc->x84_OHEF;
  x124_26_AP11 = x4_weaponDesc->x2a_AP11;
  x124_27_AP21 = x4_weaponDesc->x2b_AP21;
  x124_28_AS11 = x4_weaponDesc->x2c_AS11;
  x124_29_AS12 = x4_weaponDesc->x2d_AS12;
  x124_30_AS13 = x4_weaponDesc->x2e_AS13;
  UpdateChildParticleSystems(GetTickPeriod());
}

CProjectileWeapon::~CProjectileWeapon() {
  delete xfc_APSMGen;
  delete x100_APS2Gen;
  delete x104_;
  delete x118_swoosh1;
  delete x11c_swoosh2;
  delete x120_swoosh3;
}

void CProjectileWeapon::Update(float dt) {
  CGlobalRandom gr(x10_random);
  xec_childSystemUpdateRate = 0;
  double useDt = close_enough(dt, GetTickPeriod()) ? GetTickPeriod() : dt;
  useDt = rstl::max_val(0.0, useDt);
  xd0_curTime += useDt;
}
