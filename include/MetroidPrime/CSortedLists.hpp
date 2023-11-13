#ifndef _CSORTEDLISTS
#define _CSORTEDLISTS

#include "types.h"

#include "MetroidPrime/CObjectList.hpp"

#include "Kyoto/Math/CAABox.hpp"

class CActor;

namespace SL {
enum ESortedLists {
  kSL_MinX,
  kSL_MinY,
  kSL_MinZ,
  kSL_MaxX,
  kSL_MaxY,
  kSL_MaxZ,
};

struct SNode {
  CActor* x0_actor;
  CAABox x4_box;
  short x1c_selfIdxs[6];
  short x28_next;
  bool x2a_populated;

  SNode();
  SNode(CActor* actor, const CAABox& box);
};
CHECK_SIZEOF(SNode, 0x2c);

struct SSortedList {
  short x0_ids[kMaxObjects];
  uint x800_size;

  SSortedList() : x800_size(0) {
    for (int i = 0; i < kMaxObjects; ++i) {
      x0_ids[i] = -1;
    }
  }
};
CHECK_SIZEOF(SSortedList, 0x804);

class CSortedListManager {
public:
  CSortedListManager();
  void Reset();
  bool ActorInLists(const CActor* actor) const;
  short FindInListLower(ESortedLists list, f32 value) const;
  short FindInListUpper(ESortedLists list, f32 value) const;
  void InsertInList(ESortedLists list, SNode& node);
  void RemoveFromList(ESortedLists list, short idx);
  void MoveInList(ESortedLists list, short idx);
  void Insert(CActor* actor, const CAABox& box);
  void Remove(const CActor* actor);
  void Move(const CActor* actor, const CAABox& box);
  void AddToLinkedList(short nodeId, short& headId, short& tailId) const;
  short CalculateIntersections(ESortedLists la, ESortedLists lb, short a, short b, short c, short d,
                               ESortedLists slA, ESortedLists slB, ESortedLists slC,
                               ESortedLists slD, const CAABox& aabb) const;
  short ConstructIntersectionArray(const CAABox& aabb) const;
  void BuildNearList(rstl::reserved_vector< TUniqueId, 1024 >& nearListOut, const CAABox& box,
                     const CMaterialFilter& filter, const CActor* actor) const;

  void BuildNearList(rstl::reserved_vector< TUniqueId, 1024 >& nearListOut, const CActor& actor,
                     const CAABox& box) const;
  void BuildNearList(rstl::reserved_vector< TUniqueId, 1024 >& nearListOut, const CVector3f& pos,
                     const CVector3f& dir, f32 mag, const CMaterialFilter& filter,
                     const CActor* actor) const;

private:
  SNode x0_nodes[kMaxObjects];
  SSortedList xb000_sortedLists[6];
};
CHECK_SIZEOF(CSortedListManager, 0xe018);
} // namespace SL

#endif // _CSORTEDLISTS
