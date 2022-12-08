#ifndef _CARCHITECTUREQUEUE
#define _CARCHITECTUREQUEUE

#include "types.h"

#include "MetroidPrime/CArchitectureMessage.hpp"

#include "rstl/list.hpp"

class CArchitectureQueue {
public:
  void Push(const CArchitectureMessage& msg) { x0_queue.push_back(msg); }
  CArchitectureMessage Pop() {
    CArchitectureMessage result = *x0_queue.begin();
    x0_queue.pop_front();
    return result;
  }
  void Clear() { x0_queue.clear(); }
  bool IsEmpty() const { return x0_queue.empty(); }

private:
  rstl::list< CArchitectureMessage > x0_queue;
};

#endif // _CARCHITECTUREQUEUE
