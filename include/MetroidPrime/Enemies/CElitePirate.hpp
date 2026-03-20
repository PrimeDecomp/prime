#ifndef _CELITEPIRATE
#define _CELITEPIRATE

#include "types.h"

#include "Collision/CCollidableAABox.hpp"
#include "MetroidPrime/CActorParameters.hpp"
#include "MetroidPrime/CAnimationParameters.hpp"
#include "MetroidPrime/CBoneTracking.hpp"
#include "MetroidPrime/CDamageInfo.hpp"
#include "MetroidPrime/CDamageVulnerability.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"
#include "MetroidPrime/PathFinding/CPathFindSearch.hpp"
#include "MetroidPrime/Weapons/CShockWave.hpp"

#include "Kyoto/TToken.hpp"

#include "rstl/reserved_vector.hpp"

class CCollisionActorManager;
class CGenDescription;

struct SGrenadeVelocityInfo {
  float x0_mass;
  float x4_speed;
};
CHECK_SIZEOF(SGrenadeVelocityInfo, 0x8)

struct SGrenadeTrajectoryInfo {
  float x0_grenadeSpeed;
  float x4_grenadeAcceleration;
  float x8_angleXRange;
  float xc_angleZRange;

  SGrenadeTrajectoryInfo(CInputStream& in);
};
CHECK_SIZEOF(SGrenadeTrajectoryInfo, 0x10)

class CElitePirateData {
public:
  CElitePirateData(CInputStream& in, int propCount);
  CElitePirateData(const CElitePirateData& other);

  static int GetMinProperties() { return skMinProperties; }

  float GetTauntInterval() const { return x0_tauntInterval; }
  float GetTauntVariance() const { return x4_tauntVariance; }
  float GetAttackChance() const { return x10_attackChance; }
  float GetShotAtTime() const { return x14_shotAtTime; }
  float GetShotAtTimeVariance() const { return x18_shotAtTimeVariance; }
  float GetProjectileAttractionRadius() const { return x1c_projectileAttractionRadius; }
  CAssetId GetEnergyAbsorbParticleDescId() const { return x20_energyAbsorbParticleDescId; }
  ushort GetEnergyAbsorbSfxId() const { return x24_energyAbsorbSfxId; }
  const CActorParameters& GetLauncherActParams() const { return x28_launcherActParams; }
  const CAnimationParameters& GetLauncherAnimParams() const { return x90_launcherAnimParams; }
  CAssetId GetLauncherParticleGenDescId() const { return x9c_launcherParticleGenDescId; }
  ushort GetLauncherSfxId() const { return xa0_launcherSfxId; }
  CAssetId GetGrenadeModelId() const { return xa4_grenadeModelId; }
  const CDamageInfo& GetGrenadeDamageInfo() const { return xa8_grenadeDamageInfo; }
  float GetLauncherHP() const { return xc4_launcherHp; }
  CAssetId GetGrenadeElementGenDescId1() const { return xc8_grenadeElementGenDescId1; }
  CAssetId GetGrenadeElementGenDescId2() const { return xcc_grenadeElementGenDescId2; }
  CAssetId GetGrenadeElementGenDescId3() const { return xd0_grenadeElementGenDescId3; }
  CAssetId GetGrenadeElementGenDescId4() const { return xd4_grenadeElementGenDescId4; }
  const SGrenadeVelocityInfo& GetGrenadeVelocityInfo() const { return xd8_grenadeVelocityInfo; }
  const SGrenadeTrajectoryInfo& GetGrenadeTrajectoryInfo() const {
    return xe0_grenadeTrajectoryInfo;
  }
  uint GetGrenadeNumBounces() const { return xf0_grenadeNumBounces; }
  ushort GetGrenadeBounceSfxId() const { return xf4_grenadeBounceSfxId; }
  ushort GetGrenadeExplodeSfxId() const { return xf6_grenadeExplodeSfxId; }
  CAssetId GetShockwaveParticleDescId() const { return xf8_shockwaveParticleDescId; }
  const CDamageInfo& GetShockwaveDamageInfo() const { return xfc_shockwaveDamageInfo; }
  CAssetId GetShockwaveWeaponDescId() const { return x118_shockwaveWeaponDescId; }
  ushort GetShockwaveElectrocuteSfxId() const { return x11c_shockwaveElectrocuteSfxId; }
  bool CanCallForBackup() const { return x11e_canCallForBackup; }
  bool IsFastWhenAttractingEnergy() const { return x11f_fastWhenAttractingEnergy; }

private:
  float x0_tauntInterval;
  float x4_tauntVariance;
  float x8_;
  float xc_;
  float x10_attackChance;
  float x14_shotAtTime;
  float x18_shotAtTimeVariance;
  float x1c_projectileAttractionRadius;
  CAssetId x20_energyAbsorbParticleDescId;
  ushort x24_energyAbsorbSfxId;
  CActorParameters x28_launcherActParams;
  CAnimationParameters x90_launcherAnimParams;
  CAssetId x9c_launcherParticleGenDescId;
  ushort xa0_launcherSfxId;
  CAssetId xa4_grenadeModelId;
  CDamageInfo xa8_grenadeDamageInfo;
  float xc4_launcherHp;
  CAssetId xc8_grenadeElementGenDescId1;
  CAssetId xcc_grenadeElementGenDescId2;
  CAssetId xd0_grenadeElementGenDescId3;
  CAssetId xd4_grenadeElementGenDescId4;
  SGrenadeVelocityInfo xd8_grenadeVelocityInfo;
  SGrenadeTrajectoryInfo xe0_grenadeTrajectoryInfo;
  uint xf0_grenadeNumBounces;
  ushort xf4_grenadeBounceSfxId;
  ushort xf6_grenadeExplodeSfxId;
  CAssetId xf8_shockwaveParticleDescId;
  CDamageInfo xfc_shockwaveDamageInfo;
  CAssetId x118_shockwaveWeaponDescId;
  ushort x11c_shockwaveElectrocuteSfxId;
  bool x11e_canCallForBackup;
  bool x11f_fastWhenAttractingEnergy;

  static const int skMinProperties;
};
CHECK_SIZEOF(CElitePirateData, 0x120)

class CElitePirate : public CPatterned {
public:
  CElitePirate(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
               const CTransform4f& xf, const CModelData& mData, const CPatternedInfo& pInfo,
               const CActorParameters& actParms, const CElitePirateData& data);
  ~CElitePirate();

  void Accept(IVisitor& visitor) override;
  void Think(float dt, CStateManager& mgr) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;
  void PreRender(CStateManager& mgr, const CFrustumPlanes& frustum) override;
  const CDamageVulnerability* GetDamageVulnerability() const override;
  const CDamageVulnerability* GetDamageVulnerability(const CVector3f& pos, const CVector3f& dir,
                                                     const CDamageInfo& dInfo) const override;
  CVector3f GetOrbitPosition(const CStateManager& mgr) const override;
  CVector3f GetAimPosition(const CStateManager& mgr, float dt) const override;
  void DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node, EUserEventType type,
                       float dt) override;
  const CCollisionPrimitive* GetCollisionPrimitive() const override;
  void KnockBack(const CVector3f& dir, CStateManager& mgr, const CDamageInfo& info,
                 EKnockBackType type, bool inDeferred, float magnitude) override;
  void TakeDamage(const CVector3f& dir, float arg) override;
  void Patrol(CStateManager& mgr, EStateMsg msg, float dt) override;
  void PathFind(CStateManager& mgr, EStateMsg msg, float dt) override;
  void TargetPatrol(CStateManager& mgr, EStateMsg msg, float dt) override;
  void Halt(CStateManager& mgr, EStateMsg msg, float dt) override;
  void Run(CStateManager& mgr, EStateMsg msg, float dt) override;
  void Generate(CStateManager& mgr, EStateMsg msg, float dt) override;
  void Attack(CStateManager& mgr, EStateMsg msg, float dt) override;
  void Taunt(CStateManager& mgr, EStateMsg msg, float dt) override;
  void ProjectileAttack(CStateManager& mgr, EStateMsg msg, float dt) override;
  void Cover(CStateManager& mgr, EStateMsg msg, float dt) override;
  void SpecialAttack(CStateManager& mgr, EStateMsg msg, float dt) override;
  void CallForBackup(CStateManager& mgr, EStateMsg msg, float dt) override;
  bool TooClose(CStateManager& mgr, float arg) override;
  bool InDetectionRange(CStateManager& mgr, float arg) override;
  bool SpotPlayer(CStateManager& mgr, float arg) override;
  bool AnimOver(CStateManager& mgr, float arg) override;
  bool ShouldAttack(CStateManager& mgr, float arg) override;
  bool InPosition(CStateManager& mgr, float arg) override;
  bool ShouldTurn(CStateManager& mgr, float arg) override;
  bool AggressionCheck(CStateManager& mgr, float arg) override;
  bool ShouldTaunt(CStateManager& mgr, float arg) override;
  bool ShouldFire(CStateManager& mgr, float arg) override;
  bool ShotAt(CStateManager& mgr, float arg) override;
  bool ShouldSpecialAttack(CStateManager& mgr, float arg) override;
  bool ShouldCallForBackup(CStateManager& mgr, float arg) override;
  CPathFindSearch* GetSearchPath() override;
  virtual bool HasWeakPointHead() const;
  virtual bool IsElitePirate() const;
  virtual void SetupHealthInfo(CStateManager& mgr);
  virtual void SetLaunchersActive(CStateManager& mgr, bool val);
  virtual CShockWaveInfo GetShockWaveData() const;

protected:
  const CElitePirateData& GetData() const { return x5d8_data; }
  TUniqueId GetLauncherId() const { return x772_launcherId; }

private:
  struct SPositionHistory {
    float x0_magSquared;
    rstl::reserved_vector< CVector3f, 16 > x4_values;

    SPositionHistory(float mag);
  };

  enum EState {
    kState_Invalid = -1,
    kState_Zero = 0,
    kState_One = 1,
    kState_Two = 2,
    kState_Over = 3,
  };

  EState x568_state;
  CDamageVulnerability x56c_vulnerability;
  CCollisionActorManager* x5d4_collisionActorMgr;
  CElitePirateData x5d8_data;
  CBoneTracking x6f8_boneTracking;
  CCollisionActorManager* x730_collisionActorMgrHead;
  int x734_;
  CCollidableAABox x738_collisionAabb;
  rstl::optional_object< TCachedToken< CGenDescription > > x760_energyAbsorbDesc;
  TUniqueId x770_collisionHeadId;
  TUniqueId x772_launcherId;
  rstl::reserved_vector< TUniqueId, 7 > x774_collisionRJointIds;
  rstl::reserved_vector< TUniqueId, 7 > x788_collisionLJointIds;
  TUniqueId x79c_energyAttractorId;
  float x7a0_initialSpeed;
  float x7a4_steeringSpeed;
  float x7a8_pathShaggedTime;
  float x7ac_energyAbsorbCooldown;
  float x7b0_;
  float x7b4_hp;
  float x7b8_attackTimer;
  float x7bc_tauntTimer;
  float x7c0_shotAtTimer;
  float x7c4_absorbUpdateTimer;
  int x7c8_currAnimId;
  uint x7cc_activeMaterialSet;
  CPathFindSearch x7d0_pathFindSearch;
  CVector3f x8b4_targetDestPos;
  SPositionHistory x8c0_positionHistory;
  bool x988_24_damageOn : 1;
  bool x988_25_attackingRightClaw : 1;
  bool x988_26_attackingLeftClaw : 1;
  bool x988_27_shotAt : 1;
  bool x988_28_alert : 1;
  bool x988_29_shockWaveAnim : 1;
  bool x988_30_calledForBackup : 1;
  bool x988_31_running : 1;
  bool x989_24_onPath : 1;
};
CHECK_SIZEOF(CElitePirate, 0x990)

#endif // _CELITEPIRATE
