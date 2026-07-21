#include "GuiSys/CGuiPane.hpp"
#include "GuiSys/CGuiWidget.hpp"
#include "GuiSys/CGuiWidgetDrawParms.hpp"

#include <Kyoto/Graphics/CGraphics.hpp>
#include <Kyoto/Streams/COutputStream.hpp>

CGuiWidget* CGuiPane::Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp) {
  CGuiWidgetParms parms = ReadWidgetHeader(frame, in);
  float width = in.ReadFloat();
  float height = in.ReadFloat();
  float scaleX = in.ReadFloat();
  float scaleY = in.ReadFloat();
  float scaleZ = in.ReadFloat();
  CGuiPane* widget = rs_new CGuiPane(parms, width, height, CVector3f(scaleX, scaleY, scaleZ));
  widget->ParseBaseInfo(frame, in, parms);
  return widget;
}

void CGuiPane::WriteData(COutputStream& out, bool) const {
  out.WriteReal32(xb8_width);
  out.WriteReal32(xbc_height);
  out.WriteReal32(xc8_scaleCenter.GetX());
  out.WriteReal32(xc8_scaleCenter.GetY());
  out.WriteReal32(xc8_scaleCenter.GetZ());
}

CGuiPane::CGuiPane(const CGuiWidgetParms& parms, const float width, const float height,
                   const CVector3f& scaleCenter)
: CGuiWidget(parms)
, xb8_width(width)
, xbc_height(height)
, xc0_panePoints(0)
, xc4_panePointCount(4)
, xc8_scaleCenter(scaleCenter) {
  InitializeBuffers();
}

CGuiPane::~CGuiPane() {
  if (xc0_panePoints && xc0_panePoints) {
    delete xc0_panePoints;
  }
}

void CGuiPane::Draw(const CGuiWidgetDrawParms& parms) const {
  CGraphics::SetModelMatrix(GetWorldTransform() * CTransform4f::Translate(xc8_scaleCenter));
  if (GetIsVisible()) {
    CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvPassthru);
    CColor color = GetModifiedColor().WithAlphaModulatedBy(parms.GetAlpha());
    CGraphics::DrawPrimitive(kP_TriangleStrip, xc0_panePoints, CVector3f(0.f, -1.f, 0.f), color, xc4_panePointCount);
  }
  CGuiWidget::Draw(parms);
}

void CGuiPane::ScaleDimensions(const CVector3f& scale) {
  InitializeBuffers();
  const CVector3f& center = ScaleCenter();
  for (int i = 0; i < xc4_panePointCount * 3; ++i) {
    int idx = i % 3;
    xc0_panePoints[i] = (xc0_panePoints[i] - center[idx]) * scale[idx]; // this might be an inline?
    xc0_panePoints[i] += center[i % 3];
  }
}

void CGuiPane::InitializeBuffers() {
  if (xc0_panePoints == nullptr) {
    xc0_panePoints = rs_new float[xc4_panePointCount * 3];
  }

  xc0_panePoints[0] = -GetWidth() / 2.f;
  xc0_panePoints[1] = 0.f;
  xc0_panePoints[2] = GetHeight() / 2.f;

  xc0_panePoints[3] = -GetWidth() / 2.f;
  xc0_panePoints[4] = 0.f;
  xc0_panePoints[5] = -GetHeight() / 2.f;

  xc0_panePoints[6] = GetWidth() / 2.f;
  xc0_panePoints[7] = 0.f;
  xc0_panePoints[8] = GetHeight() / 2.f;

  xc0_panePoints[9] = GetWidth() / 2.f;
  xc0_panePoints[10] = 0.f;
  xc0_panePoints[11] = -GetHeight() / 2.f;
}

void CGuiPane::SetDimensions(const CVector2f& dim, const bool init) {
  xb8_width = dim.GetX();
  xbc_height = dim.GetY();
  if (!init) {
    return;
  }
  InitializeBuffers();
}

CVector2f CGuiPane::GetDimensions() const { return CVector2f(xb8_width, xbc_height); }

FourCC CGuiPane::GetWidgetTypeID() const { return 'PANE'; }
