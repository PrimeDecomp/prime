#ifndef _CWARWASP
#define _CWARWASP

#include "types.h"

#include "MetroidPrime/Enemies/CPatterned.hpp"
#include "MetroidPrime/PathFinding/CPathFindSearch.hpp"
#include "MetroidPrime/Weapons/CProjectileInfo.hpp"

#include "Collision/CCollidableSphere.hpp"

#include "Kyoto/Animation/CharacterCommon.hpp"
#include "Kyoto/Math/CQuaternion.hpp"

#include "rstl/optional_object.hpp"

class CWarWasp : public CPatterned {
public:
  CWarWasp(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
           const CTransform4f& xf, const CModelData& mData, const CPatternedInfo& pInfo,
           CPatterned::EFlavorType flavor, CPatterned::EColliderType collider,
           const CDamageInfo& dInfo, const CActorParameters& actParms,
           CAssetId projectileWeapon, const CDamageInfo& projectileDamage,
           CAssetId projectileVisorParticle, uint projectileVisorSfx);

  // CEntity
  ~CWarWasp() override;
  void Accept(IVisitor& visitor) override;
  void Think(float dt, CStateManager& mgr) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;

  // CActor
  rstl::optional_object< CAABox > GetTouchBounds() const override;
  void DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node,
                       EUserEventType type) override;
  const CCollisionPrimitive* GetCollisionPrimitive() const override { return &x570_cSphere; }

  // CAi
  void Death(const CVector3f& dir, CStateManager& mgr) override;
  bool IsListening() const override { return true; }
  bool Listen(const CVector3f& pos, EListenNoiseType type) override;
  CVector3f GetOrigin() const override;

  // CAi - state actions
  void Patrol(CStateManager& mgr, EStateMsg msg, float arg) override;
  void PathFind(CStateManager& mgr, EStateMsg msg, float arg) override;
  void TargetPatrol(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Generate(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Deactivate(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Attack(CStateManager& mgr, EStateMsg msg, float arg) override;
  void JumpBack(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Shuffle(CStateManager& mgr, EStateMsg msg, float arg) override;
  void ProjectileAttack(CStateManager& mgr, EStateMsg msg, float arg) override;
  void TelegraphAttack(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Dodge(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Retreat(CStateManager& mgr, EStateMsg msg, float arg) override;
  void SpecialAttack(CStateManager& mgr, EStateMsg msg, float arg) override;

  // CAi - state transitions
  bool InAttackPosition(CStateManager& mgr, float arg) override;
  bool Leash(CStateManager& mgr, float arg) override;
  bool PathShagged(CStateManager& mgr, float arg) override;
  bool AnimOver(CStateManager& mgr, float arg) override;
  bool ShouldAttack(CStateManager& mgr, float arg) override;
  bool InPosition(CStateManager& mgr, float arg) override;
  bool ShouldTurn(CStateManager& mgr, float arg) override;
  bool HearShot(CStateManager& mgr, float arg) override;
  bool ShouldFire(CStateManager& mgr, float arg) override;
  bool ShouldDodge(CStateManager& mgr, float arg) override;
  bool ShouldSpecialAttack(CStateManager& mgr, float arg) override;

  // CPatterned
  CPathFindSearch* GetSearchPath() override { return &x590_pfSearch; }
  CProjectileInfo* ProjectileInfo() override { return &x6d4_projectileInfo; }

private:
  void SwarmAdd(CStateManager& mgr);
  void SwarmRemove(CStateManager& mgr);
  void ApplyDamage(CStateManager& mgr);
  void SetUpCircleBurstWaypoint(CStateManager& mgr);
  CVector3f GetProjectileAimPos(CStateManager& mgr, float zBias);
  CVector3f GetCloseInPos(CStateManager& mgr, const CVector3f& aimPos) const;
  float GetCloseInZBasis(CStateManager& mgr) const;
  void SetUpPathFindBehavior(CStateManager& mgr);
  int GetAttackTeamSize(CStateManager& mgr, int team);
  float CalcTimeToNextAttack(CStateManager& mgr);
  float CalcOffTotemAngle(CStateManager& mgr);
  void JoinCircleAttackTeam(int unit, CStateManager& mgr);
  void SetUpCircleTelegraphTeam(CStateManager& mgr);
  TUniqueId GetAttackTeamLeader(CStateManager& mgr, int team);
  void TryCircleTeamMerge(CStateManager& mgr);
  float GetTeamZStratum(int team);
  float CalcSeekMagnitude(CStateManager& mgr);
  void UpdateTelegraphMoveSpeed(CStateManager& mgr);
  bool CheckCircleAttackSpread(CStateManager& mgr, int team);
  void ApplyNormalSteering(CStateManager& mgr);
  void ApplySeparationBehavior(CStateManager& mgr, float sep);
  bool PathToHiveIsClear(CStateManager& mgr);
  bool SteerToDeactivatePos(CStateManager& mgr, EStateMsg msg, float dt);
  CVector3f CalcShuffleDest(CStateManager& mgr);
  void UpdateTouchBounds();

  int x568_stateProg;
  CCollidableSphere x570_cSphere;
  CPathFindSearch x590_pfSearch;
  TUniqueId x674_aiMgr;
  CVector3f x678_targetPos;
  CDamageInfo x684_contactDamage;
  CQuaternion x6a0_initialRot;
  CVector3f x6b0_circleBurstPos;
  CVector3f x6bc_circleBurstDir;
  CVector3f x6c8_circleBurstRight;
  CProjectileInfo x6d4_projectileInfo;
  float x6fc_initialSpeed;
  float x700_attackRemTime;
  pas::EStepDirection x704_dodgeDir;
  int x708_circleAttackTeam;
  int x70c_initialCircleAttackTeam;
  int x710_initialCircleAttackTeamUnit;
  float x714_circleTelegraphSeekHeight;
  float x718_circleBurstOffTotemAngle;
  rstl::optional_object< TLockedToken< CGenDescription > > x71c_projectileVisorParticle;
  u16 x72c_projectileVisorSfx;
  bool x72e_24_jumpBackRepeat : 1;
  bool x72e_25_canApplyDamage : 1;
  bool x72e_26_initiallyInactive : 1;
  bool x72e_27_teamMatesMelee : 1;
  bool x72e_28_inProjectileAttack : 1;
  bool x72e_29_pathObstructed : 1;
  bool x72e_30_isRetreating : 1;
  bool x72e_31_heardNoise : 1;
};
CHECK_SIZEOF(CWarWasp, 0x730)

#endif // _CWARWASP
