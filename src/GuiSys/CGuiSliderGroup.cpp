#include "GuiSys/CGuiSliderGroup.hpp"

#include "Kyoto/Input/CFinalInput.hpp"
#include "Kyoto/Math/CMath.hpp"
#include "rstl/math.hpp"

CGuiWidget* CGuiSliderGroup::Create(CGuiFrame* frame, CInputStream& in, CSimplePool* sp) {
  CGuiWidgetParms parms = ReadWidgetHeader(frame, in);
  // Retail consumes these values but uses a fixed slider range.
  in.ReadFloat();
  in.ReadFloat();
  in.ReadFloat();
  in.ReadFloat();
  CGuiWidget* widget = rs_new CGuiSliderGroup(parms, 0.f, 255.f, 0.f, 8.f);
  widget->ParseBaseInfo(frame, in, parms);
  return widget;
}

CGuiWidget* CGuiSliderGroup::GetWorkerWidget(int id) {
  if (id >= 0 && id <= 1) {
    return xcc_sliderRangeWidgets[id];
  }
  return nullptr;
}

CGuiSliderGroup::CGuiSliderGroup(const CGuiWidgetParms& parms, float min, float max, float cur,
                                 float increment)
: CGuiCompoundWidget(parms)
, xb8_minVal(min)
, xbc_maxVal(max)
, xc0_roundedCurVal(cur)
, xc4_curVal(cur)
, xc8_increment(increment)
, xcc_sliderRangeWidgets(2, nullptr)
, xd8_changeCallback()
, xf0_state(kS_None)
, xf4_24_inputPending(false) {}

bool CGuiSliderGroup::AddWorkerWidget(CGuiWidget* worker) {
  const int id = worker->GetWorkerId();
  if (id >= 0 && id <= 1) {
    xcc_sliderRangeWidgets[id] = worker;
  }
  return true;
}

void CGuiSliderGroup::ProcessUserInput(const CFinalInput& input) {
  if (input.DLALeft()) {
    MAF_Decrement(nullptr, nullptr);
    return;
  }
  if (input.DLARight()) {
    MAF_Increment(nullptr, nullptr);
    return;
  }
  if (input.PDPLeft()) {
    MAF_Decrement(nullptr, nullptr);
    return;
  }
  if (input.PDPRight()) {
    MAF_Increment(nullptr, nullptr);
    return;
  }
}

void CGuiSliderGroup::Update(float dt) {
  float delta = dt * (xbc_maxVal - xb8_minVal);
  float upper;
  for (upper = xb8_minVal; upper <= xc4_curVal; upper += xc8_increment) {
  }
  upper = rstl::min_val(xbc_maxVal, upper);
  float lower = upper - xc8_increment;
  float oldCur = xc4_curVal;
  if (xf0_state == kS_Decreasing) {
    if (xf4_24_inputPending) {
      xc4_curVal = rstl::max_val(xb8_minVal, oldCur - delta);
    } else {
      xc4_curVal = rstl::max_val(lower, oldCur - delta);
    }
  } else if (xf0_state == kS_Increasing) {
    if (xf4_24_inputPending) {
      xc4_curVal = rstl::min_val(xbc_maxVal, oldCur + delta);
    } else if (xc4_curVal != lower) {
      xc4_curVal = rstl::min_val(upper, oldCur + delta);
    }
  }
  if (oldCur == xc4_curVal) {
    xf0_state = kS_None;
  }
  float oldRounded = xc0_roundedCurVal;
  xc0_roundedCurVal = upper - xc4_curVal > xc4_curVal - lower ? lower : upper;
  if (oldRounded != xc0_roundedCurVal && xd8_changeCallback) {
    xd8_changeCallback(this, oldRounded);
  }
  const float factor =
      xbc_maxVal == xb8_minVal ? 0.f : (xc4_curVal - xb8_minVal) / (xbc_maxVal - xb8_minVal);
  CGuiWidget* first = xcc_sliderRangeWidgets[0];
  CGuiWidget* second = xcc_sliderRangeWidgets[1];
  CVector3f a = first->GetIdlePosition();
  CVector3f b = second->GetIdlePosition();
  CVector3f position = CVector3f::Lerp(a, b, factor);
  first->SetLocalPosition(position);
  xf4_24_inputPending = false;
}

void CGuiSliderGroup::SetCurVal(float cur) {
  xc0_roundedCurVal = CMath::Clamp(xb8_minVal, cur, xbc_maxVal);
  xc4_curVal = xc0_roundedCurVal;
}

void CGuiSliderGroup::SetMaxVal(float max) {
  xbc_maxVal = max;
  SetCurVal(xc0_roundedCurVal);
}

void CGuiSliderGroup::SetMinVal(float min) {
  xb8_minVal = min;
  SetCurVal(xc0_roundedCurVal);
}

void CGuiSliderGroup::SetIncrement(float increment) { xc8_increment = increment; }

int CGuiSliderGroup::MAF_Increment(CGuiFunctionDef* func, CGuiControllerInfo* info) {
  xf0_state = kS_Increasing;
  xf4_24_inputPending = true;
  return 1;
}

int CGuiSliderGroup::MAF_Decrement(CGuiFunctionDef* func, CGuiControllerInfo* info) {
  xf0_state = kS_Decreasing;
  xf4_24_inputPending = true;
  return 1;
}

void CGuiSliderGroup::SetSelectionChangedCallback(
    const TFunctor2< CGuiSliderGroup* const, const float >& callback) {
  xd8_changeCallback = callback;
}
