#include "MetroidPrime/CMainFlow.hpp"

#include "MetroidPrime/CArchMsgParmInt32.hpp"
#include "MetroidPrime/CArchitectureMessage.hpp"
#include "MetroidPrime/CArchitectureQueue.hpp"
#include "MetroidPrime/CCredits.hpp"
#include "MetroidPrime/CFrontEndUI.hpp"
#include "MetroidPrime/CMFGameLoader.hpp"
#include "MetroidPrime/CPlayMovie.hpp"
#include "MetroidPrime/CPreFrontEnd.hpp"
#include "MetroidPrime/CStateSetterFlow.hpp"
#include "MetroidPrime/Decode.hpp"

#include "MetroidPrime/CMain.hpp"

CMainFlow::CMainFlow() : CIOWin(rstl::string_l("MainFlow")), x14_gameState(kCFS_Unspecified) {}

CIOWin::EMessageReturn CMainFlow::OnMessage(const CArchitectureMessage& msg,
                                            CArchitectureQueue& queue) {
  switch (msg.GetType()) {
  case kAM_TimerTick:
    AdvanceGameState(queue);
    break;
  case kAM_SetGameState:
    CArchMsgParmInt32 state = MakeMsg::GetParmNewGameflowState(msg);
    SetGameState(static_cast< EClientFlowStates >(state.GetInt32()), queue);
    return CIOWin::kMR_Exit;
  }

  return CIOWin::kMR_Normal;
}

bool CMainFlow::GetIsContinueDraw() const { return false; }

void CMainFlow::Draw() const {}

void CMainFlow::AdvanceGameState(CArchitectureQueue& queue) {
  switch (x14_gameState) {
  case kCFS_Game:
    SetGameState(kCFS_GameExit, queue);
    break;
  case kCFS_PreFrontEnd:
    SetGameState(kCFS_FrontEnd, queue);
    break;
  case kCFS_FrontEnd:
    SetGameState(kCFS_Game, queue);
    break;
  case kCFS_GameExit: {
    if (gpMain->GetRestartMode() != CMain::kRM_None &&
        gpMain->GetRestartMode() != CMain::kRM_StateSetter) {
      gpMain->SetX30(true);
    }
    //    [[fallthrough]];
  }
  case kCFS_Unspecified:
    SetGameState(kCFS_PreFrontEnd, queue);
    break;
  default:
    break;
  }
}

static inline bool IsCreditsMode(CMain::ERestartMode m) {
  return m >= CMain::kRM_WinBad && m <= CMain::kRM_LoseGame;
}

void CMainFlow::SetGameState(EClientFlowStates state, CArchitectureQueue& queue) {
  x14_gameState = state;

  switch (x14_gameState) {
  case kCFS_GameExit: {
    CMain::ERestartMode m = gpMain->GetRestartMode();
    if (IsCreditsMode(m)) {
      switch (m) {
      case CMain::kRM_WinBad:
      case CMain::kRM_WinGood:
      case CMain::kRM_WinBest:
        queue.Push(MakeMsg::CreateCreateIOWin(kAMT_IOWinManager, kFrontEndUIMsgPriority,
                                              kFrontEndUIDrawPriority, rs_new CCredits()));
        break;
      default:
        queue.Push(MakeMsg::CreateCreateIOWin(kAMT_IOWinManager, kFrontEndUIMsgPriority,
                                              kFrontEndUIDrawPriority,
                                              rs_new CPlayMovie(CPlayMovie::kWM_LoseGame)));
        break;
      }
      break;
    }
    break;
  }
  case kCFS_PreFrontEnd: {
    if (gpMain->GetRestartMode() == CMain::kRM_None) {
      break;
    }

    queue.Push(MakeMsg::CreateCreateIOWin(kAMT_IOWinManager, kFrontEndUIMsgPriority,
                                          kFrontEndUIDrawPriority, rs_new CPreFrontEnd()));
    break;
  }
  case kCFS_FrontEnd:
    if (gpMain->GetRestartMode() == CMain::kRM_None) {
      break;
    }
    CIOWin* ioWin;
    if (gpMain->GetRestartMode() == CMain::kRM_StateSetter) {
      ioWin = rs_new CStateSetterFlow();
    } else {
      ioWin = rs_new CFrontEndUI();
    }
    queue.Push(MakeMsg::CreateCreateIOWin(kAMT_IOWinManager, kFrontEndUIMsgPriority,
                                          kFrontEndUIDrawPriority, ioWin));
    break;
  case kCFS_Game:
    gpGameState->GameOptions().EnsureOptions();
    CIOWin* gameFlow = rs_new CMFGameLoader();
    gpMain->SetRestartMode(CMain::kRM_Default);
    queue.Push(MakeMsg::CreateCreateIOWin(kAMT_IOWinManager, kMFGameMsgPriority,
                                          kMFGameDrawPriority, gameFlow));
    break;
  }
}

CMainFlow::~CMainFlow() {}
