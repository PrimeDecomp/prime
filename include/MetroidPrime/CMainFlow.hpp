#ifndef _CMAINFLOW
#define _CMAINFLOW

#include "types.h"

#include "MetroidPrime/CIOWin.hpp"

enum EClientFlowStates {
  kCFS_Unspecified = -1,
  kCFS_None = 0,
  kCFS_WinBad = 1,
  kCFS_WinGood = 2,
  kCFS_WinBest = 3,
  kCFS_LoseGame = 4,
  kCFS_Default = 5,
  kCFS_StateSetter = 6,
  kCFS_PreFrontEnd = 7,
  kCFS_FrontEnd = 8,
  kCFS_Game = 14,
  kCFS_GameExit = 15
};

class CMainFlow : public CIOWin {
public:
  CMainFlow();

  ~CMainFlow();
  EMessageReturn OnMessage(const CArchitectureMessage&, CArchitectureQueue&);
  bool GetIsContinueDraw() const;
  void Draw() const;

  void AdvanceGameState(CArchitectureQueue& queue);
  void SetGameState(EClientFlowStates state, CArchitectureQueue& queue);
private:
  EClientFlowStates x14_gameState;
};

#endif // _CMAINFLOW
