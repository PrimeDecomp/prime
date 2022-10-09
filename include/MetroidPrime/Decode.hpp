#ifndef _DECODE
#define _DECODE

#include "MetroidPrime/CArchMsgParmInt32.hpp"
#include "MetroidPrime/CArchMsgParmInt32Int32VoidPtr.hpp"
#include "MetroidPrime/CArchMsgParmNull.hpp"
#include "MetroidPrime/CArchMsgParmReal32.hpp"
#include "MetroidPrime/CArchMsgParmUserInput.hpp"
#include "MetroidPrime/CArchMsgParmControllerStatus.hpp"

namespace MakeMsg {
  const CArchMsgParmReal32& GetParmTimerTick(const CArchitectureMessage& msg);
}

#endif // _DECODE
