#ifndef _CGUILIGHT
#define _CGUILIGHT

#include "GuiSys/CGuiWidget.hpp"
#include "Kyoto/Graphics/CLight.hpp"

class IObjectStore;
class CGuiLight : public CGuiWidget {
public:
  static CGuiLight* Create(CGuiFrame* frame, CInputStream& in, IObjectStore* sp);
  CGuiLight(const CGuiWidgetParms& parms, const CLight& light);
  ~CGuiLight();

  virtual void SetIsVisible(const bool visible);
  CLight BuildLight() const;
  FourCC GetWidgetTypeID() const;
public:
  ELightType xb8_type;
  float xbc_spotCutoff;
  float xc0_distC;
  float xc4_distL;
  float xc8_distQ;
  float xcc_angleC;
  float xd0_angleL;
  float xd4_angleQ;
  u32 xd8_lightId;
  CColor xdc_ambColor;
};

#endif // _CGUILIGHT
