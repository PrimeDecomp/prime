#include "GuiSys/CGuiHeadWidget.hpp"
#include "GuiSys/CGuiFrame.hpp"

CGuiWidget* CGuiHeadWidget::Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp) {
  CGuiWidgetParms parms = ReadWidgetHeader(frame, in);

  CGuiHeadWidget* widget = rs_new CGuiHeadWidget(parms);
  frame->SetHeadWidget(widget);
  widget->ParseBaseInfo(frame, in, parms);
  return widget;
}

CGuiHeadWidget::CGuiHeadWidget(const CGuiWidgetParms& parms) : CGuiWidget(parms) {}
