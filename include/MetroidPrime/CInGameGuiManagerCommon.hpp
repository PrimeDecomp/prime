#ifndef _CINGAMEGUIMANAGERCOMMON
#define _CINGAMEGUIMANAGERCOMMON

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

inline bool IsPausedState(EInGameGuiState state) {
  bool ret = state >= kIGGS_MapScreen && state <= kIGGS_PauseHUDMessage;
  return ret;
}
} // namespace InGameGuiStates

#endif
