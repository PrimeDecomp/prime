#ifndef _CGUICOMPOUNDWIDGET
#define _CGUICOMPOUNDWIDGET

#include "GuiSys/CGuiWidget.hpp"

class CGuiCompoundWidget : public CGuiWidget {
public:
  ~CGuiCompoundWidget();
  FourCC GetWidgetTypeID() const override { return -1; }

  void OnVisible() override;
  void OnActivate() override;
  virtual CGuiWidget* GetWorkerWidget(int id) const;
private:
};

#endif // _CGUICOMPOUNDWIDGET
