#ifndef _CARCHMSGPARMREAL32
#define _CARCHMSGPARMREAL32

#include "types.h"

#include "MetroidPrime/CArchitectureMessage.hpp"

class CArchMsgParmReal32 : public IArchitectureMessageParm {
public:
  CArchMsgParmReal32(float);
  ~CArchMsgParmReal32();
  float GetReal() const { return mVal; }
private:
  float mVal;
};

#endif // _CARCHMSGPARMREAL32
