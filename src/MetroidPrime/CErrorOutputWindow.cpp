#include "MetroidPrime/CErrorOutputWindow.hpp"

#include "MetroidPrime/CArchitectureMessage.hpp"

#include "MetaRender/CCubeRenderer.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"

#include "dolphin/dvd.h"

CErrorOutputWindow::CErrorOutputWindow(bool flag)
: CIOWin(rstl::string_l("Error Output Window"))
, x14_state(0)
, x18_24_(false)
, x18_25_(true)
, x18_26_(true)
, x18_27_(true)
, x18_28_(flag)
, x1c_msg(nullptr)

{}

bool CErrorOutputWindow::GetIsContinueDraw() const { return x14_state == 2; }

CIOWin::EMessageReturn CErrorOutputWindow::OnMessage(const CArchitectureMessage& msg,
                                                     CArchitectureQueue&) {

  switch (msg.GetType()) {
  case kAM_UserInput:
    return CIOWin::EMessageReturn((-x14_state | x14_state) >> 0x1f);

  case kAM_FrameBegin:
    UpdateWindow();

  case kAM_TimerTick:
  case kAM_FrameEnd:
    {
      int result = x14_state ^ 1;
      result = (result >> 1) - (result & x14_state) >> 0x1f;
      return CIOWin::EMessageReturn(result);
    }
    break;
  }
  return kMR_Normal;
}

void CErrorOutputWindow::UpdateWindow() {
  if (x14_state == 1) {
    sub_802694c4(2);
    return;
  }
  s32 driveStatus = DVDGetDriveStatus();
  const wchar_t* errMsg = nullptr;
  int flagThing = (-x14_state | x14_state) >> 0x1f;
  static s32 s_LastDvdStatus = 0;
  if (driveStatus != s_LastDvdStatus) {
    s_LastDvdStatus = driveStatus;
  }
  if (true) {
    switch (driveStatus)
    {
    case 4:
      errMsg = L"Please insert the\nMetroid Prime Game Disc";
      break;
    
    case 5:
      errMsg = L"The Disc Cover is open.\nIf you want to continue the game,\nplease close the Disc Cover.";
      break;

    case 6:
      errMsg = L"This is not the\nMetroid Prime Game Disc.\n \nPlease insert the\nMetroid Prime Game Disc.";
      break;

    case 0xb:
      errMsg = L"The Game Disc could not be read.\nPlease read the Nintendo GameCube\nInstruction Booklet\nfor more information.";
      break;

    case -1:
      errMsg = L"An error has occurred. Turn the\npower off and refer to the\nNintendo GameCube\nInstruction Booklet\nfor further instructions.";

    default:
      break;
    }
    bool flag = false;
    if (driveStatus != 2 && driveStatus != 1 && errMsg) {
      if (x1c_msg != nullptr && errMsg != x1c_msg) {
        flag = true;
      }
      x1c_msg = errMsg;
    }
    if (flagThing == 0) {
      if (x14_state != 0) {
        if (x18_26_) {
          CGraphics::SetIsBeginSceneClearFb(x18_24_);          
        }
        sub_802694c4(0);
      }
    } else if (x14_state == 3) {
      if (flag) {
        if (x18_26_) {
          CGraphics::SetIsBeginSceneClearFb(x18_24_);          
        }
        sub_802694c4(2);
      }
    } else {
      if (x14_state == 0) {
        x18_24_ = CGraphics::IsBeginSceneClearFb();
      }
      sub_802694c4(x14_state + 1);
    }
  }
}

void CErrorOutputWindow::Draw() const {
  // SCOPED_GRAPHICS_DEBUG_GROUP("CErrorOutputWindow::Draw", zeus::skGreen);
  switch (x14_state) {
    case 0:
      break;

    case 2:
      sub_802695f8();
    
    case 1:  
    case 3:
      CGraphics::SetIsBeginSceneClearFb(false);
      if (gpRender != NULL) {
        gpRender->x318_26_ = true;
      }
      break;
  }
}

void CErrorOutputWindow::sub_802695f8() const {}

void CErrorOutputWindow::sub_802694c4(int) {}
