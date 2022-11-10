#ifndef _CPAUSESCREENBLUR
#define _CPAUSESCREENBLUR

#include "MetroidPrime/Cameras/CCameraBlurPass.hpp"

#include "Kyoto/TToken.hpp"

class CTexture;
class CStateManager;

// TODO: move elsewhere?
enum EInGameGuiState {
  kIGS_Zero,
  kIGS_InGame,
  kIGS_MapScreen,
  kIGS_PauseGame,
  kIGS_PauseLogBook,
  kIGS_PauseSaveGame,
  kIGS_PauseHUDMessage
};

class CPauseScreenBlur {
public:
  enum EState { kS_InGame, kS_MapScreen, kS_SaveGame, kS_HUDMessage, kS_Pause };

  CPauseScreenBlur();
  virtual ~CPauseScreenBlur();

  void OnNewInGameGuiState(EInGameGuiState state, CStateManager& stateMgr);
  bool IsGameDraw() const { return x50_25_gameDraw; }
  void Update(float dt, const CStateManager& stateMgr, bool);
  void Draw(const CStateManager& stateMgr);
  float GetBlurAmt() const;
  bool IsNotTransitioning() const { return x10_prevState == x14_nextState; }

private:
  TLockedToken< CTexture > x4_mapLightQuarter;
  EState x10_prevState;
  EState x14_nextState;
  float x18_blurAmt;   
  CCameraBlurPass x1c_camBlur;
  bool x50_24_blurring : 1;
  bool x50_25_gameDraw : 1;

  void OnBlurComplete(bool);
  void SetState(EState state);
  float GetBlurAmtInline() const { return fabs(x18_blurAmt); }
};


#endif // _CPAUSESCREENBLUR
