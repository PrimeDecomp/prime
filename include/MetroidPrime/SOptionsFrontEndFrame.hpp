#ifndef _SOPTIONSFRONTENDFRAME
#define _SOPTIONSFRONTENDFRAME

#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/Input/CRumbleGenerator.hpp"
#include "Kyoto/TToken.hpp"

class CFinalInput;
class CGuiFrame;
class CGuiTableGroup;
class CGuiSliderGroup;
class CStringTable;
class CSaveGameScreen;

class SOptionsFrontEndFrame {
public:
  SOptionsFrontEndFrame();
  ~SOptionsFrontEndFrame();
  void Update(float dt, const CSaveGameScreen* saveUI);
  bool ProcessUserInput(const CFinalInput& input, CSaveGameScreen* saveUI);
  void Draw() const;

private:
  bool PumpLoad();
  void FinishedLoading();
  void SetRightUIText();
  void HandleRightSelectionChange();
  void DeactivateRightMenu();
  void DoLeftMenuAdvance(CGuiTableGroup* caller);
  void DoMenuSelectionChange(CGuiTableGroup* caller, int oldSel);
  void DoMenuCancel(CGuiTableGroup* caller);
  void SetTableColors(CGuiTableGroup* table) const;
  void DoSliderChange(CGuiSliderGroup* caller, float value);

  float x0_uiAlpha;
  TCachedToken< CGuiFrame > x4_frme;
  TCachedToken< CStringTable > x10_pauseScreen;
  CGuiFrame* x1c_loadedFrame;
  CStringTable* x20_loadedPauseStrg;
  CGuiTableGroup* x24_tablegroup_leftmenu;
  CGuiTableGroup* x28_tablegroup_rightmenu;
  CGuiTableGroup* x2c_tablegroup_double;
  CGuiTableGroup* x30_tablegroup_triple;
  CGuiSliderGroup* x34_slidergroup_slider;
  float x38_rowPitch;
  CSfxHandle x3c_sliderSfx;
  CRumbleGenerator x40_rumbleGen;
  bool x134_24_visible : 1;
  bool x134_25_exitOptions : 1;
};
CHECK_SIZEOF(SOptionsFrontEndFrame, 0x138)

#endif // _SOPTIONSFRONTENDFRAME
