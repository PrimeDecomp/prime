#include "GuiSys/CGuiGroup.hpp"

CGuiWidget* CGuiGroup::Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp) {
  CGuiWidgetParms parms = ReadWidgetHeader(frame, in);
  const int defaultWorker = in.ReadInt16();
  const bool b = in.Get< bool >();
  CGuiWidget* widget = rs_new CGuiGroup(parms, defaultWorker, b);
  widget->ParseBaseInfo(frame, in, parms);
  return widget;
}

CGuiGroup::CGuiGroup(const CGuiWidgetParms& parms, int defaultWorker, bool b)
: CGuiCompoundWidget(parms)
, xb8_workerCount(0)
, xbc_selectedWorker(defaultWorker)
, xc0_b(b) {}

void CGuiGroup::OnActivate() {
  CGuiWidget* widget = GetSelectedWidget();
  if (widget) {
    widget->SetIsActive(GetIsActive());
  }
}

bool CGuiGroup::AddWorkerWidget(CGuiWidget* worker) {
  ++xb8_workerCount;
  return true;
}

CGuiWidget* CGuiGroup::GetSelectedWidget() { return GetWorkerWidget(xbc_selectedWorker); }
