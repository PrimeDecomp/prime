#ifndef _CCOLLISIONACTOR
#define _CCOLLISIONACTOR

#include "types.h"

#include "MetroidPrime/CDamageVulnerability.hpp"
#include "MetroidPrime/CHealthInfo.hpp"
#include "MetroidPrime/CPhysicsActor.hpp"

#include "rstl/single_ptr.hpp"

class CCollidableOBBTreeGroupContainer;
class CCollidableOBBTreeGroup;
class CCollidableAABox;
class CCollidableSphere;

class CCollisionActor : public CPhysicsActor {
public:
  enum EPrimitiveType {
    kPT_OBBTreeGroup,
    kPT_AABox,
    kPT_Sphere,
  };

  CCollisionActor(TUniqueId uid, TAreaId areaId, TUniqueId owner, const CVector3f& extent,
                  const CVector3f& center, bool active, float mass);
  CCollisionActor(TUniqueId uid, TAreaId areaId, TUniqueId owner, const CVector3f& boxSize,
                  bool active, float mass);
  CCollisionActor(TUniqueId uid, TAreaId areaId, TUniqueId owner, bool active, float radius,
                  float mass);

  // CEntity
  ~CCollisionActor();
  void Accept(IVisitor& visitor);
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr);

  // CActor
  CHealthInfo* HealthInfo(CStateManager&);
  const CDamageVulnerability* GetDamageVulnerability() const;
  const CDamageVulnerability* GetDamageVulnerability(const CVector3f&, const CVector3f&,
                                                     const CDamageInfo&) const;
  rstl::optional_object< CAABox > GetTouchBounds() const;
  void Touch(CActor&, CStateManager&);
  CVector3f GetOrbitPosition(const CStateManager&) const;
  CVector3f GetScanObjectIndicatorPosition(const CStateManager&) const;
  EWeaponCollisionResponseTypes GetCollisionResponseType(const CVector3f&, const CVector3f&,
                                                         const CWeaponMode&,
                                                         int /*EProjectileAttrib?*/) const;
  void OnScanStateChange(EScanState, CStateManager&);

  // CPhysicsActor
  CTransform4f GetPrimitiveTransform() const;

private:
  EPrimitiveType x258_primitiveType;
  TUniqueId x25c_owner;
  CVector3f x260_boxSize;
  CVector3f x26c_center;
  rstl::single_ptr< CCollidableOBBTreeGroupContainer > x278_obbContainer;
  rstl::single_ptr< CCollidableOBBTreeGroup > x27c_obbTreeGroupPrimitive;
  rstl::single_ptr< CCollidableAABox > x280_aaboxPrimitive;
  rstl::single_ptr< CCollidableSphere > x284_spherePrimitive;
  float x288_sphereRadius;
  CHealthInfo x28c_healthInfo;
  CDamageVulnerability x294_damageVuln;
  TUniqueId x2fc_lastTouched;
  EWeaponCollisionResponseTypes x300_responseType;
  CVector3f x304_extendedTouchBounds;
};

#endif // _CCOLLISIONACTOR
