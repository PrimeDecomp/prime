#ifndef _CPAUSESCREEN
#define _CPAUSESCREEN

#include "Kyoto/TToken.hpp"
#include "MetroidPrime/CPauseScreenBase.hpp"
#include "rstl/auto_ptr.hpp"
#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"

class CDependencyGroup;
class CDvdRequest;

class CPauseScreen {
public:
  enum ESubScreen { kSS_LogBook, kSS_Options, kSS_Inventory, kSS_ToGame, kSS_ToMap };

  CPauseScreen(int subscreen, const CDependencyGroup& suitDgrp, const CDependencyGroup& ballDgrp);
  ~CPauseScreen();
  void ProcessControllerInput(const CStateManager& mgr, const CFinalInput& input);
  void Update(float dt, const CStateManager& mgr, CRandom16& rand, CArchitectureQueue& queue);
  void PreDraw();
  void Draw() const;
  bool IsLoaded() const;
  bool IsTransitioning() const { return x8_curSubscreen != xc_nextSubscreen; }
  bool ShouldSwitchToMapScreen() const;
  bool ShouldSwitchToInGame() const;
  float GetHelmetCamYOff() const;

private:
  static bool IsInvalidSubscreen(ESubScreen screen) {
    return screen == kSS_ToGame || screen == kSS_ToMap;
  }
  static ESubScreen GetPreviousSubscreen(ESubScreen screen);
  static ESubScreen GetNextSubscreen(ESubScreen screen);
  CPauseScreenBase* BuildPauseSubScreen(ESubScreen screen, const CStateManager& mgr,
                                        CGuiFrame& frame) const;
  void StartTransition(float time, const CStateManager& mgr, ESubScreen screen, int direction);
  bool CheckLoadComplete(const CStateManager& mgr);
  void InitializeFrameGlue();
  bool InputEnabled() const;
  void TransitionComplete();

  ESubScreen x0_initialSubscreen;
  int x4_direction;
  ESubScreen x8_curSubscreen;
  ESubScreen xc_nextSubscreen;
  float x10_alphaInterp;
  TCachedToken< CStringTable > x14_strgPauseScreen;
  const CDependencyGroup& x20_suitDgrp;
  const CDependencyGroup& x24_ballDgrp;
  TCachedToken< CGuiFrame > x28_pauseScreenInstructions;
  CGuiFrame* x34_loadedPauseScreenInstructions;
  CGuiTextPane* x38_textpane_l1;
  CGuiTextPane* x3c_textpane_r;
  CGuiTextPane* x40_textpane_a;
  CGuiTextPane* x44_textpane_b;
  CGuiTextPane* x48_textpane_return;
  CGuiTextPane* x4c_textpane_next;
  CGuiTextPane* x50_textpane_back;
  CAssetId x54_frmePauseScreenId;
  uint x58_frmePauseScreenBufSz;
  rstl::single_ptr< char > x5c_frmePauseScreenBuf;
  rstl::single_ptr< CDvdRequest > x60_loadTok;
  rstl::reserved_vector< rstl::auto_ptr< CGuiFrame >, 2 > x64_frameInsts;
  uint x78_activeIdx;
  rstl::reserved_vector< rstl::auto_ptr< CPauseScreenBase >, 2 > x7c_screens;
  bool x90_resourcesLoaded;
  bool x91_initialTransition;
};
CHECK_SIZEOF(CPauseScreen, 0x94)

#endif // _CPAUSESCREEN
