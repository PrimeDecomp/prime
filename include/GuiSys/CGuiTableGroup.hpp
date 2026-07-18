#ifndef _CGUITABLEGROUP
#define _CGUITABLEGROUP

#include "GuiSys/CGuiCompoundWidget.hpp"

#include <Kyoto/TFunctor.hpp>

class CGuiTableGroup : public CGuiCompoundWidget {
public:
  enum ETableGroupModes { kTGM_NoWrap, kTGM_Wrap };
  class CRepeatState {
  public:
    CRepeatState();
    bool Update(float dt, bool state);

  private:
    float x0_timer;
  };

  static CGuiTableGroup* Create(CGuiFrame* frame, CInputStream& in, CSimplePool* pool);

  CGuiTableGroup(const CGuiWidgetParms& parms, int elementCount, int defSel, bool selectWrapAround);

  void ProcessUserInput(const CFinalInput& input) override;

  void SetMenuAdvanceCallback(const TFunctor1< CGuiTableGroup* const >& func);
  void SetMenuCancelCallback(const TFunctor1< CGuiTableGroup* const >& func);
  void SetMenuSelectionChangeCallback(
      const TFunctor3< CGuiTableGroup* const, const int, const int >& func);

private:
  int DoAdvance();
  int DoCancel();
  void DoDecrement();
  void DoIncrement();

  CRepeatState xb8_decRepeat;
  CRepeatState xbc_incRepeat;
  int xc0_elementCount;
  int xc4_userSelection;
  int xc8_prevUserSelection;
  int xcc_defaultUserSelection;
  bool xd0_selectWrapAround;
  bool xd1_vertical;
  TFunctor1< CGuiTableGroup* const > xd4_doMenuAdvance;
  TFunctor1< CGuiTableGroup* const > xec_doMenuCancel;
  TFunctor3< CGuiTableGroup* const, const int, const int > x104_doMenuSelChange;
};

#endif // _CGUITABLEGROUP
