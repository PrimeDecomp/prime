#ifndef _CGUICOMPOUNDWIDGET
#define _CGUICOMPOUNDWIDGET

#include "GuiSys/CGuiWidget.hpp"

class CGuiCompoundWidget : public CGuiWidget {
public:
  FourCC GetWidgetTypeID() const { return -1; }

  void OnVisible();
  void OnActivate();
  virtual CGuiWidget* GetWorkerWidget(int id) const;
private:
};

#endif // _CGUICOMPOUNDWIDGET
