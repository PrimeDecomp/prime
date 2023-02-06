#ifndef _CMETAREE
#define _CMETAREE

#include "types.h"

#include "MetroidPrime/CDamageInfo.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"

class CPatternedInfo;
class CGenDescription;

class CMetaree : public CPatterned {
public:
  CMetaree(TUniqueId uid, const rstl::string& name, EFlavorType flavor, const CEntityInfo& info,
           const CTransform4f& xf, const CModelData& mData, const CPatternedInfo& pInfo,
           const CDamageInfo& dInfo, float f1, const CVector3f& v1, float f2, EBodyType bodyType,
           float f3, float f4, const CActorParameters& aParms);

  // CEntity
  void Accept(IVisitor& visitor);
  void Think(float dt, CStateManager& mgr);
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr);

  // CActor
  void Touch(CActor&, CStateManager&);

  // CPhysicsActor
  void CollidedWith(const TUniqueId& id, const CCollisionInfoList& list,
                    CStateManager& mgr);

  // CAi
  void Dead(CStateManager&, EStateMsg, float);
  void Halt(CStateManager&, EStateMsg, float);
  void Attack(CStateManager&, EStateMsg, float);
  void Active(CStateManager&, EStateMsg, float);
  void InActive(CStateManager&, EStateMsg, float);
  void Flee(CStateManager&, EStateMsg, float);
  void Explode(CStateManager&, EStateMsg, float);
  bool InRange(CStateManager&, float);
  bool Delay(CStateManager&, float);
  bool ShouldAttack(CStateManager&, float);

  // CPatterned
  void ThinkAboutMove(float);

private:
  float x568_delay;
  float x56c_haltDelay;
  float x570_dropHeight;
  CVector3f x574_offset;
  float x580_attackSpeed;
  CVector3f x584_lookPos;
  CVector3f x590_projectileDelta;
  CVector3f x59c_velocity;
  int x5a8_;
  CDamageInfo x5ac_damageInfo;
  ushort x5c8_attackSfx;
  bool x5ca_24_ : 1;
  bool x5ca_25_started : 1;
  bool x5ca_26_deactivated : 1;
  uint x5cc_;
};

#endif // _CMETAREE
