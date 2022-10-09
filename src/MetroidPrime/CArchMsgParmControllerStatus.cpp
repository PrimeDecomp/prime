#include "MetroidPrime/CArchMsgParmControllerStatus.hpp"
#include "Kyoto/Alloc/CMemory.hpp"

CArchMsgParmControllerStatus::CArchMsgParmControllerStatus(short channel, bool connected)
: mChannel(channel), mConnected(connected) {}

CArchMsgParmControllerStatus::~CArchMsgParmControllerStatus() {}
