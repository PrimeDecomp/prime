#ifndef _CPATTERNED
#define _CPATTERNED

#include "types.h"

#include "MetroidPrime/CSteeringBehaviors.hpp"
#include "MetroidPrime/Enemies/CAi.hpp"
#include "MetroidPrime/Enemies/CPatternedInfo.hpp"
#include "MetroidPrime/Enemies/CStateMachine.hpp"

class CBodyController;
class CVertexMorphEffect;
class CGenDescription;
class CElectricDescription;
class CPathFindSearch;
class CProjectileInfo;

template < typename T >
struct TPatternedCast {
  CEntity* ent;
  TPatternedCast(CEntity* ent);
};

class CPatterned : public CAi {
public:
  enum ECharacter {
    kC_AtomicAlpha = 0,
    kC_AtomicBeta = 1,
    kC_Babygoth = 2,
    kC_Beetle = 3,
    kC_BloodFlower = 4,
    kC_Burrower = 5,
    kC_ChozoGhost = 6,
    kC_Drone = 7,
    kC_ElitePirate = 8,
    kC_EyeBall = 9,
    kC_FireFlea = 10,
    kC_Flaahgra = 11,
    kC_FlaahgraTentacle = 12,
    kC_FlickerBat = 13,
    kC_FlyingPirate = 14,
    kC_IceSheegoth = 15,
    kC_JellyZap = 16,
    kC_Magdolite = 17,
    kC_Metaree = 18,
    kC_Metroid = 19,
    kC_MetroidBeta = 20,
    kC_MetroidPrimeExo = 21,
    kC_MetroidPrimeEssence = 22,
    kC_NewIntroBoss = 23,
    kC_Parasite = 24,
    kC_PuddleSpore = 27,
    kC_PuddleToad = 28,
    kC_Puffer = 29,
    kC_Ridley = 30,
    kC_Ripper = 31,
    kC_Seedling = 32,
    kC_SpacePirate = 34,
    kC_SpankWeed = 35,
    kC_PhazonHealingNodule = 35,
    kC_Thardus = 36,
    kC_ThardusRockProjectile = 37,
    kC_Tryclops = 38,
    kC_WarWasp = 39,
    kC_EnergyBall = 40
  };
  enum EFlavorType {
    kFT_Zero = 0,
    kFT_One = 1,
    kFT_Two = 2,
  };
  enum EMovementType {
    kMT_Ground = 0,
    kMT_Flyer = 1,
  };
  enum EColliderType {
    kCT_Zero = 0,
    kCT_One = 1,
  };
  enum EPatrolState {
    kPS_Invalid = -1,
    kPS_Patrol,
    kPS_Pause,
    kPS_Done,
  };
  enum EBehaviour {
    kB_Zero,
  };
  enum EBehaviourOrient {
    kBO_MoveDir,
    kBO_Constant,
    kBO_Destination,
  };
  enum EBehaviourModifiers {
    kBM_Zero,
  };
  enum EAnimState {
    kAS_Invalid = -1,
    kAS_NotReady,
    kAS_Ready,
    kAS_Repeat,
    kAS_Over,
  };
  enum EPatternTranslate {
    kPT_RelativeStart,
    kPT_RelativePlayerStart,
    kPT_RelativePlayer,
    kPT_Absolute,
  };
  enum EPatternOrient {
    kPO_StartToPlayer,
    kPO_StartToPlayerStart,
    kPO_ReversePlayerForward,
    kPO_Forward,
  };
  enum EPatternFit {
    kPF_Zero,
    kPF_One,
  };
  enum EMoveState {
    kMS_Zero,
    kMS_One,
    kMS_Two,
    kMS_Three,
    kMS_Four,
  };

  class CPatternNode {
    CVector3f x0_pos;
    CVector3f xc_forward;
    float x18_speed;
    uchar x1c_behaviour;
    uchar x1d_behaviourOrient;
    ushort x1e_behaviourModifiers;
    uint x20_animation;

  public:
    CPatternNode(const CVector3f& pos, const CVector3f& forward, float speed, uint behaviour,
                 uint behaviourOrient, uint behaviourModifiers, uint animation);
    const CVector3f& GetPos() const { return x0_pos; }
    const CVector3f& GetForward() const { return xc_forward; }
    float GetSpeed() const { return x18_speed; }
    uchar GetBehaviour() const { return x1c_behaviour; }
    uchar GetBehaviourOrient() const { return x1d_behaviourOrient; }
    ushort GetBehaviourModifiers() const { return x1e_behaviourModifiers; }
  };

  CPatterned(ECharacter character, TUniqueId uid, const rstl::string& name, EFlavorType flavor,
             const CEntityInfo& info, const CTransform4f& xf, const CModelData& mData,
             const CPatternedInfo& pinfo, EMovementType movement, EColliderType collider,
             EBodyType body, const CActorParameters& params, EKnockBackVariant kbVariant);

  // CEntity
  ~CPatterned();
  void Accept(IVisitor& visitor);
  void PreThink(float dt, CStateManager& mgr);
  void Think(float dt, CStateManager& mgr);
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);

  // CActor
  void PreRender(CStateManager&, const CFrustumPlanes&);
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const;
  void Render(const CStateManager&) const;
  bool CanRenderUnsorted(const CStateManager&) const;
  rstl::optional_object< CAABox > GetTouchBounds() const;
  void Touch(CActor&, CStateManager&);
  CVector3f GetOrbitPosition(const CStateManager&) const;
  CVector3f GetAimPosition(const CStateManager&, float) const;
  EWeaponCollisionResponseTypes GetCollisionResponseType(const CVector3f&, const CVector3f&,
                                                         const CWeaponMode&,
                                                         int /*EProjectileAttrib?*/) const;
  void DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node, EUserEventType type,
                       float dt);

  // CPhysicsActor
  void CollidedWith(const TUniqueId& id, const CCollisionInfoList& list,
                    CStateManager& mgr);

  // CAi
  void Death(CStateManager& mgr, const CVector3f& direction, EScriptObjectState state);
  void KnockBack(const CVector3f&, CStateManager&, const CDamageInfo& info, EKnockBackType type,
                 bool inDeferred, float magnitude);
  void TakeDamage(const CVector3f& direction, float magnitude);
  void Patrol(CStateManager&, EStateMsg, float);
  void FollowPattern(CStateManager&, EStateMsg, float);
  void Dead(CStateManager&, EStateMsg, float);
  void PathFind(CStateManager&, EStateMsg, float);
  void Start(CStateManager&, EStateMsg, float);
  void TargetPatrol(CStateManager&, EStateMsg, float);
  void TargetPlayer(CStateManager&, EStateMsg, float);
  bool Leash(CStateManager&, float);
  bool OffLine(CStateManager&, float);
  bool Attacked(CStateManager&, float);
  bool PathShagged(CStateManager&, float);
  bool PathOver(CStateManager&, float);
  bool PathFound(CStateManager&, float);
  bool TooClose(CStateManager&, float);
  bool InRange(CStateManager&, float);
  bool InMaxRange(CStateManager&, float);
  bool InDetectionRange(CStateManager&, float);
  bool SpotPlayer(CStateManager&, float);
  bool PlayerSpot(CStateManager&, float);
  bool PatternOver(CStateManager&, float);
  bool PatternShagged(CStateManager&, float);
  bool HasAttackPattern(CStateManager&, float);
  bool HasPatrolPath(CStateManager&, float);
  bool HasRetreatPattern(CStateManager&, float);
  bool Delay(CStateManager&, float);
  bool RandomDelay(CStateManager&, float);
  bool FixedDelay(CStateManager&, float);
  bool Default(CStateManager&, float);
  bool AnimOver(CStateManager&, float);
  bool InPosition(CStateManager&, float);
  bool Stuck(CStateManager&, float);
  bool NoPathNodes(CStateManager&, float);
  bool Landed(CStateManager&, float);
  bool PatrolPathOver(CStateManager&, float);
  bool CodeTrigger(CStateManager&, float);
  bool Random(CStateManager&, float);
  bool FixedRandom(CStateManager&, float);

  // CPatterned
  virtual void Freeze(CStateManager& mgr, const CVector3f& pos, const CUnitVector3f& dir,
                      float frozenDur);
  virtual bool KnockbackWhenFrozen() const { return true; }
  virtual void MassiveDeath(CStateManager& mgr);
  virtual void MassiveFrozenDeath(CStateManager& mgr);
  virtual void Burn(float duration, float damage);
  virtual void Shock(CStateManager& mgr, float duration, float damage);
  virtual void ThinkAboutMove(float);
  virtual CPathFindSearch* GetSearchPath() { return nullptr; }
  virtual CDamageInfo GetContactDamage() const { return x404_contactDamage; }
  virtual u8 GetModelAlphau8(const CStateManager&) const { return x42c_color.GetAlphau8(); }
  virtual bool IsOnGround() const { return x328_27_onGround; }
  virtual float GetGravityConstant() const { return CPhysicsActor::GravityConstant(); }
  virtual CProjectileInfo* ProjectileInfo() { return nullptr; }
  virtual void PhazeOut(CStateManager&);
  virtual const rstl::optional_object< TLockedToken< CGenDescription > >&
  GetDeathExplosionParticle() const {
    return x520_deathExplosionParticle;
  }

  void DeathDelete(CStateManager& mgr);
  CTransform4f GetLctrTransform(const rstl::string&) const;

  TUniqueId GetDestObj() const { return x2dc_destObj; } // TODO: name?
  CStateMachineState& StateMachineState() { return x330_stateMachineState; }
  const CStateMachineState& GetStateMachineState() const { return x330_stateMachineState; }
  ECharacter GetCharacterType() const { return x34c_characterType; }
  bool IsAlive() const { return x400_25_alive; }
  void SetWasHit(bool v) { x400_24_hitByPlayerProjectile = v; }
  void SetPendingDeath(bool v) { x401_30_pendingDeath = v; }
  CBodyController* GetBodyCtrl() { return x450_bodyController.get(); }
  const CBodyController* GetBodyCtrl() const { return x450_bodyController.get(); }
  CKnockBackController& GetKnockBackCtrl() { return x460_knockBackController; }
  const CKnockBackController& GetKnockBackCtrl() const { return x460_knockBackController; }

  template < class T >
  static T* CastTo(const TPatternedCast< T >& ent);

private:
  EPatrolState x2d8_patrolState;
  TUniqueId x2dc_destObj;
  CVector3f x2e0_destPos;
  CVector3f x2ec_reflectedDestPos;
  float x2f8_waypointPauseRemTime;
  float x2fc_minAttackRange;
  float x300_maxAttackRange;
  float x304_averageAttackTime;
  float x308_attackTimeVariation;
  EBehaviourOrient x30c_behaviourOrient;
  CVector3f x310_moveVec;
  CVector3f x31c_faceVec;
  bool x328_24_inPosition : 1;
  bool x328_25_verticalMovement : 1;
  bool x328_26_solidCollision : 1;
  bool x328_27_onGround : 1;
  bool x328_28_prevOnGround : 1;
  bool x328_29_noPatternShagging : 1;
  bool x328_30_lookAtDeathDir : 1;
  bool x328_31_energyAttractor : 1;
  bool x329_24_ : 1;
  EAnimState x32c_animState;
  CStateMachineState x330_stateMachineState;
  ECharacter x34c_characterType;
  CVector3f x350_patternStartPos;
  CVector3f x35c_patternStartPlayerPos;
  CVector3f x368_destWPDelta;
  EPatternTranslate x374_patternTranslate;
  EPatternOrient x378_patternOrient;
  EPatternFit x37c_patternFit;
  EBehaviour x380_behaviour;
  EBehaviourModifiers x384_behaviourModifiers;
  int x388_anim;
  rstl::vector< CPatternNode > x38c_patterns;
  uint x39c_curPattern;
  CVector3f x3a0_latestLeashPosition;
  TUniqueId x3ac_lastPatrolDest;
  float x3b0_moveSpeed;
  float x3b4_speed;
  float x3b8_turnSpeed;
  float x3bc_detectionRange;
  float x3c0_detectionHeightRange;
  float x3c4_detectionAngle;
  float x3c8_leashRadius;
  float x3cc_playerLeashRadius;
  float x3d0_playerLeashTime;
  float x3d4_curPlayerLeashTime;
  float x3d8_xDamageThreshold;
  float x3dc_frozenXDamageThreshold;
  float x3e0_xDamageDelay;
  float x3e4_lastHP;
  float x3e8_alphaDelta;
  float x3ec_pendingFireDamage;
  float x3f0_pendingShockDamage;
  float x3f4_burnThinkRateTimer;
  EMoveState x3f8_moveState;
  EFlavorType x3fc_flavor;
  uint x400_24_hitByPlayerProjectile : 1;
  uint x400_25_alive : 1;
  uint x400_26_ : 1;
  uint x400_27_fadeToDeath : 1;
  uint x400_28_pendingMassiveDeath : 1;
  uint x400_29_pendingMassiveFrozenDeath : 1;
  uint x400_30_patternShagged : 1;
  uint x400_31_isFlyer : 1;
  uint x401_24_pathOverCount : 2;
  uint x401_26_disableMove : 1;
  uint x401_27_phazingOut : 1;
  uint x401_28_burning : 1;
  uint x401_29_laggedBurnDeath : 1;
  uint x401_30_pendingDeath : 1;
  uint x401_31_nextPendingShock : 1;
  uint x402_24_pendingShock : 1;
  uint x402_25_lostMassiveFrozenHP : 1;
  uint x402_26_dieIf80PercFrozen : 1;
  uint x402_27_noXrayModel : 1;
  uint x402_28_isMakingBigStrike : 1;
  uint x402_29_drawParticles : 1;
  uint x402_30_updateThermalFrozenState : 1;
  uint x402_31_thawed : 1;
  uint x403_24_keepThermalVisorState : 1;
  uint x403_25_enableStateMachine : 1;
  uint x403_26_stateControlledMassiveDeath : 1;
  CDamageInfo x404_contactDamage;
  float x420_curDamageRemTime;
  float x424_damageWaitTime;
  float x428_damageCooldownTimer;
  CColor x42c_color;
  CColor x430_damageColor;
  CVector3f x434_posDelta;
  CQuaternion x440_rotDelta;
  rstl::single_ptr< CBodyController > x450_bodyController;
  u32 x454_deathSfx;
  u32 x458_iceShatterSfx;
  CSteeringBehaviors x45c_steeringBehaviors;
  CKnockBackController x460_knockBackController;
  CVector3f x4e4_latestPredictedTranslation;
  float x4f0_predictedLeashTime;
  float x4f4_intoFreezeDur;
  float x4f8_outofFreezeDur;
  float x4fc_freezeDur;
  float x500_preThinkDt;
  float x504_damageDur;
  EColliderType x508_colliderType;
  float x50c_baseDamageMag;
  rstl::single_ptr< CVertexMorphEffect > x510_vertexMorph;
  CVector3f x514_deathExplosionOffset;
  rstl::optional_object< TLockedToken< CGenDescription > > x520_deathExplosionParticle;
  rstl::optional_object< TLockedToken< CElectricDescription > > x530_deathExplosionElectric;
  CVector3f x540_iceDeathExplosionOffset;
  rstl::optional_object< TLockedToken< CGenDescription > > x54c_iceDeathExplosionParticle;
  CVector3f x55c_moveScale;
};
CHECK_SIZEOF(CPatterned, 0x568)

#endif // _CPATTERNED
