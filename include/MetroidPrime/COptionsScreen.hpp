#ifndef _COPTIONSSCREEN
#define _COPTIONSSCREEN

#include "Kyoto/Audio/CSfxHandle.hpp"
#include "Kyoto/Input/CRumbleGenerator.hpp"
#include "MetroidPrime/CPauseScreenBase.hpp"
#include "rstl/single_ptr.hpp"

class CGameCubeDoll;
class CQuitGameScreen;

class COptionsScreen : public CPauseScreenBase {
public:
  ~COptionsScreen() override;
  bool InputDisabled() const override;
  void Update(float dt, CRandom16& rand, CArchitectureQueue& queue) override;
  void Touch() override;
  void ProcessInput(const CFinalInput& input) override;
  void Draw(float transInterp, float totalAlpha, float yOff) const override;
  bool VReady() const override;
  void VActivate() override;
  void RightTableSelectionChanged(int oldSel, int newSel) override;
  void ChangedMode(EMode oldMode) override;
  void UpdateRightTable() override;
  bool ShouldLeftTableAdvance() override;
  bool ShouldRightTableAdvance() override;
  uint GetRightTableCount() const override;

  COptionsScreen(const CStateManager& mgr, CGuiFrame& frame, const CStringTable& pauseStrg);

private:
  void UpdateOptionView();
  void ResetOptionWidgetVisibility();
  void OnSliderChanged(CGuiSliderGroup* caller, float value);
  void OnEnumChanged(CGuiTableGroup* caller, int oldSel);

  rstl::single_ptr< CQuitGameScreen > x19c_quitGame;
  rstl::single_ptr< CGameCubeDoll > x1a0_gameCube;
  CSfxHandle x1a4_sliderSfx;
  CRumbleGenerator x1a8_rumble;
  float x29c_optionAlpha;
  bool x2a0_24_inOptionBody : 1;
};
CHECK_SIZEOF(COptionsScreen, 0x2a4)

#endif // _COPTIONSSCREEN
