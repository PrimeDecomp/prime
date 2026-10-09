#include "MetroidPrime/CConsoleOutputWindow.hpp"

#include "MetroidPrime/CArchitectureMessage.hpp"
#include "MetroidPrime/Decode.hpp"

#include "MetaRender/CCubeRenderer.hpp"

#include "GameVersions.h"


#include <rstl/math.hpp>

CConsoleOutputWindow* CConsoleOutputWindow::mInstance = nullptr;

CConsoleOutputWindow::CConsoleOutputWindow(int stringCount, float f1, float fontScale)
: CIOWin(rstl::string_l("ConsoleOutputWindow"))
, mFont(fontScale)
, mUnk(f1)
, x40_(632.f / mFont.CharWidth('0'))
, x44_(0)
, x48_(0) {
  mText.reserve(stringCount);
  mUnkFloats.reserve(stringCount);
  for (int i = 0; i < stringCount; i++) {
    mText.push_back(rstl::string("", x40_ + 1));
    mUnkFloats.push_back(0.f);
  }
  mInstance = this;
}

CConsoleOutputWindow::~CConsoleOutputWindow() { mInstance = nullptr; }
CIOWin::EMessageReturn CConsoleOutputWindow::OnMessage(const CArchitectureMessage& msg,
                                                       CArchitectureQueue& queue) {
  switch (msg.GetType()) {
  case kAM_UserInput:
    return kMR_Normal;
    break;
  case kAM_TimerTick:
    Update(MakeMsg::GetParmTimerTick(msg).GetReal());
    return kMR_Normal;
  default:
    return kMR_Normal;
  }
}


void CConsoleOutputWindow::Update(float dt) {
  for (int i = 0; i < mText.size(); ++i) {
    mUnkFloats[i] = rstl::max_val(0.f, mUnkFloats[i] - dt);
  }
}


void CConsoleOutputWindow::Draw() const {
#if VERSION >= VERSION_GM8P_00
  int idx = PrevIndex(x44_);
  int line = 0;
  gpRender->SetBlendMode_AlphaBlended();
  while (mUnkFloats[idx] > 0.f && line < mText.size()) {
    mFont.DrawString(mText[idx].c_str(), 20, line * (mFont.GetFontSize() + 2) + 10, CColor::Black());
    mFont.DrawString(mText[idx].c_str(), 18, line * (mFont.GetFontSize() + 2) + 12,
                     CColor(static_cast< uchar >(200), 200, 200, 255));
    ++line;
    idx = PrevIndex(idx);
  }
#endif
}
