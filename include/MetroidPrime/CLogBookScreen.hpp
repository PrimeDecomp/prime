#ifndef _CLOGBOOKSCREEN
#define _CLOGBOOKSCREEN

#include "Kyoto/TToken.hpp"
#include "MetroidPrime/CPauseScreenBase.hpp"
#include "rstl/pair.hpp"
#include "rstl/single_ptr.hpp"
#include "rstl/vector.hpp"

class CArtifactDoll;
class CScannableObjectInfo;

class CLogBookScreen : public CPauseScreenBase {
public:
  ~CLogBookScreen() override;
  bool InputDisabled() const override;
  void TransitioningAway() override;
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

  CLogBookScreen(const CStateManager& mgr, CGuiFrame& frame, const CStringTable& pauseStrg);

private:
  enum ELeavePauseState { kLPS_InPause, kLPS_LeavingPause, kLPS_LeftPause };

  rstl::reserved_vector< rstl::vector< rstl::pair< CAssetId, bool > >, 5 > x19c_scanCompletes;
  rstl::vector< rstl::pair< TCachedToken< CScannableObjectInfo >, TCachedToken< CStringTable > > >
      x1f0_curViewScans;
  rstl::reserved_vector< rstl::vector< rstl::pair< TLockedToken< CScannableObjectInfo >,
                                                   TLockedToken< CStringTable > > >,
                         5 >
      x200_viewScans;
  float x254_viewInterp;
  rstl::single_ptr< CArtifactDoll > x258_artifactDoll;
  ELeavePauseState x25c_leavePauseState;
  bool x260_24_loaded : 1;
  bool x260_25_inTextScroll : 1;
  bool x260_26_exitTextScroll : 1;
};
CHECK_SIZEOF(CLogBookScreen, 0x264)

#endif // _CLOGBOOKSCREEN
