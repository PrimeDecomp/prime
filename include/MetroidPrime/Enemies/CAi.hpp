#ifndef _CAI
#define _CAI

#include "MetroidPrime/CDamageVulnerability.hpp"
#include "MetroidPrime/CHealthInfo.hpp"
#include "MetroidPrime/CPhysicsActor.hpp"
#include "MetroidPrime/Enemies/CAiFuncMap.hpp"
#include "MetroidPrime/Enemies/CKnockBackController.hpp"

enum EListenNoiseType {
  kLNT_PlayerFire,
  kLNT_BombExplode,
  kLNT_ProjectileExplode,
};

class CTeamAiRole;
class CAiFuncMap;
class CStateMachine;

class CAi : public CPhysicsActor {
public:
  // static void CreateFuncLookup(CAiFuncMap* funcMap);
  static CAiStateFunc GetStateFunc(const char* func);
  static CAiTriggerFunc GetTriggerFunc(const char* func);

  // const CStateMachine* GetStateMachine() const;
  ~CAi();
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&) override;
  CHealthInfo* HealthInfo(CStateManager&) override;
  const CDamageVulnerability* GetDamageVulnerability() const override { return nullptr; }
  EWeaponCollisionResponseTypes GetCollisionResponseType(const CVector3f&, const CVector3f&,
                                                         const CWeaponMode&,
                                                         EProjectileAttrib) const override;
  void FluidFXThink(EFluidState, CScriptWater&, CStateManager&) override;
  ;

  virtual void Death(CStateManager& mgr, const CVector3f& direction, EScriptObjectState state) = 0;
  virtual void KnockBack(const CVector3f&, CStateManager&, const CDamageInfo& info,
                         EKnockBackType type, bool inDeferred, float magnitude) = 0;
  virtual CDamageVulnerability* GetDamageVulnerability();
  virtual void TakeDamage(const CVector3f& direction, float magnitude);
  virtual bool CanBeShot(const CStateManager&, int);
  virtual bool IsListening() const;
  virtual bool Listen(const CVector3f&, EListenNoiseType);

  virtual CVector3f GetOrigin(const CStateManager& mgr, const CTeamAiRole& role,
                              const CVector3f& aimPos) const;
  virtual void Patrol(CStateManager&, EStateMsg, float);
  virtual void FollowPattern(CStateManager&, EStateMsg, float);
  virtual void Dead(CStateManager&, EStateMsg, float);
  virtual void PathFind(CStateManager&, EStateMsg, float);
  virtual void Start(CStateManager&, EStateMsg, float);
  virtual void SelectTarget(CStateManager&, EStateMsg, float);
  virtual void TargetPatrol(CStateManager&, EStateMsg, float);
  virtual void TargetPlayer(CStateManager&, EStateMsg, float);
  virtual void TargetCover(CStateManager&, EStateMsg, float);
  virtual void Halt(CStateManager&, EStateMsg, float);
  virtual void Walk(CStateManager&, EStateMsg, float);
  virtual void Run(CStateManager&, EStateMsg, float);
  virtual void Generate(CStateManager&, EStateMsg, float);
  virtual void Deactivate(CStateManager&, EStateMsg, float);
  virtual void Attack(CStateManager&, EStateMsg, float);
  virtual void LoopedAttack(CStateManager&, EStateMsg, float);
  virtual void JumpBack(CStateManager&, EStateMsg, float);
  virtual void DoubleSnap(CStateManager&, EStateMsg, float);
  virtual void Shuffle(CStateManager&, EStateMsg, float);
  virtual void TurnAround(CStateManager&, EStateMsg, float);
  virtual void Skid(CStateManager&, EStateMsg, float);
  virtual void Active(CStateManager&, EStateMsg, float);
  virtual void InActive(CStateManager&, EStateMsg, float);
  virtual void CoverAttack(CStateManager&, EStateMsg, float);
  virtual void Crouch(CStateManager&, EStateMsg, float);
  virtual void FadeIn(CStateManager&, EStateMsg, float);
  virtual void FadeOut(CStateManager&, EStateMsg, float);
  virtual void GetUp(CStateManager&, EStateMsg, float);
  virtual void Taunt(CStateManager&, EStateMsg, float);
  virtual void Suck(CStateManager&, EStateMsg, float);
  virtual void Flee(CStateManager&, EStateMsg, float);
  virtual void Lurk(CStateManager&, EStateMsg, float);
  virtual void ProjectileAttack(CStateManager&, EStateMsg, float);
  virtual void Flinch(CStateManager&, EStateMsg, float);
  virtual void Hurled(CStateManager&, EStateMsg, float);
  virtual void TelegraphAttack(CStateManager&, EStateMsg, float);
  virtual void Jump(CStateManager&, EStateMsg, float);
  virtual void Explode(CStateManager&, EStateMsg, float);
  virtual void Dodge(CStateManager&, EStateMsg, float);
  virtual void Retreat(CStateManager&, EStateMsg, float);
  virtual void Cover(CStateManager&, EStateMsg, float);
  virtual void Approach(CStateManager&, EStateMsg, float);
  virtual void WallHang(CStateManager&, EStateMsg, float);
  virtual void WallDetach(CStateManager&, EStateMsg, float);
  virtual void Enraged(CStateManager&, EStateMsg, float);
  virtual void SpecialAttack(CStateManager&, EStateMsg, float);
  virtual void Growth(CStateManager&, EStateMsg, float);
  virtual void Faint(CStateManager&, EStateMsg, float);
  virtual void Land(CStateManager&, EStateMsg, float);
  virtual void Bounce(CStateManager&, EStateMsg, float);
  virtual void PathFindEx(CStateManager&, EStateMsg, float);
  virtual void Dizzy(CStateManager&, EStateMsg, float);
  virtual void CallForBackup(CStateManager&, EStateMsg, float);
  virtual void BulbAttack(CStateManager&, EStateMsg, float);
  virtual void PodAttack(CStateManager&, EStateMsg, float);

  virtual bool InAttackPosition(CStateManager&, float);
  virtual bool Leash(CStateManager&, float);
  virtual bool OffLine(CStateManager&, float);
  virtual bool Attacked(CStateManager&, float);
  virtual bool PathShagged(CStateManager&, float);
  virtual bool PathOver(CStateManager&, float);
  virtual bool PathFound(CStateManager&, float);
  virtual bool TooClose(CStateManager&, float);
  virtual bool InRange(CStateManager&, float);
  virtual bool InMaxRange(CStateManager&, float);
  virtual bool InDetectionRange(CStateManager&, float);
  virtual bool SpotPlayer(CStateManager&, float);
  virtual bool PlayerSpot(CStateManager&, float);
  virtual bool PatternOver(CStateManager&, float);
  virtual bool PatternShagged(CStateManager&, float);
  virtual bool HasAttackPattern(CStateManager&, float);
  virtual bool HasPatrolPath(CStateManager&, float);
  virtual bool HasRetreatPattern(CStateManager&, float);
  virtual bool Delay(CStateManager&, float);
  virtual bool RandomDelay(CStateManager&, float);
  virtual bool FixedDelay(CStateManager&, float);
  virtual bool Default(CStateManager&, float);
  virtual bool AnimOver(CStateManager&, float);
  virtual bool ShouldAttack(CStateManager&, float);
  virtual bool ShouldDoubleSnap(CStateManager&, float);
  virtual bool InPosition(CStateManager&, float);
  virtual bool ShouldTurn(CStateManager&, float);
  virtual bool HitSomething(CStateManager&, float);
  virtual bool ShouldJumpBack(CStateManager&, float);
  virtual bool Stuck(CStateManager&, float);
  virtual bool NoPathNodes(CStateManager&, float);
  virtual bool Landed(CStateManager&, float);
  virtual bool HearShot(CStateManager&, float);
  virtual bool HearPlayer(CStateManager&, float);
  virtual bool CoverCheck(CStateManager&, float);
  virtual bool CoverFind(CStateManager&, float);
  virtual bool CoverBlown(CStateManager&, float);
  virtual bool CoverNearlyBlown(CStateManager&, float);
  virtual bool CoveringFire(CStateManager&, float);
  virtual bool GotUp(CStateManager&, float);
  virtual bool LineOfSight(CStateManager&, float);
  virtual bool AggressionCheck(CStateManager&, float);
  virtual bool AttackOver(CStateManager&, float);
  virtual bool ShouldTaunt(CStateManager&, float);
  virtual bool Inside(CStateManager&, float);
  virtual bool ShouldFire(CStateManager&, float);
  virtual bool ShouldFlinch(CStateManager&, float);
  virtual bool PatrolPathOver(CStateManager&, float);
  virtual bool ShouldDodge(CStateManager&, float);
  virtual bool ShouldRetreat(CStateManager&, float);
  virtual bool ShouldCrouch(CStateManager&, float);
  virtual bool ShouldMove(CStateManager&, float);
  virtual bool ShotAt(CStateManager&, float);
  virtual bool HasTargetingPoint(CStateManager&, float);
  virtual bool ShouldWallHang(CStateManager&, float);
  virtual bool SetAIStage(CStateManager&, float);
  virtual bool AIStage(CStateManager&, float);
  virtual bool StartAttack(CStateManager&, float);
  virtual bool BreakAttack(CStateManager&, float);
  virtual bool ShouldStrafe(CStateManager&, float);
  virtual bool ShouldSpecialAttack(CStateManager&, float);
  virtual bool LostInterest(CStateManager&, float);
  virtual bool CodeTrigger(CStateManager&, float);
  virtual bool BounceFind(CStateManager&, float);
  virtual bool Random(CStateManager&, float);
  virtual bool FixedRandom(CStateManager&, float);
  virtual bool IsDizzy(CStateManager&, float);
  virtual bool ShouldCallForBackup(CStateManager&, float);

private:
  CHealthInfo x258_healthInfo;
  CDamageVulnerability x260_damageVulnerability;
  TLockedToken< CStateMachine > x2c8_stateMachine;
};

#endif // _CAI
