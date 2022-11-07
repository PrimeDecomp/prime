#ifndef _CGUIGROUP
#define _CGUIGROUP

#include "GuiSys/CGuiCompoundWidget.hpp"

class CGuiGroup : public CGuiCompoundWidget {
public:
  FourCC GetWidgetTypeID() const override { return 'GRUP'; }

  void SelectWorkerWidget(int workerId, bool setActive, bool setVisible);
  CGuiWidget* GetSelectedWidget();
  const CGuiWidget* GetSelectedWidget() const;
  bool AddWorkerWidget(CGuiWidget* worker) override;
  void OnActiveChange() override;

private:
  uint xb8_workerCount;
  int xbc_selectedWorker;
  bool xc0_b;
};

#endif // _CGUIGROUP
