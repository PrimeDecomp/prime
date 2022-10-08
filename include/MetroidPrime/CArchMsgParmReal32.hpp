#ifndef __CARCMSGPARMREAL32_HPP__
#define __CARCMSGPARMREAL32_HPP__

#include "MetroidPrime/CArchitectureMessage.hpp"

class CArchMsgParmReal32 : public IArchitectureMessageParm {
  float mVal;
public:
  CArchMsgParmReal32(float);
  ~CArchMsgParmReal32();
};

#endif // __CARCMSGPARMREAL32_HPP__
