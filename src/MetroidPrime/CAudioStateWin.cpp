#include "MetroidPrime/CAudioStateWin.hpp"

#include "MetroidPrime/CMain.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"

CAudioStateWin::CAudioStateWin() : CIOWin(rstl::string_l("CAudioStateWin")) {}

CAudioStateWin::~CAudioStateWin(){};

CIOWin::EMessageReturn CAudioStateWin::OnMessage(const CArchitectureMessage& msg,
                                                 CArchitectureQueue&) {
  const EArchMsgType msgType = msg.GetType();
  switch (msgType) {
  case kAM_SetGameState:
    CSfxManager::KillAll(CSfxManager::kSC_Game);
    CSfxManager::SetChannel(CSfxManager::kSC_Game);
    break;

  case kAM_QuitGameplay:
    if (gpGameState->WorldTransitionManager()->GetTransType() == CWorldTransManager::kTT_Disabled ||
        gpMain->GetRestartMode() != CMain::kRM_None) {
      CSfxManager::SetChannel(CSfxManager::kSC_Default);
      CSfxManager::KillAll(CSfxManager::kSC_Game);
    }
    break;
  }

  return CIOWin::kMR_Normal;
}
