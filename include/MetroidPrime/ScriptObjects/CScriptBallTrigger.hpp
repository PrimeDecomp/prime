#ifndef _CSCRIPTBALLTRIGGER
#define _CSCRIPTBALLTRIGGER

#include "MetroidPrime/ScriptObjects/CScriptTrigger.hpp"

class CScriptBallTrigger : public CScriptTrigger {
public:
  CScriptBallTrigger(TUniqueId, const rstl::string&, const CEntityInfo&, const CVector3f&,
                     const CVector3f&, bool, float, float, float, const CVector3f&, bool);
  ~CScriptBallTrigger();

  void Accept(IVisitor&);
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);
  void Think(float, CStateManager& mgr);
  void InhabitantAdded(CActor&, CStateManager&);
  void InhabitantExited(CActor&, CStateManager&);

private:
  float x150_force;
  float x154_minAngle;
  float x158_maxDistance;
  CVector3f x15c_forceAngle;
  bool x168_24_canApplyForce : 1;
  bool x168_25_stopPlayer : 1;
};

#endif // _CSCRIPTBALLTRIGGER
