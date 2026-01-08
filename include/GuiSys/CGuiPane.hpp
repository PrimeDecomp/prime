#ifndef _CGUIPANE
#define _CGUIPANE

#include "GuiSys/CGuiWidget.hpp"
#include "rstl/reserved_vector.hpp"

class CGuiPane : public CGuiWidget {
public:
  static CGuiWidget* Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp);
  CGuiPane(const CGuiWidgetParms& parms, float width, float height, const CVector3f& scaleCenter);
  ~CGuiPane();

  void Draw(const CGuiWidgetDrawParms& parms) const override;
  virtual void ScaleDimensions(const CVector3f& scale);
  virtual void SetDimensions(const CVector2f& dim, bool initVBO);
  virtual CVector2f GetDimensions() const;
  virtual void InitializeBuffers();
  virtual void WriteData(COutputStream& out, bool flag) const;
  int GetCount() const { return xc4_ * 3; }

  float GetWidth() const { return xb8_width; }
  float GetHeight() const { return xbc_height; }

  FourCC GetWidgetTypeID() const;

private:
  static const CVector3f skDefaultNormal;
  float xb8_width;
  float xbc_height;
  float* xc0_;
  int xc4_;
  CVector3f xc8_scaleCenter;
};
CHECK_SIZEOF(CGuiPane, 0xd4)

#endif // _CGUIPANE
