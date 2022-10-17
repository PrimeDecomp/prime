#ifndef _DECODE
#define _DECODE

#include "MetroidPrime/CArchMsgParmControllerStatus.hpp"
#include "MetroidPrime/CArchMsgParmInt32.hpp"
#include "MetroidPrime/CArchMsgParmInt32Int32VoidPtr.hpp"
#include "MetroidPrime/CArchMsgParmNull.hpp"
#include "MetroidPrime/CArchMsgParmReal32.hpp"
#include "MetroidPrime/CArchMsgParmUserInput.hpp"
#include "MetroidPrime/CArchitectureMessage.hpp"

class CIOWin;
namespace MakeMsg {
const CArchMsgParmNull& GetParmDeleteIOWin(const CArchitectureMessage& msg);
CArchitectureMessage CreateCreateIOWin(EArchMsgTarget target, const int& pmin, const int& pmax,
                                       CIOWin* const&);
const CArchMsgParmInt32Int32VoidPtr& GetParmCreateIOWin(const CArchitectureMessage& msg);
const CArchMsgParmInt32Int32VoidPtr& GetParmChangeIOWinPriority(const CArchitectureMessage& msg);

CArchitectureMessage CreateTimerTick(EArchMsgTarget target, const float& val);
const CArchMsgParmReal32& GetParmTimerTick(const CArchitectureMessage& msg);

CArchitectureMessage CreateUserInput(EArchMsgTarget target, const CFinalInput& input);
const CArchMsgParmUserInput& GetParmUserInput(const CArchitectureMessage& msg);

const CArchMsgParmInt32& GetParmNewGameflowState(const CArchitectureMessage& msg);

CArchitectureMessage CreateControllerStatus(EArchMsgTarget target, const short& chan,
                                            const bool& connected);
CArchitectureMessage CreateQuitGameplay(EArchMsgTarget target);

const CArchMsgParmInt32& GetParmFrameBegin(const CArchitectureMessage& msg);
CArchitectureMessage CreateFrameBegin(EArchMsgTarget target, const int& a);
CArchitectureMessage CreateFrameEnd(EArchMsgTarget target, const int& a);
} // namespace MakeMsg

#endif // _DECODE
