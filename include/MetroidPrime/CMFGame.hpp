#ifndef _CMFGAME_HPP
#define _CMFGAME_HPP

#include "Kyoto/TOneStatic.hpp"
#include "MetroidPrime/CMainFlow.hpp"
#include "MetroidPrime/TGameTypes.hpp"
#include "rstl/rc_ptr.hpp"
#include "rstl/single_ptr.hpp"

class CInGameGuiManager;
class CStateManager;

enum EGameFlowState {
  kGFS_InGame = 0,
  kGFS_Paused,
  kGFS_PlayerDied,
  kGFS_CinematicSkip,
};

class CGameProfiler {
public:
  CGameProfiler();
  ~CGameProfiler() {};
};

class CMFGame : public CIOWin {
public:
  CMFGame(rstl::ncrc_ptr< CStateManager > stateManager,
          rstl::ncrc_ptr< CInGameGuiManager > guiManager, CArchitectureQueue& architectureQueue);
  ~CMFGame() override;

  void Touch() const;
  EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&) override;
  void Draw() const;
  
  void EnterMapScreen();
  void PauseGame();
  void EnterLogBook();
  void SaveGame();
  void EnterMessageScreen(float time);
  void UnpauseGame();
  void PlayerDied();

  bool IsCameraActiveFlow() const;

private:
  rstl::ncrc_ptr< CStateManager > mStateManager;
  rstl::ncrc_ptr< CInGameGuiManager > mGuiManager;
  EGameFlowState mFlowState;
  float mCineSkipTime;
  rstl::single_ptr< CGameProfiler > x24; // Appears to be unused?
  TUniqueId mSkippedCineCam;
  bool mInitialized : 1;
  bool mPlayerAlive : 1;
};

class CMFGameLoader : public CIOWin {
public:
  CMFGameLoader();
  ~CMFGameLoader() override;
};
#endif
