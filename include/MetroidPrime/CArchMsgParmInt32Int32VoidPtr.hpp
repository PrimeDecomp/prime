
#ifndef __CARCMSGPARMINT32INT32VOIDPTR_HPP__
#define __CARCMSGPARMINT32INT32VOIDPTR_HPP__

#include "MetroidPrime/CArchitectureMessage.hpp"

class CArchMsgParmInt32Int32VoidPtr : public IArchitectureMessageParm {
  int mInt1;
  int mInt2;
  const void* mPtr;

public:
  CArchMsgParmInt32Int32VoidPtr(int val1, int val2, const void* ptr);
  ~CArchMsgParmInt32Int32VoidPtr();
};

#endif // __CARCMSGPARMINT32INT32VOIDPTR_HPP__
