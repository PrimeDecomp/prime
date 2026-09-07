#include "GuiSys/CGuiTableGroup.hpp"

#include "Kyoto/Input/CFinalInput.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "rstl/math.hpp"

void CGuiTableGroup::ProcessUserInput(const CFinalInput& input) {
  if (input.PA()) {
    DoAdvance();
  } else if (input.PB()) {
    DoCancel();
  } else {
    bool decrement =
        xd1_vertical ? input.DLAUp() || input.DDPUp() : input.DLALeft() || input.DDPLeft();
    bool increment =
        xd1_vertical ? input.DLADown() || input.DDPDown() : input.DLARight() || input.DDPRight();

    if (xb8_decRepeat.Update(input.Time(), decrement) && decrement) {
      DoDecrement();
      return;
    }

    if (!decrement && xbc_incRepeat.Update(input.Time(), increment) && increment) {
      DoIncrement();
    }
  }
}

CGuiTableGroup* CGuiTableGroup::Create(CGuiFrame* frame, CInputStream& in, CSimplePool* pool) {
  const CGuiWidgetParms parms = ReadWidgetHeader(frame, in);
  int elementCount = in.Get< short >();
  in.Get< ushort >();
  in.Get< uint >();
  int defSel = in.Get< short >();
  in.Get< ushort >();
  bool selectWraparound = in.ReadBool();
  in.Get< bool >();
  in.Get< float >();
  in.Get< float >();
  in.Get< bool >();
  in.Get< float >();
  in.Get< ushort >();
  in.Get< ushort >();
  in.Get< ushort >();
  in.Get< ushort >();

  CGuiTableGroup* group = rs_new CGuiTableGroup(parms, elementCount, defSel, selectWraparound);
  group->ParseBaseInfo(frame, in, parms);
  return group;
}

CGuiTableGroup::CGuiTableGroup(const CGuiWidgetParms& parms, int elementCount, int defSel,
                               bool selectWrapAround)
: CGuiCompoundWidget(parms)
, xc0_elementCount(elementCount)
, xc4_userSelection(defSel)
, xc8_prevUserSelection(defSel)
, xcc_defaultUserSelection(defSel)
, xd0_selectWrapAround(selectWrapAround)
, xd1_vertical(true) {}

CGuiTableGroup::~CGuiTableGroup() {}

void CGuiTableGroup::SetSelectionToDefault() {
  xc8_prevUserSelection = xc4_userSelection;
  xc4_userSelection = xcc_defaultUserSelection;
  DeactivateWorker(GetWorkerWidget(xc8_prevUserSelection));
  ActivateWorker(GetWorkerWidget(xc4_userSelection));
}

void CGuiTableGroup::DoSelectNextRow() {
  IncrementSelectedRow();
  DeactivateWorker(GetWorkerWidget(xc8_prevUserSelection));
  ActivateWorker(GetWorkerWidget(xc4_userSelection));
}

void CGuiTableGroup::DoSelectPrevRow() {
  DecrementSelectedRow();
  DeactivateWorker(GetWorkerWidget(xc8_prevUserSelection));
  ActivateWorker(GetWorkerWidget(xc4_userSelection));
}

bool CGuiTableGroup::DoIncrement() {
  int userSelect = xc4_userSelection;
  if (PreIncrement()) {
    if (x104_doMenuSelChange) {
      x104_doMenuSelChange(this, userSelect);
    }
    return true;
  }
  return false;
}

bool CGuiTableGroup::IsWorkerSelectable(int worker) {
  if (CGuiWidget* widget = GetWorkerWidget(worker)) {
    return widget->GetIsSelectable();
  }
  return false;
}

bool CGuiTableGroup::PreIncrement() {
  if (xd0_selectWrapAround) {
    for (int sel = (xc4_userSelection + 1) % xc0_elementCount; sel != xc4_userSelection;
         sel = (sel + 1) % xc0_elementCount) {
      if (IsWorkerSelectable(sel)) {
        SelectWorker(sel);
        return true;
      }
    }
  } else {
    for (int sel = rstl::min_val(xc4_userSelection + 1, xc0_elementCount); sel < xc0_elementCount;
         ++sel) {
      if (IsWorkerSelectable(sel)) {
        SelectWorker(sel);
        return true;
      }
    }
  }
  return false;
}

bool CGuiTableGroup::DoDecrement() {
  int userSelect = xc4_userSelection;
  if (PreDecrement()) {
    if (x104_doMenuSelChange) {
      x104_doMenuSelChange(this, userSelect);
    }
    return true;
  }
  return false;
}

bool CGuiTableGroup::PreDecrement() {
  if (xd0_selectWrapAround) {
    for (int sel = (xc4_userSelection + xc0_elementCount - 1) % xc0_elementCount;
         sel != xc4_userSelection; sel = (sel + xc0_elementCount - 1) % xc0_elementCount) {
      if (IsWorkerSelectable(sel)) {
        SelectWorker(sel);
        return true;
      }
    }
  } else {
    for (int sel = rstl::max_val(-1, xc4_userSelection - 1); sel >= 0; --sel) {
      if (IsWorkerSelectable(sel)) {
        SelectWorker(sel);
        return true;
      }
    }
  }
  return false;
}

void CGuiTableGroup::SelectWorker(const int worker) {
  const int selection = CMath::Clamp(0, worker, xc0_elementCount - 1);
  if (selection < xc4_userSelection) {
    while (selection != xc4_userSelection) {
      DoSelectPrevRow();
    }
  } else {
    while (selection != xc4_userSelection) {
      DoSelectNextRow();
    }
  }
}

bool CGuiTableGroup::DoAdvance() {
  if (HasMenuAdvanceCallback()) {
    xd4_doMenuAdvance(this);
  }
  return true;
}

bool CGuiTableGroup::DoCancel() {
  if (xec_doMenuCancel) {
    xec_doMenuCancel(this);
  }
  return true;
}

void CGuiTableGroup::SetMenuAdvanceCallback(const TFunctor1< CGuiTableGroup* const >& func) {
  xd4_doMenuAdvance = func;
}

void CGuiTableGroup::SetMenuCancelCallback(const TFunctor1< CGuiTableGroup* const >& func) {
  xec_doMenuCancel = func;
}

void CGuiTableGroup::SetMenuSelectionChangeCallback(
    const TFunctor2< CGuiTableGroup* const, const int >& func) {
  x104_doMenuSelChange = func;
}

void CGuiTableGroup::OnActivate() {
  CGuiWidget::OnActivate();
  CGuiWidget* const& widget = GetWorkerWidget(xc4_userSelection);
  widget->SetIsActive(GetIsActive());
}

void CGuiTableGroup::ActivateWorker(CGuiWidget* worker) { worker->SetIsActive(true); }

void CGuiTableGroup::DeactivateWorker(CGuiWidget* worker) { worker->SetIsActive(false); }

CGuiTableGroup::ETableSelectReturn CGuiTableGroup::IncrementSelectedRow() {
  xc8_prevUserSelection = xc4_userSelection;
  if (++xc4_userSelection >= xc0_elementCount) {
    xc4_userSelection = xd0_selectWrapAround ? 0 : xc0_elementCount - 1;
    return xd0_selectWrapAround ? kTSR_WrappedAround : kTSR_Unchanged;
  }
  return kTSR_Changed;
}

CGuiTableGroup::ETableSelectReturn CGuiTableGroup::DecrementSelectedRow() {
  xc8_prevUserSelection = xc4_userSelection;
  if (--xc4_userSelection < 0) {
    xc4_userSelection = xd0_selectWrapAround ? xc0_elementCount - 1 : 0;
    return xd0_selectWrapAround ? kTSR_WrappedAround : kTSR_Unchanged;
  }
  return kTSR_Changed;
}

void CGuiTableGroup::SetColors(const CColor& selected, const CColor& unselected) {
  const int selection = xc4_userSelection;
  for (int id = 0;; ++id) {
    CGuiWidget* worker = GetWorkerWidget(id);
    if (!worker) {
      break;
    }
    worker->SetColor(id == selection ? selected : unselected);
  }
}
