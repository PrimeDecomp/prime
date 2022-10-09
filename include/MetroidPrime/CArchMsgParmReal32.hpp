#ifndef _CARCHMSGPARMREAL32
#define _CARCHMSGPARMREAL32

#include "types.h"

#include "MetroidPrime/CArchitectureMessage.hpp"

class CArchMsgParmReal32 : public IArchitectureMessageParm {
  float mVal;

public:
  CArchMsgParmReal32(float);
  ~CArchMsgParmReal32();
};

#endif // _CARCHMSGPARMREAL32
