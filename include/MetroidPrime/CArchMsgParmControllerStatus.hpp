
#ifndef __CARCMSGPARMCONTROLLERSTATUS_HPP__
#define __CARCMSGPARMCONTROLLERSTATUS_HPP__

#include "MetroidPrime/CArchitectureMessage.hpp"

class CArchMsgParmControllerStatus : public IArchitectureMessageParm {
  short mChannel;
  bool mConnected;

public:
  CArchMsgParmControllerStatus(short channel, bool connected);
  ~CArchMsgParmControllerStatus();
};

#endif // __CARCMSGPARMCONTROLLERSTATUS_HPP__
