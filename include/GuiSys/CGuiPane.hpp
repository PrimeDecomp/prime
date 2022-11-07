#ifndef _CGUIPANE
#define _CGUIPANE

#include "GuiSys/CGuiWidget.hpp"

class CGuiPane : public CGuiWidget {
public:
  CGuiPane(const CGuiWidgetParms& parms, const CVector2f& dim, const CVector3f& scaleCenter);

  void Draw(const CGuiWidgetDrawParms& parms) override;
  virtual void ScaleDimensions(const CVector3f& scale);
  virtual void SetDimensions(const CVector2f& dim, bool initVBO);
  virtual CVector2f GetDimensions() const;
  virtual void InitializeBuffers();
  virtual void WriteData(COutputStream& out, bool flag) const;

private:
  CVector2f xb8_dim;
  uchar xc0_pad[8];
  CVector3f xc8_scaleCenter;
};
CHECK_SIZEOF(CGuiPane, 0xd4)

#endif // _CGUIPANE
