#ifndef _CARCHMSGPARMINT32
#define _CARCHMSGPARMINT32

#include "types.h"

#include "MetroidPrime/CArchitectureMessage.hpp"

class CArchMsgParmInt32 : public IArchitectureMessageParm {
public:
  CArchMsgParmInt32(int);
  ~CArchMsgParmInt32();

  int GetInt32() const { return mVal; }

private:
  int mVal;
};

#endif // _CARCHMSGPARMINT32
