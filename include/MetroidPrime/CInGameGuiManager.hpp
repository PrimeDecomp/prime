#ifndef _CINGUIGUIMANAGER
#define _CINGUIGUIMANAGER

enum EInGameGuiState {
  kIGGS_Zero,
  kIGGS_InGame,
  kIGGS_MapScreen,
  kIGGS_PauseGame,
  kIGGS_PauseLogBook,
  kIGGS_PauseSaveGame,
  kIGGS_PauseHUDMessage,
};

class CInGameGuiManager {
public:
  CInGameGuiManager();
  ~CInGameGuiManager();

  bool GetIsGameDraw() const;

  void PreDraw(CStateManager& mgr, bool isCameraActive);
  void Draw(const CStateManager& mgr) const;
  void PauseGame(const CStateManager& mgr, EInGameGuiState state);
  void ShowPauseGameHudMessage(const CStateManager& mgr, CAssetId message, float time);

private:
  char data[0x1fc];
};
#endif
