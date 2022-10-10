#ifndef _DECODE
#define _DECODE

#include "MetroidPrime/CArchitectureMessage.hpp"
#include "MetroidPrime/CArchMsgParmInt32.hpp"
#include "MetroidPrime/CArchMsgParmInt32Int32VoidPtr.hpp"
#include "MetroidPrime/CArchMsgParmNull.hpp"
#include "MetroidPrime/CArchMsgParmReal32.hpp"
#include "MetroidPrime/CArchMsgParmUserInput.hpp"
#include "MetroidPrime/CArchMsgParmControllerStatus.hpp"

namespace MakeMsg {
  CArchitectureMessage CreateControllerStatus(EArchMsgTarget target, ushort chan, bool connected);
  
  CArchitectureMessage CreateUserInput(EArchMsgTarget target, const CFinalInput& input);
  
  const CArchMsgParmReal32& GetParmTimerTick(const CArchitectureMessage& msg);
}

#endif // _DECODE
