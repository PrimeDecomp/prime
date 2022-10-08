#ifndef __CARCMSGPARMINT32_HPP__
#define __CARCMSGPARMINT32_HPP__

#include "MetroidPrime/CArchitectureMessage.hpp"

class CArchMsgParmInt32 : public IArchitectureMessageParm {
  int mVal;
public:
  CArchMsgParmInt32(int);
  ~CArchMsgParmInt32();
};

#endif // __CARCMSGPARMINT32_HPP__
