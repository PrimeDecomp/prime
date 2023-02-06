#ifndef _CSCRIPTPOINTOFINTEREST
#define _CSCRIPTPOINTOFINTEREST

#include "MetroidPrime/CActor.hpp"

class CScannableParameters;

class CScriptPointOfInterest : public CActor {
private:
  float xe8_pointSize;

public:
  CScriptPointOfInterest(TUniqueId, const rstl::string&, const CEntityInfo&, const CTransform4f&, bool,
                         const CScannableParameters&, float);
  ~CScriptPointOfInterest();

  void Accept(IVisitor& visitor);
  void Think(float, CStateManager&);
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&);
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const;
  void Render(const CStateManager&) const;
  void CalculateRenderBounds();
  rstl::optional_object<CAABox> GetTouchBounds() const;
};

#endif // _CSCRIPTPOINTOFINTEREST
