#include "Kyoto/Alloc/CMediumAllocPool.hpp"

CMediumAllocPool* CMediumAllocPool::gMediumAllocPtr = nullptr;

CMediumAllocPool::CMediumAllocPool() {
  x18_lastNodePrev = x0_list.begin().get_node();
  gMediumAllocPtr = this;
}
