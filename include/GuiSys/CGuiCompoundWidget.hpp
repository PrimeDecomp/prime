#ifndef _CGUICOMPOUNDWIDGET
#define _CGUICOMPOUNDWIDGET

#include "GuiSys/CGuiWidget.hpp"

class CGuiCompoundWidget : public CGuiWidget {
public:
  CGuiCompoundWidget(const CGuiWidgetParms& parms);
  ~CGuiCompoundWidget();
  FourCC GetWidgetTypeID() const override { return -1; }

  void OnVisible() override;
  void OnActivate() override;
  virtual CGuiWidget* GetWorkerWidget(const int id);

private:
};

#endif // _CGUICOMPOUNDWIDGET
