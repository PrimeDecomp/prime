#include "MetroidPrime/CMFGame.hpp"

#include "Kyoto/Audio/CSfxManager.hpp"
#include "Kyoto/Graphics/CGraphics.hpp"
#include "MetroidPrime/CDecalManager.hpp"
#include "MetroidPrime/CInGameGuiManager.hpp"
#include "MetroidPrime/CMain.hpp"
#include "MetroidPrime/CStateManager.hpp"
#include "MetroidPrime/DefaultWorld.hpp"
#include "MetroidPrime/Player/CMorphBall.hpp"
#include "MetroidPrime/Player/CPlayer.hpp"
#include "MetroidPrime/Player/CPlayerGun.hpp"
#include "rstl/math.hpp"

CMFGame::CMFGame(rstl::ncrc_ptr< CStateManager > stateManager,
                 rstl::ncrc_ptr< CInGameGuiManager > guiManager,
                 CArchitectureQueue& architectureQueue)
: CIOWin(rstl::string_l("CMFGame"))
, mStateManager(stateManager)
, mGuiManager(guiManager)
, mFlowState(kGFS_InGame)
, mSkippedCineCam(kInvalidUniqueId)
, mInitialized(false)
, mPlayerAlive(true) {
  gpMain->SetGameFlowBuilt(true);
}

CMFGame::~CMFGame() {
  gpMain->SetGameFlowBuilt(false);
  gpMain->SetScreenFading(false);
  CDecalManager::Reinitialize();
}

void CMFGame::Touch() const {
  CStateManager* mgr = &*mStateManager;
  mgr->TouchSky();
  mgr->TouchPlayerActor();

  CPlayer* player = mgr->Player();
  bool touchModel = false;
  bool touchBall = false;
  bool touchGun = false;

  switch (player->GetMorphballTransitionState()) {
  case CPlayer::kMS_Unmorphed:
    touchGun = true;
    break;
  case CPlayer::kMS_Morphed:
    touchBall = true;
    break;
  case CPlayer::kMS_Morphing:
    touchBall = true;
    touchModel = true;
    break;
  case CPlayer::kMS_Unmorphing:
    touchGun = true;
    touchModel = true;
    break;
  }

  if (touchGun) {
    player->GetPlayerGun()->TouchModel(*mgr);
  }

  if (touchModel) {
    player->ModelData()->Touch(*mgr, 0);
  }

  if (touchBall) {
    player->GetMorphBall()->TouchModel(*mgr);
  }
}

CIOWin::EMessageReturn CMFGame::OnMessage(const CArchitectureMessage& message,
                                          CArchitectureQueue& queue) {}

void CMFGame::Draw() const {
  if (!mInitialized) {
    return;
  }

  Touch();

  if (mGuiManager->GetIsGameDraw()) {
    gpMain->SetGameFrameDrawn(true);
    mStateManager->PreRender();
    mStateManager->DrawWorld();
    (void)mStateManager->GetPlayer()->IsPlayerDeadEnough();
  }

  mGuiManager->PreDraw(*mStateManager, IsCameraActiveFlow());
  mGuiManager->Draw(*mStateManager);

  if (mFlowState == kGFS_CinematicSkip) {
    const float intensity = rstl::min_val(1.f, 1.f - mCineSkipTime);
    CCameraFilterPass::DrawFilter(CCameraFilterPass::kFT_Multiply,
                                  CCameraFilterPass::kFS_Fullscreen,
                                  CColor(intensity, intensity, intensity, intensity), nullptr, 1.f);
  }
}

void CMFGame::EnterMapScreen() {
  mFlowState = kGFS_Paused;
  mGuiManager->PauseGame(*mStateManager, kIGGS_MapScreen);
  mStateManager->SetInMapScreen(true);
}

void CMFGame::PauseGame() {
  mFlowState = kGFS_Paused;
  mGuiManager->PauseGame(*mStateManager, kIGGS_PauseGame);
}

void CMFGame::EnterLogBook() {
  mFlowState = kGFS_Paused;
  mGuiManager->PauseGame(*mStateManager, kIGGS_PauseLogBook);
}

void CMFGame::SaveGame() {
  mFlowState = kGFS_Paused;
  mGuiManager->PauseGame(*mStateManager, kIGGS_PauseSaveGame);
}

void CMFGame::EnterMessageScreen(const float time) {
  mFlowState = kGFS_Paused;
  mGuiManager->ShowPauseGameHudMessage(*mStateManager, mStateManager->GetPauseHUDMessage(), time);
}

void CMFGame::UnpauseGame() {
  mFlowState = kGFS_InGame;
  CSfxManager::SetChannel(CSfxManager::kSC_Game);
  mStateManager->DeferStateTransition(kSMT_InGame);
}

void CMFGame::PlayerDied() {
  mFlowState = kGFS_PlayerDied;
  mPlayerAlive = false;
}

bool CMFGame::IsCameraActiveFlow() const {
  const bool ret = (mFlowState == kGFS_InGame || mFlowState == kGFS_PlayerDied);
  return ret;
}

CMFGameLoader::CMFGameLoader() : CIOWin(rstl::string_l("CMFGameLoader")) {}
CMFGameLoader::~CMFGameLoader() { CGraphics::SetIsBeginSceneClearFb(true); }