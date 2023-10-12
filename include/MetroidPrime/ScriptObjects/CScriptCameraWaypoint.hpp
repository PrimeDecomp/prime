#ifndef _CSCRIPTCAMERAWAYPOINT
#define _CSCRIPTCAMERAWAYPOINT

#include "MetroidPrime/CActor.hpp"

class CScriptCameraWaypoint : public CActor {
  float xe8_hfov;
  uint xec_;

public:
  CScriptCameraWaypoint(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                        const CTransform4f& xf, bool active, float hfov, uint);
  ~CScriptCameraWaypoint();

  void Accept(IVisitor& visitor) override;
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&) override;
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const override;
  void Render(const CStateManager&) const override;

  TUniqueId NextWaypoint(CStateManager& mgr);
  float GetHFov() const { return xe8_hfov; }
};

#endif // _CSCRIPTCAMERAWAYPOINT
