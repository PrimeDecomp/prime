#ifndef _CHUDVISORBEAMMENU
#define _CHUDVISORBEAMMENU

#include "rstl/reserved_vector.hpp"
#include "types.h"

class CGuiFrame;
class CGuiWidget;
class CGuiModel;
class CGuiTextPane;
class CGuiCamera;
class CAuiEnergyBarT01;
class CAuiMeter;
class CStateManager;

class CHudVisorBeamMenu {
public:
  enum EVisorBeamMenu { kVBM_Visor, kVBM_Beam };
  CHudVisorBeamMenu(CGuiFrame& frame, EVisorBeamMenu type,
                    const rstl::reserved_vector< bool, 4 >& enables);
  void Update(float dt, bool init);
  void UpdateHudAlpha(float alpha);
  void SetIsVisibleGame(bool visible);
  void SetPlayerHas(const rstl::reserved_vector< bool, 4 >& enables);
  void SetSelection(int selection, int pending, float interp);

private:
  struct SMenuItem {
    SMenuItem() : x0_model_loz(nullptr), x4_model_icon(nullptr), x8_positioner(0.f), xc_opacity(0.f) {}
    CGuiModel* x0_model_loz;
    CGuiModel* x4_model_icon;
    float x8_positioner;
    float xc_opacity;
  };
  enum EAnimPhase { kAP_None, kAP_Steady, kAP_SelectFlash, kAP_Animate };
  EVisorBeamMenu GetSwappedType() const { return x80_24_swapBeamControls ? static_cast< EVisorBeamMenu >(1 - x4_type) : x4_type; }
  bool GetIsVisible() const { return x14_24_visibleDebug && x14_25_visibleGame; }
  void UpdateMenuWidgetTransform(int idx, CGuiWidget& widget, float t);
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
