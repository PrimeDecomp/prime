#ifndef _CQUITGAMESCREEN
#define _CQUITGAMESCREEN

#include "Kyoto/TToken.hpp"

class CGuiFrame;
class CGuiTableGroup;
class CFinalInput;

enum EQuitType {
  kQT_QuitGame,
  kQT_ContinueFromLastSave,
  kQT_SaveProgress,
  kQT_QuitNESMetroid,
  kQT_ContinuePlaying
};

enum EQuitAction {
  kQA_None,
  kQA_Yes,
  kQA_No
};

class CQuitGameScreen {
public:
  CQuitGameScreen(EQuitType type);

  void SetColors();
  void FinishedLoading();
  void DoSelectionChange(CGuiTableGroup* caller);
  void DoAdvance(CGuiTableGroup* caller);
  EQuitAction Update(float dt);
  void Draw();
  void ProcessUserInput(const CFinalInput& input);

private:
  EQuitType x0_type;
  TLockedToken< CGuiFrame > x4_frame;
  CGuiFrame* x10_loadedFrame;
  CGuiTableGroup* x14_tablegroup_quitgame;
  EQuitAction x18_action;
};

#endif // _CQUITGAMESCREEN
