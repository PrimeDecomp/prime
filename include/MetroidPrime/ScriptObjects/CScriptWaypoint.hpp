#ifndef _CSCRIPTWAYPOINT
#define _CSCRIPTWAYPOINT

#include "types.h"

#include "MetroidPrime/CActor.hpp"

class CScriptWaypoint : public CActor {
public:
  CScriptWaypoint(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                  const CTransform4f& xf, bool active, float speed, float pause,
                  uint patternTranslate, uint patternOrient, uint patternFit, uint behaviour,
                  uint behaviourOrient, uint behaviourModifiers, uint animation);

  // CEntity
  ~CScriptWaypoint() override;
  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage msg, TUniqueId uid, CStateManager& mgr) override;

  // CActor
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const override;
  void Render(const CStateManager&) const override;

  // CScriptWaypoint
  TUniqueId NextWaypoint(const CStateManager& mgr) const;
  void FollowWaypoint(const CStateManager& mgr) const;

  f32 GetSpeed() const { return xe8_speed; }
  uint GetAnimation() const { return xec_animation; }
  f32 GetPause() const { return xf0_pause; }
  u8 GetPatternTranslate() const { return xf4_patternTranslate; }
  u8 GetPatternOrient() const { return xf5_patternOrient; }
  u8 GetPatternFit() const { return xf6_patternFit; }
  u8 GetBehaviour() const { return xf7_behaviour; }
  u8 GetBehaviourOrient() const { return xf8_behaviourOrient; }
  u16 GetBehaviourModifiers() const { return xfa_behaviourModifiers; }

private:
  f32 xe8_speed;
  uint xec_animation;
  f32 xf0_pause;
  u8 xf4_patternTranslate;
  u8 xf5_patternOrient;
  u8 xf6_patternFit;
  u8 xf7_behaviour;
  u8 xf8_behaviourOrient;
  u16 xfa_behaviourModifiers;
};

#endif // _CSCRIPTWAYPOINT
