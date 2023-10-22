#include "GuiSys/CGuiGroup.hpp"
#include "GuiSys/CGuiWidget.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "rstl/math.hpp"
#include <GuiSys/CAuiMeter.hpp>

CAuiMeter::CAuiMeter(const CGuiWidgetParms& parms, bool noRoundUp, int maxCapacity, int workerCount)
: CGuiGroup(parms, 0, false)
, xc4_noRoundUp(noRoundUp)
, xc8_maxCapacity(maxCapacity)
, xcc_capacity(xc8_maxCapacity)
, xd0_value(0) {
  xd4_workers.reserve(workerCount);
}

bool CAuiMeter::AddWorkerWidget(CGuiWidget* worker) {
  CGuiGroup::AddWorkerWidget(worker);
  short id = worker->GetWorkerId();
  if (id >= xd4_workers.size()) {
    for (int i = xd4_workers.size(); i <= id; ++i) {
      xd4_workers.push_back(nullptr);
    }
  }
  xd4_workers[id] = static_cast< CGuiGroup* >(worker);
  return true;
}

CGuiWidget* CAuiMeter::GetWorkerWidget(int idx) { return xd4_workers[idx]; }

// TODO: Why is the only needed for the first one?
static inline const int& hack_min(const int& a, const int& b) { return a < b ? b : a; }

void CAuiMeter::SetMaxCapacity(const int cap) {
  xc8_maxCapacity = hack_min(0, cap);
  xcc_capacity = rstl::min_val(xcc_capacity, xc8_maxCapacity);
  xd0_value = rstl::min_val(xd0_value, xcc_capacity);
  UpdateMeterWorkers();
}

void CAuiMeter::SetCapacity(int cap) {
  xcc_capacity = CMath::Clamp(0, cap, xc8_maxCapacity);
  xd0_value = rstl::min_val(xd0_value, xcc_capacity);
  UpdateMeterWorkers();
}

void CAuiMeter::SetRemainder(int rem) {
  xd0_value = CMath::Clamp(0, rem, xcc_capacity);
  UpdateMeterWorkers();
}

void CAuiMeter::OnVisible() {
  if (GetIsVisible()) {
    UpdateMeterWorkers();
  }
}

void CAuiMeter::UpdateMeterWorkers() {
  float scale = xd4_workers.size() / float(xc8_maxCapacity);
  int etankCap;
  int etankFill;
  int workerCount = xd4_workers.size();
  if (xc4_noRoundUp)
    etankCap = scale * xcc_capacity;
  else
    etankCap = 0.5f + (scale * xcc_capacity);

  if (xc4_noRoundUp)
    etankFill = scale * xd0_value;
  else
    etankFill = 0.5f + scale * xd0_value;

  for (int i = 0; i < workerCount; ++i) {
    CGuiGroup* worker = xd4_workers[i];
    if (!worker)
      continue;

    CGuiWidget* fullTank = worker->GetWorkerWidget(0);
    CGuiWidget* emptyTank = worker->GetWorkerWidget(1);

    if (i < etankFill) {
      if (fullTank)
        fullTank->SetIsVisible(true);
      if (emptyTank)
        emptyTank->SetIsVisible(false);
    } else if (i < etankCap) {
      if (fullTank)
        fullTank->SetIsVisible(false);
      if (emptyTank)
        emptyTank->SetIsVisible(true);
    } else {
      if (fullTank)
        fullTank->SetIsVisible(false);
      if (emptyTank)
        emptyTank->SetIsVisible(false);
    }
  }
}
