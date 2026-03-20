#ifndef _CSPANKWEED
#define _CSPANKWEED

#include "types.h"

#include "MetroidPrime/Enemies/CPatterned.hpp"

#include "rstl/single_ptr.hpp"

class CCollisionActorManager;

class CSpankWeed : public CPatterned {
public:
  CSpankWeed(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
             const CTransform4f& xf, const CModelData& mData,
             const CActorParameters& actParms, const CPatternedInfo& pInfo,
             float maxDetectionRange, float maxHearingRange, float maxSightRange,
             float hideTime);

  // CEntity
  ~CSpankWeed() override {}
  void Accept(IVisitor& visitor) override;
  void Think(float dt, CStateManager& mgr) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;

  // CActor
  void Render(const CStateManager& mgr) const override;
  CVector3f GetOrbitPosition(const CStateManager& mgr) const override;
  CVector3f GetAimPosition(const CStateManager& mgr, float dt) const override;

  // CAi
  void KnockBack(const CVector3f& backVec, CStateManager& mgr, const CDamageInfo& info,
                 EKnockBackType type, bool inDeferred, float magnitude) override;
  void Patrol(CStateManager& mgr, EStateMsg msg, float arg) override;
  void TargetPatrol(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Attack(CStateManager& mgr, EStateMsg msg, float arg) override;
  void FadeIn(CStateManager& mgr, EStateMsg msg, float arg) override;
  void FadeOut(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Lurk(CStateManager& mgr, EStateMsg msg, float arg) override;
  void Flinch(CStateManager& mgr, EStateMsg msg, float arg) override;
  bool Attacked(CStateManager& mgr, float arg) override;
  bool InRange(CStateManager& mgr, float arg) override;
  bool InDetectionRange(CStateManager& mgr, float arg) override;
  bool HearPlayer(CStateManager& mgr, float arg) override;
  bool Delay(CStateManager& mgr, float arg) override;
  bool AnimOver(CStateManager& mgr, float arg) override;

private:
  float x568_maxDetectionRange;
  float x56c_detectionHeightRange;
  float x570_maxHearingRange;
  float x574_maxSightRange;
  float x578_hideTime;
  bool x57c_canKnockBack;
  float x580_;
  CVector3f x584_retreatOrigin;
  TUniqueId x590_;
  rstl::single_ptr< CCollisionActorManager > x594_collisionMgr;
  bool x598_isHiding;
  CVector3f x59c_lockonOffset;
  CVector3f x5a8_lockonTarget;
  int x5b4_;
  int x5b8_;
  int x5bc_;

  float GetPlayerDistance(CStateManager& mgr) const;
};
CHECK_SIZEOF(CSpankWeed, 0x5c0)

#endif // _CSPANKWEED
