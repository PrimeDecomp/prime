#ifndef _CARCHITECTUREMESSAGE
#define _CARCHITECTUREMESSAGE

#include "types.h"

#include "rstl/rc_ptr.hpp"

enum EArchMsgTarget {
  kAMT_IOWinManager,
  kAMT_Game,
};

enum EArchMsgType {
  kAM_RemoveIOWin = 0,
  kAM_CreateIOWin = 1,
  kAM_ChangeIOWinPriority = 2,
  kAM_RemoveAllIOWins = 3,
  kAM_TimerTick = 4,
  kAM_UserInput = 5,
  kAM_SetGameState = 6,
  kAM_ControllerStatus = 7,
  kAM_QuitGameplay = 8,
  kAM_FrameBegin = 10,
  kAM_FrameEnd = 11,
};

struct IArchitectureMessageParm {
  virtual ~IArchitectureMessageParm() {}
};

class CArchitectureMessage {

public:
  CArchitectureMessage(EArchMsgTarget target, int type,
                       const rstl::rc_ptr< IArchitectureMessageParm >& parm)
  : x0_target(target), x4_type(static_cast< EArchMsgType >(type)), x8_parm(parm) {}

  EArchMsgType GetType() const { return x4_type; }
  const IArchitectureMessageParm* GetParm() const { return x8_parm.GetPtr(); }
  EArchMsgTarget GetTarget() const { return x0_target; }

private:
  EArchMsgTarget x0_target;
  EArchMsgType x4_type;
  rstl::rc_ptr< IArchitectureMessageParm > x8_parm;
};

#endif // _CARCHITECTUREMESSAGE
