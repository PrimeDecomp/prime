#ifndef _CINGUIGUIMANAGER
#define _CINGUIGUIMANAGER

#include "types.h"

class CStateManager;
class CArchitectureQueue;
class CFinalInput;

enum EInGameGuiState {
  kIGGS_Zero,
  kIGGS_InGame,
  kIGGS_MapScreen,
  kIGGS_PauseGame,
  kIGGS_PauseLogBook,
  kIGGS_PauseSaveGame,
  kIGGS_PauseHUDMessage,
};

namespace InGameGuiStates {
inline bool IsGameplayState(EInGameGuiState state) {
  bool ret = state >= kIGGS_Zero && state <= kIGGS_InGame;
  return ret;
}
} // namespace InGameGuiStates

class CInGameGuiManager {
public:
  CInGameGuiManager(const CStateManager& mgr, CArchitectureQueue& queue);
  ~CInGameGuiManager();

  bool GetIsGameDraw() const;

  void PreDraw(CStateManager& mgr, bool isCameraActive);
  void Draw(const CStateManager& mgr) const;
  void PauseGame(const CStateManager& mgr, EInGameGuiState state);
  void ShowPauseGameHudMessage(const CStateManager& mgr, CAssetId message, float time);
  void StartFadeIn();
  void Update(const CStateManager& mgr, float dt, CArchitectureQueue& queue, bool cameraActive);
  void ProcessControllerInput(const CStateManager& mgr, const CFinalInput& input,
                              CArchitectureQueue& queue);
  bool CheckLoadComplete(const CStateManager& mgr);
  bool IsInGameplayStateNotTransitioning() const {
    const bool ret = InGameGuiStates::IsGameplayState(x1bc_prevState) &&
                     InGameGuiStates::IsGameplayState(x1c0_nextState);
    return ret;
  }
  bool IsInSaveUI() const { return x1f8_27_inSaveUI; }

private:
  char x0_pad[0x1bc];
  EInGameGuiState x1bc_prevState;
  EInGameGuiState x1c0_nextState;
  char x1c4_pad[0x34];
  bool : 3;
  bool x1f8_27_inSaveUI : 1;
};
CHECK_SIZEOF(CInGameGuiManager, 0x1fc)
#endif
