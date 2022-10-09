#ifndef _CARCHITECTUREQUEUE
#define _CARCHITECTUREQUEUE

#include "types.h"

#include "MetroidPrime/CArchitectureMessage.hpp"

#include "rstl/list.hpp"

class CArchitectureQueue {
public:
  void Push(const CArchitectureMessage&); // TODO
  void Pop();                             // TODO
  void Clear();                           // TODO
  bool IsEmpty() const;                   // TODO

private:
  rstl::list< CArchitectureMessage > x0_queue;
};

#endif // _CARCHITECTUREQUEUE
