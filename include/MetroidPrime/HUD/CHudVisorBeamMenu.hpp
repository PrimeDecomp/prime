#ifndef _CHUDVISORBEAMMENU
#define _CHUDVISORBEAMMENU

#include "types.h"

#include "rstl/reserved_vector.hpp"

class CGuiFrame;
class CGuiModel;
class CGuiTextPane;
class CGuiWidget;

class CHudVisorBeamMenu {
public:
  enum EVisorBeamMenu { kVBM_Visor, kVBM_Beam };

  struct SMenuItem {
    CGuiModel* x0_model_loz;
    CGuiModel* x4_model_icon;
    float x8_positioner;
    float xc_opacity;
  };

  CHudVisorBeamMenu(CGuiFrame& baseHud, EVisorBeamMenu type,
                    const rstl::reserved_vector< bool, 4 >& enables);

  void Update(float dt, bool init);
  void UpdateHudAlpha(float alpha);
  void SetIsVisibleGame(bool v);
  void SetPlayerHas(const rstl::reserved_vector< bool, 4 >& enables);
  void SetSelection(int selection, int pending, float interp);

  float GetCurrTitleAlpha() const;

private:
  enum EAnimPhase {
    kAP_None,
    kAP_Steady,
    kAP_SelectFlash,
    kAP_Animate,
  };

  CGuiFrame& x0_baseHud;
  EVisorBeamMenu x4_type;
  int x8_selectedItem;
  int xc_pendingSelection;
  float x10_interp;
  bool x14_24_visibleDebug : 1;
  bool x14_25_visibleGame : 1;
  bool x14_26_dirty : 1;
  CGuiWidget* x18_basewidget_menu;
  CGuiWidget* x1c_basewidget_menutitle;
  CGuiTextPane* x20_textpane_menu;
  CGuiModel* x24_model_ghost;
  rstl::reserved_vector< SMenuItem, 4 > x28_menuItems;
  EAnimPhase x6c_animPhase;
  float x70_;
  float x74_;
  float x78_textFader;
  float x7c_animDur;
  bool x80_24_swapBeamControls : 1;
};
CHECK_SIZEOF(CHudVisorBeamMenu, 0x84)

#endif // _CHUDVISORBEAMMENU
