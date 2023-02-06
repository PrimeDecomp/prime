#ifndef _CSCRIPTAIJUMPPOINT
#define _CSCRIPTAIJUMPPOINT

#include "MetroidPrime/CActor.hpp"

class CScriptAiJumpPoint : public CActor {
private:
  float xe8_apex;
  rstl::optional_object<CAABox> xec_touchBounds;
  bool x108_24_inUse : 1;
  TUniqueId x10a_occupant;
  TUniqueId x10c_currentWaypoint;
  TUniqueId x10e_nextWaypoint;
  float x110_timeRemaining;

public:
  CScriptAiJumpPoint(TUniqueId, const rstl::string&, const CEntityInfo&, const CTransform4f&, bool,
                     float);
  ~CScriptAiJumpPoint();
  
  void Accept(IVisitor& visitor);
  void Think(float, CStateManager&);
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const;
  void Render(const CStateManager&) const;
  rstl::optional_object< CAABox > GetTouchBounds() const;
  bool GetInUse(TUniqueId uid) const;
  TUniqueId GetJumpPoint() const { return x10c_currentWaypoint; }
  TUniqueId GetJumpTarget() const { return x10e_nextWaypoint; }
  float GetJumpApex() const { return xe8_apex; }
};

#endif // _CSCRIPTAIJUMPPOINT
