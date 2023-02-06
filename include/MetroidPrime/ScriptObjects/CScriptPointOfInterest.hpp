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

  void Accept(IVisitor& visitor) override;
  void Think(float, CStateManager&) override;
  void AcceptScriptMsg(EScriptObjectMessage, TUniqueId, CStateManager&) override;
  void AddToRenderer(const CFrustumPlanes&, const CStateManager&) const override;
  void Render(const CStateManager&) const override;
  void CalculateRenderBounds() override;
  rstl::optional_object<CAABox> GetTouchBounds() const override;
};

#endif // _CSCRIPTPOINTOFINTEREST
