#ifndef _CARCHMSGPARMINT32
#define _CARCHMSGPARMINT32

#include "types.h"

#include "MetroidPrime/CArchitectureMessage.hpp"

class CArchMsgParmInt32 : public IArchitectureMessageParm {
  int mVal;

public:
  CArchMsgParmInt32(int);
  ~CArchMsgParmInt32();
};

#endif // _CARCHMSGPARMINT32
