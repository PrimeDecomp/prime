#include "GuiSys/CGuiCompoundWidget.hpp"
#include "GuiSys/CGuiWidget.hpp"

CGuiCompoundWidget::CGuiCompoundWidget(const CGuiWidgetParms& parms) : CGuiWidget(parms) {}
CGuiCompoundWidget::~CGuiCompoundWidget() {}

CGuiWidget* CGuiCompoundWidget::GetWorkerWidget(const int id) {
  const CGuiWidget* w = static_cast< const CGuiWidget* >(GetChildObject());
  while (w != nullptr) {
    if (w->GetWorkerId() == id) {
      break;
    }
    w = static_cast< const CGuiWidget* >(w->GetNextSibling());
  }
  return const_cast< CGuiWidget* >(w);
}

void CGuiCompoundWidget::OnActivate() {
  CGuiWidget* w = static_cast< CGuiWidget* >(ChildObject());
  while (w != nullptr) {
    w->SetIsActive(GetIsActive());
    w = static_cast< CGuiWidget* >(w->NextSibling());
  }

  CGuiWidget::OnActivate();
}

void CGuiCompoundWidget::OnVisible() {
  CGuiWidget* w = static_cast< CGuiWidget* >(ChildObject());
  while (w != nullptr) {
    w->SetIsVisible(GetIsVisible());
    w = static_cast< CGuiWidget* >(w->NextSibling());
  }

  CGuiWidget::OnVisible();
}
