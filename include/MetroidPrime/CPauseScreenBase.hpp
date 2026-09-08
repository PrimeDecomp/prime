#ifndef _CPAUSESCREENBASE
#define _CPAUSESCREENBASE

#include "Kyoto/Math/CVector3f.hpp"
#include "rstl/reserved_vector.hpp"
#include "types.h"

class CArchitectureQueue;
class CAuiImagePane;
class CColor;
class CFinalInput;
class CGuiFrame;
class CGuiModel;
class CGuiSliderGroup;
class CGuiTableGroup;
class CGuiTextPane;
class CGuiWidget;
class CRandom16;
class CStateManager;
class CStringTable;

class CPauseScreenBase {
public:
  enum EMode { kM_Invalid = -1, kM_LeftTable, kM_RightTable, kM_TextScroll };

  virtual ~CPauseScreenBase();
  virtual bool InputDisabled() const;
  virtual void TransitioningAway();
  virtual void Update(float dt, CRandom16& rand, CArchitectureQueue& queue);
  virtual void Touch();
  virtual void ProcessInput(const CFinalInput& input);
  virtual void Draw(float transInterp, float totalAlpha, float yOff) const;
  virtual float GetCameraYBias() const { return 0.f; }
  virtual bool VReady() const = 0;
  virtual void VActivate() = 0;
  virtual void RightTableSelectionChanged(int oldSel, int newSel);
  virtual void ChangedMode(EMode oldMode);
  virtual void UpdateRightTable();
  virtual bool ShouldLeftTableAdvance();
  virtual bool ShouldRightTableAdvance();
  virtual uint GetRightTableCount() const = 0;
  virtual bool IsRightLogDynamic() const;
  virtual void UpdateRightLogColors(bool active, const CColor& color);
  virtual void UpdateRightLogHighlight(bool active, int idx, const CColor& activeColor,
                                       const CColor& inactiveColor);

  CPauseScreenBase(const CStateManager& mgr, CGuiFrame& frame, const CStringTable& pauseStrg);
  bool ShouldExitPauseScreen() const;
  bool IsReady();
  bool CanDraw() const { return x198_27_canDraw; }
  EMode GetMode() const { return x10_mode; }
  float GetAlpha() const { return x14_alpha; }

protected:
  void InitializeFrameGlue();
  void ChangeMode(EMode mode);
  void UpdateSideTable(CGuiTableGroup* table);
  void SetRightTableSelection(int oldSel, int newSel);
  void OnLeftTableAdvance(CGuiTableGroup* caller);
  void OnRightTableAdvance(CGuiTableGroup* caller);
  void OnTableSelectionChange(CGuiTableGroup* caller, int oldSel);
  void OnRightTableCancel(CGuiTableGroup* caller);

  const CStateManager& x4_mgr;
  CGuiFrame& x8_frame;
  const CStringTable& xc_pauseStrg;
  EMode x10_mode;
  float x14_alpha;
  int x18_firstViewRightSel;
  int x1c_rightSel;
  CVector3f x20_;
  CVector3f x2c_rightTableStart;
  float x38_highlightPitch;
  CVector3f x3c_sliderStart;
  CVector3f x48_tableDoubleStart;
  CVector3f x54_tableTripleStart;
  CGuiWidget* x60_basewidget_pivot;
  CGuiWidget* x64_basewidget_bgframe;
  CGuiWidget* x68_basewidget_leftside;
  CGuiWidget* x6c_basewidget_leftlog;
  CGuiTableGroup* x70_tablegroup_leftlog;
  CGuiWidget* x74_basewidget_leftguages;
  CGuiModel* x78_model_lefthighlight;
  CGuiWidget* x7c_basewidget_rightside;
  CGuiWidget* x80_basewidget_rightlog;
  CGuiTableGroup* x84_tablegroup_rightlog;
  CGuiWidget* x88_basewidget_rightguages;
  CGuiModel* x8c_model_righthighlight;
  CGuiModel* x90_model_textarrowtop;
  CGuiModel* x94_model_textarrowbottom;
  CGuiModel* x98_model_scrollleftup;
  CGuiModel* x9c_model_scrollleftdown;
  CGuiModel* xa0_model_scrollrightup;
  CGuiModel* xa4_model_scrollrightdown;
  rstl::reserved_vector< CGuiTextPane*, 5 > xa8_textpane_categories;
  rstl::reserved_vector< CGuiModel*, 5 > xc0_model_categories;
  rstl::reserved_vector< CGuiTextPane*, 5 > xd8_textpane_titles;
  rstl::reserved_vector< CAuiImagePane*, 20 > xf0_imagePanes;
  rstl::reserved_vector< CGuiModel*, 5 > x144_model_titles;
  rstl::reserved_vector< CGuiModel*, 5 > x15c_model_righttitledecos;
  CGuiTextPane* x174_textpane_body;
  CGuiTextPane* x178_textpane_title;
  CGuiModel* x17c_model_textalpha;
  CGuiWidget* x180_basewidget_yicon;
  CGuiTextPane* x184_textpane_yicon;
  CGuiTextPane* x188_textpane_ytext;
  CGuiSliderGroup* x18c_slidergroup_slider;
  CGuiTableGroup* x190_tablegroup_double;
  CGuiTableGroup* x194_tablegroup_triple;
  bool x198_24_ready : 1;
  bool x198_25_handledInput : 1;
  bool x198_26_exitPauseScreen : 1;
  bool x198_27_canDraw : 1;
  bool x198_28_pulseTextArrowTop : 1;
  bool x198_29_pulseTextArrowBottom : 1;
};
CHECK_SIZEOF(CPauseScreenBase, 0x19c)

#endif // _CPAUSESCREENBASE
