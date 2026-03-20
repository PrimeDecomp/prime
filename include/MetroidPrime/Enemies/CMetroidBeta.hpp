#ifndef _CMETROIDBETA
#define _CMETROIDBETA

#include "types.h"

#include "Collision/CCollidableAABox.hpp"
#include "MetroidPrime/CDamageVulnerability.hpp"
#include "MetroidPrime/Enemies/CPatterned.hpp"
#include "MetroidPrime/PathFinding/CPathFindSearch.hpp"

#include "Kyoto/CRandom16.hpp"
#include "Kyoto/TToken.hpp"

#include "rstl/single_ptr.hpp"

class CCollisionActorManager;
class CElementGen;
class CGenDescription;
class CParticleSwoosh;
class CSwooshDescription;

class CMetroidBetaData {
public:
  CMetroidBetaData(CInputStream& in, int propCount);

  const CDamageVulnerability& GetFrozenVulnerability() const { return x0_frozenVulnerability; }
  const CDamageVulnerability& GetEnergyDrainVulnerability() const {
    return x68_energyDrainVulnerability;
  }
  float GetEnergyDrainPerSec() const { return xd0_energyDrainPerSec; }
  float GetMaxEnergyDrainAllowed() const { return xd4_maxEnergyDrainAllowed; }
  float GetTelegraphAttackTime() const { return xd8_telegraphAttackTime; }
  float GetBreakLeashEnergyDrain() const { return xe8_breakLeashEnergyDrain; }
  CAssetId GetElectricParticleId() const { return xf4_electricParticleId; }
  CAssetId GetElectricSwooshEffectId() const { return xf8_electricSwooshEffectId; }
  CAssetId GetElectricMorphBallHitEffectId() const { return xfc_electricMorphBallHitEffectId; }
  CAssetId GetElectricGunHitEffectId() const { return x100_electricGunHitEffectId; }
  CAssetId GetElectricGunFeedbackId() const { return x104_electricGunFeedbackId; }

  static int GetNumProperties() { return skNumProperties; }

private:
  CDamageVulnerability x0_frozenVulnerability;
  CDamageVulnerability x68_energyDrainVulnerability;
  float xd0_energyDrainPerSec;
  float xd4_maxEnergyDrainAllowed;
  float xd8_telegraphAttackTime;
  float xdc_;
  float xe0_;
  float xe4_;
  float xe8_breakLeashEnergyDrain;
  float xec_;
  float xf0_;
  CAssetId xf4_electricParticleId;
  CAssetId xf8_electricSwooshEffectId;
  CAssetId xfc_electricMorphBallHitEffectId;
  CAssetId x100_electricGunHitEffectId;
  CAssetId x104_electricGunFeedbackId;
  bool x108_24_startsInWall : 1;

  static const uint skNumProperties;
};
CHECK_SIZEOF(CMetroidBetaData, 0x10C)

class CMetroidData;

class CMetroidBeta : public CPatterned {
public:
  CMetroidBeta(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
               const CTransform4f& xf, const CModelData& mData, const CPatternedInfo& pInfo,
               const CActorParameters& aParms, const CMetroidBetaData& metroidData);
  ~CMetroidBeta();

  void Accept(IVisitor& visitor) override;
  void Think(float dt, CStateManager& mgr) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const override;
  void Render(const CStateManager&) const override;
  const CDamageVulnerability* GetDamageVulnerability() const override;
  const CDamageVulnerability* GetDamageVulnerability(const CVector3f& pos, const CVector3f& dir,
                                                     const CDamageInfo& dInfo) const override;
  void Touch(CActor& act, CStateManager& mgr) override;
  CVector3f GetAimPosition(const CStateManager& mgr, float dt) const override;
  void DoUserAnimEvent(CStateManager& mgr, const CInt32POINode& node, EUserEventType type,
                       float dt) override;
  const CCollisionPrimitive* GetCollisionPrimitive() const override;
  void CollidedWith(const TUniqueId& id, const CCollisionInfoList& list,
                    CStateManager& mgr) override;
  bool IsListening() const override;
  CVector3f GetOrigin(const CStateManager& mgr, const CTeamAiRole& role,
                      const CVector3f& aimPos) const override;
  EWeaponCollisionResponseTypes GetCollisionResponseType(const CVector3f&, const CVector3f&,
                                                         const CWeaponMode&, int) const override;

  void Patrol(CStateManager& mgr, EStateMsg msg, float dt) override;
  void PathFind(CStateManager& mgr, EStateMsg msg, float dt) override;
  void SelectTarget(CStateManager& mgr, EStateMsg msg, float dt) override;
  void TargetPatrol(CStateManager& mgr, EStateMsg msg, float dt) override;
  void Generate(CStateManager& mgr, EStateMsg msg, float dt) override;
  void Attack(CStateManager& mgr, EStateMsg msg, float dt) override;
  void TurnAround(CStateManager& mgr, EStateMsg msg, float dt) override;
  void TelegraphAttack(CStateManager& mgr, EStateMsg msg, float dt) override;
  void WallHang(CStateManager& mgr, EStateMsg msg, float dt) override;
  void SpecialAttack(CStateManager& mgr, EStateMsg msg, float dt) override;

  bool InAttackPosition(CStateManager& mgr, float arg) override;
  bool Attacked(CStateManager& mgr, float arg) override;
  bool PathShagged(CStateManager& mgr, float arg) override;
  bool InDetectionRange(CStateManager& mgr, float arg) override;
  bool AnimOver(CStateManager& mgr, float arg) override;
  bool ShouldAttack(CStateManager& mgr, float arg) override;
  bool InPosition(CStateManager& mgr, float arg) override;
  bool ShouldTurn(CStateManager& mgr, float arg) override;
  bool AttackOver(CStateManager& mgr, float arg) override;
  bool ShotAt(CStateManager& mgr, float arg) override;
  bool ShouldWallHang(CStateManager& mgr, float arg) override;
  bool StartAttack(CStateManager& mgr, float arg) override;
  bool BreakAttack(CStateManager& mgr, float arg) override;
  bool ShouldSpecialAttack(CStateManager& mgr, float arg) override;

  CPathFindSearch* GetSearchPath() override;

  void RenderHitGunEffect() const;
  void RenderHitBallEffect() const;

private:
  int x568_progState;
  CMetroidBetaData x56c_data;
  TUniqueId x678_teamMgr;
  CPathFindSearch x67c_pathFind;
  uchar x760_;
  uchar x761_;
  rstl::single_ptr< CCollisionActorManager > x764_collisionManager;
  CCollidableAABox x768_colPrim;
  TUniqueId x790_;
  float x794_;
  float x798_;
  float x79c_;
  float x7a0_;
  float x7a4_;
  CVector3f x7a8_;
  CVector3f x7b4_;
  CVector3f x7c0_;
  CVector3f x7cc_;
  float x7d8_;
  float x7dc_;
  float x7e0_;
  TCachedToken< CGenDescription > x7e4_;
  TCachedToken< CSwooshDescription > x7f0_;
  TCachedToken< CGenDescription > x7fc_;
  TCachedToken< CGenDescription > x808_;
  TCachedToken< CGenDescription > x814_;
  rstl::single_ptr< CElementGen > x820_;
  rstl::single_ptr< CParticleSwoosh > x824_;
  rstl::single_ptr< CElementGen > x828_;
  rstl::single_ptr< CElementGen > x82c_;
  rstl::single_ptr< CElementGen > x830_;
  float x834_;
  CRandom16 x838_;
  float x83c_;
  bool x840_24_ : 1;
  bool x840_25_ : 1;
  bool x840_26_ : 1;
  bool x840_27_ : 1;
  bool x840_28_ : 1;
  bool x840_29_ : 1;
  bool x840_30_ : 1;
  bool x840_31_ : 1;
};
CHECK_SIZEOF(CMetroidBeta, 0x848)

#endif // _CMETROIDBETA
