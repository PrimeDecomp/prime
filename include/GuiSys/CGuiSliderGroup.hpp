#ifndef _CGUISLIDERGROUP
#define _CGUISLIDERGROUP

#include "GuiSys/CGuiCompoundWidget.hpp"
#include "Kyoto/TFunctor.hpp"
#include "rstl/reserved_vector.hpp"

class CGuiFunctionDef;
class CGuiControllerInfo;

class CGuiSliderGroup : public CGuiCompoundWidget {
public:
  enum EState { kS_None, kS_Decreasing, kS_Increasing };

  ~CGuiSliderGroup() {}
  FourCC GetWidgetTypeID() const override { return 'SLGP'; }
  void Update(float dt) override;
  void ProcessUserInput(const CFinalInput& input) override;
  bool AddWorkerWidget(CGuiWidget* worker) override;
  CGuiWidget* GetWorkerWidget(int id) override;

  CGuiSliderGroup(const CGuiWidgetParms& parms, float min, float max, float cur, float increment);
  static CGuiWidget* Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp);

  void SetSelectionChangedCallback(
      const TFunctor2< CGuiSliderGroup* const, const float >& callback);
  int MAF_Decrement(CGuiFunctionDef* func, CGuiControllerInfo* info);
  int MAF_Increment(CGuiFunctionDef* func, CGuiControllerInfo* info);
  void SetIncrement(float increment);
  void SetMinVal(float min);
  void SetMaxVal(float max);
  void SetCurVal(float cur);

private:
  float xb8_minVal;
  float xbc_maxVal;
  float xc0_roundedCurVal;
  float xc4_curVal;
  float xc8_increment;
  rstl::reserved_vector< CGuiWidget*, 2 > xcc_sliderRangeWidgets;
  TFunctor2< CGuiSliderGroup* const, const float > xd8_changeCallback;
  EState xf0_state;
  bool xf4_24_inputPending : 1;
};

CHECK_SIZEOF(CGuiSliderGroup, 0xf8)

#endif // _CGUISLIDERGROUP
