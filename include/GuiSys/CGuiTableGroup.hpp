#ifndef _CGUITABLEGROUP
#define _CGUITABLEGROUP

#include "GuiSys/CGuiCompoundWidget.hpp"
#include "Kyoto/TFunctor.hpp"

class CColor;

class CGuiTableGroup : public CGuiCompoundWidget {
public:
  class CRepeatState {
    CRepeatState();
    uchar Update(float dt, bool state);
  private:
    float x0_timer;
  };

  void SetColors(const CColor& selected, const CColor& unselected) const;
  int GetUserSelection() const { return xc4_userSelection; }
  void SetUserSelection(int sel) {
    xc8_prevUserSelection = xc4_userSelection;
    xc4_userSelection = sel;
  }
  void SetMenuAdvanceCallback(const TFunctor1< CGuiTableGroup* const >& cb);
  void SetMenuSelectionChangeCallback(
      const TFunctor3< CGuiTableGroup* const, const int, const int >& cb);
  void SetMenuCancelCallback(const TFunctor1< CGuiTableGroup* const >& cb);

  void SetVertical(bool v) { xd1_vertical = v; }

private:
  char xb8_pad[0xc4 - 0xb8];
  int xc4_userSelection;
  int xc8_prevUserSelection;
  int xcc_defaultUserSelection;
  bool xd0_selectWraparound;
  bool xd1_vertical;
};

#endif // _CGUITABLEGROUP
