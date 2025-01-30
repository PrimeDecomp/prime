#include "MetroidPrime/CErrorOutputWindow.hpp"

#include "MetroidPrime/CArchitectureMessage.hpp"

#include "Kyoto/Graphics/CGraphics.hpp"
#include "MetaRender/CCubeRenderer.hpp"

#include "MetroidPrime/CIOWin.hpp"
#include "MetroidPrime/CMemoryCardDriver.hpp"
#include "dolphin/dvd.h"

CErrorOutputWindow::CErrorOutputWindow(EFlag flag)
: CIOWin(rstl::string_l("Error output window"))
, x14_state(kS_Zero)
, x18_24_(false)
, x18_25_(true)
, x18_26_(true)
, x18_27_(true)
, x18_28_(flag == kF_Zero)
, x1c_msg(nullptr) {}

bool CErrorOutputWindow::GetIsContinueDraw() const { return x14_state < kS_Two; }

CIOWin::EMessageReturn CErrorOutputWindow::OnMessage(const CArchitectureMessage& msg,
                                                     CArchitectureQueue&) {
  switch (msg.GetType()) {
  case kAM_UserInput:
    if (x14_state != kS_Zero) {
      return kMR_Exit;
    }
    return kMR_Normal;

  case kAM_FrameBegin:
    UpdateWindow();
    // fallthrough

  case kAM_TimerTick:
  case kAM_FrameEnd:
    if (x14_state < kS_One) {
      return kMR_Exit;
    }
    return kMR_Normal;

  default:
    break;
  }
  return kMR_Normal;
}

void CErrorOutputWindow::UpdateWindow() {
  if (x14_state == 1) {
    fn_802694C4(kS_Two);
    return;
  }
  s32 driveStatus = DVDGetDriveStatus();
  const wchar_t* errMsg = nullptr;
  bool flagThing = x14_state != kS_Zero;
  static s32 s_LastDvdStatus = 0;
  if (driveStatus != s_LastDvdStatus) {
    s_LastDvdStatus = driveStatus;
  }
  switch (driveStatus) {
  case 5:
    errMsg = L"The Disc Cover is open.\nIf you want to continue the game,\nplease close the Disc "
             L"Cover.";
    break;
  case 4:
    errMsg = L"Please insert the\nMetroid Prime Game Disc.";
    break;
  case 6:
    errMsg = L"This is not the\nMetroid Prime Game Disc.\n \nPlease insert the\nMetroid Prime "
             L"Game Disc.";
    break;
  case -1:
    errMsg = L"An error has occurred. Turn the\npower off and refer to the\nNintendo "
             L"GameCube\nInstruction Booklet\nfor further instructions.";
    break;
  case 0xb:
    errMsg = L"The Game Disc could not be read.\nPlease read the Nintendo GameCube\nInstruction "
             L"Booklet\nfor more information.";
    break;
  default:
    break;
  }
  bool flag = false;
  if (driveStatus != 2 && driveStatus != 1) {
    flagThing = errMsg != nullptr;
    if (errMsg != nullptr) {
      if (x1c_msg != nullptr && errMsg != x1c_msg) {
        flag = true;
      }
      x1c_msg = errMsg;
    }
  }
  if (!flagThing) {
    if (x14_state != kS_Zero) {
      if (x18_28_) {
        CGraphics::SetIsBeginSceneClearFb(x18_24_);
      }
      fn_802694C4(kS_Zero);
    }
  } else if (x14_state != kS_Three) {
    if (x14_state == kS_Zero) {
      x18_24_ = CGraphics::IsBeginSceneClearFb();
    }
    fn_802694C4(EState(x14_state + 1));
  } else {
    if (flag) {
      if (x18_28_) {
        CGraphics::SetIsBeginSceneClearFb(x18_24_);
      }
      fn_802694C4(kS_Two);
    }
  }
}

void CErrorOutputWindow::Draw() const {
  switch (x14_state) {
  case 0:
    break;

  case 2:
    fn_802695F8();

  case 1:
  case 3:
    CGraphics::SetIsBeginSceneClearFb(false);
    if (gpRender != NULL) {
      gpRender->SetRequestRGBA6(true);
    }
    break;
  }
}

void CErrorOutputWindow::fn_802695F8() const {}

void CErrorOutputWindow::fn_802694C4(EState) {}
