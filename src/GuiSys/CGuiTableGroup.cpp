#include "GuiSys/CGuiTableGroup.hpp"

#include "Kyoto/Input/CFinalInput.hpp"

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
  bool selectWraparound = in.Get< bool >();
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

void CGuiTableGroup::SetMenuAdvanceCallback(const TFunctor1< CGuiTableGroup* const >& func) {
  xd4_doMenuAdvance = func;
}

void CGuiTableGroup::SetMenuCancelCallback(const TFunctor1< CGuiTableGroup* const >& func) {
  xec_doMenuCancel = func;
}

int CGuiTableGroup::DoAdvance() {
  if (!xd4_doMenuAdvance) {
    xd4_doMenuAdvance(this);
  }
  return 1;
}

int CGuiTableGroup::DoCancel() {
  if (!xec_doMenuCancel) {
    xec_doMenuCancel(this);
  }
  return 1;
}

void CGuiTableGroup::SetMenuSelectionChangeCallback(
    const TFunctor3< CGuiTableGroup* const, const int, const int >& func) {
  x104_doMenuSelChange = func;
}