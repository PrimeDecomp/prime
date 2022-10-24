#include "MetroidPrime/CMainFlow.hpp"

#include "MetroidPrime/CArchMsgParmInt32.hpp"
#include "MetroidPrime/CArchitectureMessage.hpp"
#include "MetroidPrime/CArchitectureQueue.hpp"
#include "MetroidPrime/CCredits.hpp"
#include "MetroidPrime/CFrontEndUI.hpp"
#include "MetroidPrime/CMFGameLoader.hpp"
#include "MetroidPrime/CPlayMovie.hpp"
#include "MetroidPrime/CPreFrontEnd.hpp"
#include "MetroidPrime/CStateFlowSetter.hpp"
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
    SetGameState((EClientFlowStates)state.GetInt32(), queue);
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

void CMainFlow::SetGameState(EClientFlowStates state, CArchitectureQueue& queue) {
  x14_gameState = state;

  switch (state) {
  case kCFS_GameExit: {
    switch (gpMain->GetRestartMode()) {
    case CMain::kRM_WinBad:
    case CMain::kRM_WinGood:
    case CMain::kRM_WinBest:
      queue.Push(MakeMsg::CreateCreateIOWin(kAMT_IOWinManager, 12, 11, new CCredits()));
      break;
    case CMain::kRM_LoseGame:
      queue.Push(MakeMsg::CreateCreateIOWin(kAMT_IOWinManager, 12, 11,
                                            new CPlayMovie(CPlayMovie::kWM_LoseGame)));
      break;
    default:
      break;
    }
  }
  case kCFS_PreFrontEnd: {
    if (gpMain->GetRestartMode() == CMain::kRM_None) {
      break;
    }

    queue.Push(MakeMsg::CreateCreateIOWin(kAMT_IOWinManager, 12, 11, new CPreFrontEnd()));
    break;
  }
  case kCFS_FrontEnd:
    CIOWin* ioWin = nullptr;
    switch (gpMain->GetRestartMode()) {
    case CMain::kRM_StateSetter:
      ioWin = new CStateFlowSetter();
      break;
    case CMain::kRM_WinBad:
    case CMain::kRM_WinGood:
    case CMain::kRM_WinBest:
    case CMain::kRM_LoseGame:
    case CMain::kRM_Default:
      ioWin = new CFrontEndUI();
    default:
      break;
    }

    queue.Push(MakeMsg::CreateCreateIOWin(kAMT_IOWinManager, 12, 11, ioWin));
    break;
  case kCFS_Game:
    gpGameState->GameOptions().EnsureOptions();
    CMFGameLoader* gameFlow = new CMFGameLoader();
    gpMain->SetRestartMode(CMain::kRM_Default);
    queue.Push(MakeMsg::CreateCreateIOWin(kAMT_IOWinManager, 10, 1000, gameFlow));
    break;
  }
}

CMainFlow::~CMainFlow() {}
