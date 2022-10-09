#ifndef _CSORTEDLISTS
#define _CSORTEDLISTS

#include "types.h"

#include "MetroidPrime/CObjectList.hpp"

#include "Kyoto/Math/CAABox.hpp"

class CActor;

namespace SL {
struct SNode {
  CActor* x0_actor;
  CAABox x4_box;
  short x1c_selfIdxs[6];
  short x28_next;
  bool x2a_populated;
};
CHECK_SIZEOF(SNode, 0x2c);

struct SSortedList {
  short x0_ids[kMaxObjects];
  uint x800_size;
};
CHECK_SIZEOF(SSortedList, 0x804);

class CSortedListManager {
  SNode x0_nodes[kMaxObjects];
  SSortedList xb000_sortedLists[6];
};
CHECK_SIZEOF(CSortedListManager, 0xe018);
} // namespace SL

#endif // _CSORTEDLISTS
