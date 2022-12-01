
#ifndef _CARCHMSGPARMINT32INT32VOIDPTR
#define _CARCHMSGPARMINT32INT32VOIDPTR

#include "types.h"

#include "MetroidPrime/CArchitectureMessage.hpp"

class CArchMsgParmInt32Int32VoidPtr : public IArchitectureMessageParm {
  int mInt1;
  int mInt2;
  const void* mPtr;

public:
  CArchMsgParmInt32Int32VoidPtr(int val1, int val2, const void* ptr);
  ~CArchMsgParmInt32Int32VoidPtr();

  int GetInt1() const { return mInt1; }
  int GetInt2() const { return mInt2; }
  const void* GetPtr() const { return mPtr; }
};

#endif // _CARCHMSGPARMINT32INT32VOIDPTR
