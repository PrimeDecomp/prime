#ifndef _CPUDDLETOADGAMMA
#define _CPUDDLETOADGAMMA

#include "types.h"

#include "MetroidPrime/CDamageInfo.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"

#include "WorldFormat/CCollidableOBBTreeGroup.hpp"

#include "rstl/single_ptr.hpp"

class CPuddleToadGamma : public CPatterned {
public:
  CPuddleToadGamma(TUniqueId uid, const rstl::string& name, EFlavorType flavor,
                   const CEntityInfo& info, const CTransform4f& xf, const CModelData& mData,
                   const CPatternedInfo& pInfo, const CActorParameters& aParms,
                   float suckForceMultiplier, float suckAngle, float playerSuckRange,
                   CVector3f localShootDir, float playerShootSpeed, float shouldAttackWaitTime,
                   float spotPlayerWaitTime, const CDamageInfo& playerShootDamage,
                   const CDamageInfo& dInfo2, uint dcln);

  // CEntity
  ~CPuddleToadGamma() override;
  void Accept(IVisitor& visitor) override;
  void Think(float dt, CStateManager& mgr) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;

  // CActor
  rstl::optional_object< CAABox > GetTouchBounds() const override;
  const CDamageVulnerability* GetDamageVulnerability() const override;
  const CDamageVulnerability* GetDamageVulnerability(const CVector3f& pos, const CVector3f& dir,
                                                     const CDamageInfo& dInfo) const override;
  void DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node, EUserEventType type,
                       float dt) override;

  // CPhysicsActor
  const CCollisionPrimitive* GetCollisionPrimitive() const override;
  CTransform4f GetPrimitiveTransform() const override;

  // CAi
  void InActive(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Active(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Suck(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Attack(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Crouch(CStateManager& mgr, EStateMsg msg, float arg) override;
  bool InAttackPosition(CStateManager& mgr, float arg) override;
  bool SpotPlayer(CStateManager& mgr, float arg) override;
  bool ShouldAttack(CStateManager& mgr, float arg) override;
  bool LostInterest(CStateManager& mgr, float arg) override;
  bool Inside(CStateManager& mgr, float arg) override;

private:
  void SetSolid(CStateManager& mgr, bool solid);
  void CenterPlayer(CStateManager& mgr, const CVector3f& pos);
  void ShootPlayer(CStateManager& mgr, float speed);
  void SuckPlayer(CStateManager& mgr);
  bool PlayerInVortexArea(const CStateManager& mgr);
  void SetPlayerPosition(CStateManager& mgr, const CVector3f& pos);

  static const char* mMouthLocatorName;
  static const char* mBellyLocatorName;
  static CVector3f skBellyOffset;

  int x568_stateProg;
  float x56c_waitTimer;
  CDamageInfo x570_playerShootDamage;
  CDamageInfo x58c_dInfo2;
  float x5a8_suckForceMultiplier;
  float x5ac_minSuckAngleProj;
  float x5b0_playerSuckRange;
  CVector3f x5b4_localShootDir;
  float x5c0_playerShootSpeed;
  float x5c4_shouldAttackWaitTime;
  float x5c8_spotPlayerWaitTime;
  CVector3f x5cc_suckPoint;
  CVector3f x5d8_damageablePoint;
  rstl::single_ptr< CCollidableOBBTreeGroup > x5e4_collisionTreePrim;
  bool x5e8_24_playerInside : 1;
  bool x5e8_25_waitTimerActive : 1;
  bool x5e8_26_shotPlayer : 1;
};
CHECK_SIZEOF(CPuddleToadGamma, 0x5F0)

#endif // _CPUDDLETOADGAMMA
