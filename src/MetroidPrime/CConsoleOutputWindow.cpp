#include "MetroidPrime/CConsoleOutputWindow.hpp"

#include "MetroidPrime/CArchitectureMessage.hpp"
#include "MetroidPrime/Decode.hpp"


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
  
}
