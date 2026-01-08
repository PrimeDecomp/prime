#include "GuiSys/CGuiPane.hpp"
#include "GuiSys/CGuiWidget.hpp"
#include "GuiSys/CGuiWidgetDrawParms.hpp"

#include <Kyoto/Graphics/CGraphics.hpp>
#include <Kyoto/Streams/COutputStream.hpp>

const CVector3f CGuiPane::skDefaultNormal(0.f, -1.f, 0.f);
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
, xc0_(0)
, xc4_(4)
, xc8_scaleCenter(scaleCenter) {
  InitializeBuffers();
}

CGuiPane::~CGuiPane() {
  if (xc0_ && xc0_) {
    delete xc0_;
  }
}

void CGuiPane::Draw(const CGuiWidgetDrawParms& parms) const {
  CGraphics::SetModelMatrix(GetWorldTransform() * CTransform4f::Translate(xc8_scaleCenter));
  if (GetIsVisible()) {
    CGraphics::SetTevOp(kTS_Stage0, CGraphics::kEnvPassthru);
    CColor color = GetColor2().WithAlphaModulatedBy(parms.GetAlpha());
    CGraphics::DrawPrimitive(kP_TriangleStrip, xc0_, CVector3f(0.f, -1.f, 0.f), color, xc4_);
  }
  CGuiWidget::Draw(parms);
}

void CGuiPane::ScaleDimensions(const CVector3f& scale) {
  InitializeBuffers();
  const CVector3f& center = xc8_scaleCenter;
  for (int i = 0; i < xc4_ * 3; i++) {
    xc0_[i] = (xc0_[i] - center[i % 3]) * scale[i % 3];
    xc0_[i] = (xc0_[i] + center[i % 3]);
  }
}

void CGuiPane::InitializeBuffers() {
  if (xc0_ == nullptr) {
    xc0_ = rs_new float[xc4_ * 3];
  }

  xc0_[0] = -GetWidth() * 0.5f;
  xc0_[1] = 0.f;
  xc0_[2] = GetHeight() * 0.5f;

  xc0_[3] = -GetWidth() * 0.5f;
  xc0_[4] = 0.f;
  xc0_[5] = -GetHeight() * 0.5f;

  xc0_[6] = GetWidth() * 0.5f;
  xc0_[7] = 0.f;
  xc0_[8] = GetHeight() * 0.5f;

  xc0_[9] = GetWidth() * 0.5f;
  xc0_[10] = 0.f;
  xc0_[11] = -GetHeight() * 0.5f;
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
