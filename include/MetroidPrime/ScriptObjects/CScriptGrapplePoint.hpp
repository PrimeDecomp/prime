#ifndef _CSCRIPTGRAPPLEPOINT
#define _CSCRIPTGRAPPLEPOINT

#include "MetroidPrime/CActor.hpp"

#include "MetroidPrime/CGrappleParameters.hpp"

class CScriptGrapplePoint : public CActor {
  CAABox xe8_touchBounds;
  CGrappleParameters x100_parameters;

public:
  CScriptGrapplePoint(TUniqueId uid, const rstl::string& name, const CEntityInfo& info,
                      const CTransform4f& transform, bool active, const CGrappleParameters& params);
  ~CScriptGrapplePoint();

  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const;
  rstl::optional_object< CAABox > GetTouchBounds() const;
  void Render(const CStateManager&) const;
  void Think(float, CStateManager&);
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);
  void Accept(IVisitor&);
};

#endif // _CSCRIPTGRAPPLEPOINT
