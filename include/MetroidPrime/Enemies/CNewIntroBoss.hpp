#ifndef _CNEWINTROBOSS
#define _CNEWINTROBOSS

#include "MetroidPrime/Enemies/CPatterned.hpp"

#include "Kyoto/Animation/CharacterCommon.hpp"
#include "MetroidPrime/CBoneTracking.hpp"
#include "MetroidPrime/Weapons/CProjectileInfo.hpp"

class CCollisionActorManager;
class CPatternedInfo;

class CNewIntroBoss : public CPatterned {
public:
  CNewIntroBoss(TUniqueId, const rstl::string&, const CEntityInfo& info, const CTransform4f& xf,
                const CModelData& mData, const CPatternedInfo& pInfo,
                const CActorParameters& actParms, float minTurnAngle, CAssetId projectile,
                const CDamageInfo& dInfo, CAssetId beamContactFxId, CAssetId beamPulseFxId,
                CAssetId beamTextureId, CAssetId beamGlowTextureId);

  // CEntity
  void Accept(IVisitor& visitor);
  void Think(float dt, CStateManager& mgr);
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr);

  // CActor
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const;
  rstl::optional_object< CAABox > GetTouchBounds() const;
  void OnScanStateChange(EScanState, CStateManager&);
  CAABox GetSortingBounds(const CStateManager&) const;
  void DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node, EUserEventType type,
                       float dt);

  // CAi
  void Patrol(CStateManager&, EStateMsg, float);
  void Generate(CStateManager& mgr, EStateMsg msg, float arg);
  void Attack(CStateManager&, EStateMsg, float);
  bool InAttackPosition(CStateManager&, float);
  bool AnimOver(CStateManager&, float);
  bool ShouldAttack(CStateManager&, float);
  bool ShouldTurn(CStateManager&, float);
  bool AIStage(CStateManager&, float);

  // CPatterned
  CProjectileInfo* ProjectileInfo();

  pas::ELocomotionType GetLocoForHealth(const CStateManager& mgr) const;
  pas::EGenerateType GetGenerateForHealth(const CStateManager& mgr) const;
  float GetNextAttackTime(CStateManager& mgr) const;
  CVector3f PlayerPos(const CStateManager& mgr) const;
  void DeleteBeam(CStateManager& mgr);
  void StopRumble(CStateManager& mgr);

  float GetInitialHP() const { return x640_initialHp; }

private:
  pas::ELocomotionType x568_locomotion;
  uint x56c_stateProg;
  float x570_minTurnAngle;
  CBoneTracking x574_boneTracking;
  CProjectileInfo x5ac_projectileInfo;
  TUniqueId x5d4_stage1Projectile;
  TUniqueId x5d6_stage2Projectile;
  TUniqueId x5d8_stage3Projectile;
  rstl::string x5dc_damageLocator; // ???
  rstl::single_ptr< CCollisionActorManager > x5ec_collisionManager;
  CAssetId x5f0_beamContactFxId;
  CAssetId x5f4_beamPulseFxId;
  CAssetId x5f8_beamTextureId;
  CAssetId x5fc_beamGlowTextureId;
  TUniqueId x600_headActor;
  TUniqueId x602_pelvisActor;
  CVector3f x604_predictedPlayerPos;
  CVector3f x610_lookPos;
  CVector3f x61c_startPlayerPos;
  float x628_firingTime;
  CVector3f x62c_targetPos;
  float x638_;
  float x63c_attackTime;
  float x640_initialHp;
  CTransform4f x644_initialXf;
  short x674_rumbleVoice;
  TUniqueId x676_curProjectile;
  bool x678_;
};

#endif // _CNEWINTROBOSS
