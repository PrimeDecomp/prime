#ifndef _CBOMB
#define _CBOMB

#include "MetroidPrime/Weapons/CWeapon.hpp"

#include <Kyoto/TToken.hpp>

class CElementGen;
class CGenDescription;
class CBomb : public CWeapon {
public:
  CBomb(const TToken< CGenDescription >& particle1, const TToken< CGenDescription >& particle2,
        TUniqueId uid, TAreaId aid, TUniqueId playerId, float f1, const CTransform4f& xf,
        const CDamageInfo& dInfo);
  ~CBomb();

  void Explode(const CVector3f& pos, CStateManager& mgr);
  void Touch(CActor& actor, CStateManager& mgr) override;
  void AddToRenderer(const CFrustumPlanes& frustum, const CStateManager& mgr) const override;
  void Render(const CStateManager& mgr) const override;
  void Think(float dt, CStateManager& mgr) override;
  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId sender, CStateManager& mgr) override;
  rstl::optional_object< CAABox > GetTouchBounds() const override;
  void UpdateLight(float dt, CStateManager& mgr);

  const bool IsDetonated() { return !mIsNotDetonated; }

private:
  CVector3f mVelocity;
  CVector3f mAcceleration;
  CVector3f mPrevLocation;
  float mFuseTime;
  rstl::single_ptr< CElementGen > mParticle1;
  rstl::single_ptr< CElementGen > mParticle2;
  TUniqueId mLightId;
  CAssetId mParticle2Ptr;
  bool mIsNotDetonated : 1;
  bool mBeingDragged : 1;
  bool mDisableFuse : 1;
};

#endif // _CBOMB
