#ifndef _CPOWERBOMB
#define _CPOWERBOMB

#include "types.h"

#include "MetroidPrime/Weapons/CWeapon.hpp"

class CGenDescription;
class CElementGen;

class CPowerBomb : public CWeapon {
public:
  CPowerBomb(TToken< CGenDescription > particle, TUniqueId uid, TAreaId aid,
             TUniqueId playerId, const CTransform4f& xf, const CDamageInfo& dInfo);
  ~CPowerBomb();

  void Accept(IVisitor& visitor);
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);
  void Think(float, CStateManager&);
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const;
  void Render(const CStateManager&) const;
  rstl::optional_object<CAABox> GetTouchBounds() const;
  void Touch(CActor&, CStateManager&);

  float GetCurTime() const { return x15c_curTime; }
  void ApplyDynamicDamage(const CVector3f&, CStateManager&);

private:
  static CColor kFadeColor;
  bool x158_24_canStartFilter : 1;
  bool x158_25_filterEnabled : 1;
  float x15c_curTime;
  float x160_curRadius;
  float x164_radiusIncrement;
  rstl::single_ptr< CElementGen > x168_particle;
  float x16c_radius;
};

#endif // _CPOWERBOMB
