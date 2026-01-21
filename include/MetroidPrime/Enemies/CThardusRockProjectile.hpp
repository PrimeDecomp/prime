#ifndef _CTHARDUSROCKPROJECTILE
#define _CTHARDUSROCKPROJECTILE

#include "MetroidPrime/Enemies/CPatterned.hpp"

#include "MetroidPrime/Collision/CJointCollisionDescription.hpp"
#include "MetroidPrime/Collision/CPatternedCollisionUtils.hpp"

class CCollisionActorManager;
class CThardusRockProjectile : public CPatterned {
public:
  enum EModifyMaterial {
    kMM_Add,
    kMM_Remove,
  };
  CThardusRockProjectile(const TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                         const CTransform4f& xf, const CModelData& modelData,
                         const CActorParameters& aParms, const CPatternedInfo& patternedInfo,
                         const rstl::vector< CModelData >& mDataVec, const CAssetId stateMachine,
                         const float);

  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;
  void Think(float dt, CStateManager& mgr) override;

  void GetUp(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Patrol(CStateManager&, EStateMsg, float) override;
  void LoopedAttack(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Dead(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Lurk(CStateManager& mgr, EStateMsg msg, float arg) override;
  bool ShouldMove(CStateManager& mgr, float arg) override;
  bool ShouldAttack(CStateManager& mgr, float arg) override;
  bool HitSomething(CStateManager& mgr, float arg) override;
  bool AnimOver(CStateManager& mgr, float arg) override;
  bool Delay(CStateManager& mgr, float arg) override;

  void Render(const CStateManager&) const override;

  void AddGravity(CStateManager& mgr);
  void AddDeathEffects(CStateManager& mgr, const CVector3f& position);
  void AddParticleEffect(CStateManager& mgr, const CAssetId particle, const CVector3f& position,
                         const CVector3f& scale, const int unk);

private:
  void InitializeCollisionManager(CStateManager& mgr);
  void SetMaterialProperties(rstl::single_ptr< CCollisionActorManager >& colMgr,
                             CStateManager& mgr);
  void AddSphereCollisionList(const CPatternedCollisionUtils::SSphereJointInfo*, int,
                              rstl::vector< CJointCollisionDescription >&);
  void UpdateDestroyableRockPositions(CStateManager& mgr);
  void UpdateDestroyableRockCollisionActors(CStateManager& mgr);
  void SetChildrenActive(CStateManager& mgr, bool active);
  void ModifyChildrenMaterial(CStateManager& mgr, EModifyMaterial modify, EMaterialTypes material);

  float x568_;
  int mAiState;
  TUniqueId x570_;
  bool x572_;
  EAnimState mAnimState;
  rstl::single_ptr< CCollisionActorManager > mCollisionManager;
  rstl::vector< CModelData > x57c_;
  rstl::vector< TUniqueId > mDestroyableRocks;
  CAssetId mStateMachineId;
  uint x5a0_;
  bool x5a4_;
  float mDelayTime;
  float mAttackTime;
  CVector3f x5b0_;
  bool x5bc_;
  float x5c0_;
  uint x5c4_;
  uint x5c8_;
  uint x5cc_;
  TUniqueId mThardusId;
  uint x5d4_;
  uint x5d8_;
  bool x5dc_;
  bool x5dd_;
  
  static CPatternedCollisionUtils::SSphereJointInfo skJointInfoList[1];
};

#endif // _CTHARDUSROCKPROJECTILE
