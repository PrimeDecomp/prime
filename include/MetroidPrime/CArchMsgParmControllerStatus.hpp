
#ifndef _CARCHMSGPARMCONTROLLERSTATUS
#define _CARCHMSGPARMCONTROLLERSTATUS

#include "types.h"

#include "MetroidPrime/CArchitectureMessage.hpp"

class CArchMsgParmControllerStatus : public IArchitectureMessageParm {
  short mChannel;
  bool mConnected;

public:
  CArchMsgParmControllerStatus(short channel, bool connected);
  ~CArchMsgParmControllerStatus();
};

#endif // _CARCHMSGPARMCONTROLLERSTATUS
