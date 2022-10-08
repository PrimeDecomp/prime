#include "MetroidPrime/CArchMsgParmInt32Int32VoidPtr.hpp"

#include "Kyoto/Alloc/CMemory.hpp"

CArchMsgParmInt32Int32VoidPtr::CArchMsgParmInt32Int32VoidPtr(int val1, int val2, const void* ptr)
: mInt1(val1)
, mInt2(val2)
, mPtr(ptr) {}

CArchMsgParmInt32Int32VoidPtr::~CArchMsgParmInt32Int32VoidPtr() {}
