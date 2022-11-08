#include "MetroidPrime/Enemies/CMetroidPrimeProjectile.hpp"

#include "MetroidPrime/ScriptObjects/CFire.hpp"

#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Streams/CInputStream.hpp"

CMetroidPrimeProjectile::CMetroidPrimeProjectile(
    bool active, const TToken< CWeaponDescription >& desc, EWeaponType type, const CTransform4f& xf,
    EMaterialTypes materials, const CDamageInfo& damage, TUniqueId uid, TAreaId aid,
    TUniqueId owner, const SPrimeProjectileInfo& auxData, TUniqueId homingTarget, uint attribs,
    const CVector3f& scale,
    const rstl::optional_object< TLockedToken< CGenDescription > >& visorParticle, ushort visorSfx,
    bool sendCollideMsg)
: CEnergyProjectile(active, desc, type, xf, materials, damage, uid, aid, owner, homingTarget,
                    attribs, false, scale, visorParticle, visorSfx, sendCollideMsg)
, x3d8_auxData(auxData) {}

void CMetroidPrimeProjectile::Accept(IVisitor& visitor) { visitor.Visit(*this); }

// CEnergyProjectile
bool CMetroidPrimeProjectile::Explode(const CVector3f& pos, const CVector3f& normal,
                                      EWeaponCollisionResponseTypes type, CStateManager& mgr,
                                      const CDamageVulnerability& dVuln,
                                      TUniqueId hitActor) {

  bool result = CEnergyProjectile::Explode(pos, normal, type, mgr, dVuln, hitActor);
  if (!x2e4_24_active) {
    TUniqueId newId(mgr.AllocateUniqueId());

    CAABox box(
        CAABox(CVector3f(-1.f, -1.f, -1.f), CVector3f(1.f, 1.f, 1.f))
            .GetTransformedAABox(GetTransform() *
                                 CTransform4f::Scale(x3d8_auxData.GetDamageInfo().GetRadius())));

    CFire* fire =
        new CFire(x3d8_auxData.x4_particle, newId, GetCurrentAreaId(), true, GetUniqueId(),
                  GetTransform(), x3d8_auxData.GetDamageInfo(), box, CVector3f(1.f, 1.f, 1.f),
                  x3d8_auxData.GetFlag_27(), x3d8_auxData.GetTexture(), x3d8_auxData.GetFlag_24(),
                  x3d8_auxData.GetFlag_25(), x3d8_auxData.GetFlag_26(), 1.0,
                  x3d8_auxData.Get_0x28(), x3d8_auxData.Get_0x2c(), x3d8_auxData.Get_0x30());
    if (fire) {
      mgr.AddObject(fire);
    }
  }
  return result;
}

SPrimeProjectileInfo::SPrimeProjectileInfo(CInputStream& in)
: x0_propertyCount(in.ReadLong())
, x4_particle(gpSimplePool->GetObj(SObjectTag('PART', in.ReadLong())))
, xc_dInfo(in)
, x28_(in.ReadFloat())
, x2c_(in.ReadFloat())
, x30_(in.ReadFloat())
, x34_texture(in.ReadLong()) {
  x38_24_ = in.ReadBool();
  x38_25_ = in.ReadBool();
  x38_26_ = in.ReadBool();
  x38_27_ = in.ReadBool();
}

CMetroidPrimeProjectile::~CMetroidPrimeProjectile() {}
