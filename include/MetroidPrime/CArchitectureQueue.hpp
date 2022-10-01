#ifndef _CARCHITECTUREQUEUE_HPP
#define _CARCHITECTUREQUEUE_HPP

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

#endif
