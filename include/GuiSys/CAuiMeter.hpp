#ifndef _CAUIMETER
#define _CAUIMETER

#include <GuiSys/CGuiGroup.hpp>
#include <rstl/vector.hpp>

class CAuiMeter : public CGuiGroup {
public:
  CAuiMeter(const CGuiWidgetParms& parms, bool b, int w1, int w2);
  bool AddWorkerWidget(CGuiWidget* widget) override;
  CGuiWidget* GetWorkerWidget(int idx);
  void SetMaxCapacity(int cap);
  void SetCapacity(int cap);
  void SetRemainder(int rem);
  void OnVisible() override;
  void UpdateMeterWorkers();
  FourCC GetWidgetTypeID() const override { return 'METR'; }

private:
  bool xc4_noRoundUp;
  int xc8_maxCapacity;
  int xcc_capacity;
  int xd0_value;
  rstl::vector< CGuiGroup* > xd4_workers;
};

#endif // _CAUIMETER
