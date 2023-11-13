#include <MetroidPrime/CActor.hpp>
#include <MetroidPrime/CSortedLists.hpp>

namespace SL {
SNode::SNode()
: x0_actor(nullptr), x4_box(CAABox::Identity()), x28_next(-1), x2a_populated(false) {}

SNode::SNode(CActor* actor, const CAABox& box)
: x0_actor(actor), x4_box(box), x28_next(-1), x2a_populated(true) {
  for (int i = 0; i < 6; ++i) {
    x1c_selfIdxs[i] = -1;
  }
}

CSortedListManager::CSortedListManager() { Reset(); }

void CSortedListManager::Reset() {
  SNode node;

  for (uint i = 0; i < kMaxObjects; ++i) {
    x0_nodes[i] = node;
  }

  for (int i = 0; i < 6; ++i) {
    xb000_sortedLists[i] = SSortedList();
  }
}

bool CSortedListManager::ActorInLists(const CActor* actor) const {
  bool ret = false;
  if (actor != nullptr && x0_nodes[actor->GetUniqueId().Value()].x2a_populated) {
    ret = true;
  }

  return ret;
}

short CSortedListManager::FindInListLower(ESortedLists list, f32 value) const {}

short CSortedListManager::FindInListUpper(ESortedLists list, f32 value) const {}

void CSortedListManager::InsertInList(ESortedLists list, SNode& node) {}

void CSortedListManager::RemoveFromList(ESortedLists list, short idx) {}

void CSortedListManager::MoveInList(ESortedLists list, short idx) {}

void CSortedListManager::Insert(CActor* actor, const CAABox& box) {
  if (x0_nodes[actor->GetUniqueId().Value()].x2a_populated) {
    Move(actor, box);
    return;
  }
  SNode node(actor, box);

  InsertInList(kSL_MinX, node);
  InsertInList(kSL_MaxX, node);
  InsertInList(kSL_MinY, node);
  InsertInList(kSL_MaxY, node);
  InsertInList(kSL_MinZ, node);
  InsertInList(kSL_MaxZ, node);
  x0_nodes[actor->GetUniqueId().Value()] = node;
}

void CSortedListManager::Remove(const CActor* actor) {
  if (actor == nullptr) {
    return;
  }

  SNode& node = x0_nodes[actor->GetUniqueId().Value()];
  if (node.x2a_populated) {
    RemoveFromList(kSL_MinX, node.x1c_selfIdxs[kSL_MinX]);
    RemoveFromList(kSL_MaxX, node.x1c_selfIdxs[kSL_MaxX]);
    RemoveFromList(kSL_MinY, node.x1c_selfIdxs[kSL_MinY]);
    RemoveFromList(kSL_MaxY, node.x1c_selfIdxs[kSL_MaxY]);
    RemoveFromList(kSL_MinZ, node.x1c_selfIdxs[kSL_MinZ]);
    RemoveFromList(kSL_MaxZ, node.x1c_selfIdxs[kSL_MaxZ]);
    node.x2a_populated = false;
  }
}

void CSortedListManager::Move(const CActor* actor, const CAABox& box) {
  SNode& node = x0_nodes[actor->GetUniqueId().Value()];
  node.x4_box = box;
  MoveInList(kSL_MinX, node.x1c_selfIdxs[kSL_MinX]);
  MoveInList(kSL_MaxX, node.x1c_selfIdxs[kSL_MaxX]);
  MoveInList(kSL_MinY, node.x1c_selfIdxs[kSL_MinY]);
  MoveInList(kSL_MaxY, node.x1c_selfIdxs[kSL_MaxY]);
  MoveInList(kSL_MinZ, node.x1c_selfIdxs[kSL_MinZ]);
  MoveInList(kSL_MaxZ, node.x1c_selfIdxs[kSL_MaxZ]);
}

void CSortedListManager::AddToLinkedList(short nodeId, short& headId, short& tailId) const {
  if (headId == -1) {
    const_cast<SNode&>(x0_nodes[nodeId]).x28_next = headId;
    tailId = nodeId;
    headId = nodeId;
    return;
  }
  if (x0_nodes[nodeId].x28_next != -1) {
    return;
  }
  if (nodeId == tailId) {
    return;
  }
  const_cast<SNode&>(x0_nodes[nodeId]).x28_next = headId;
  headId = nodeId;
}

short CSortedListManager::CalculateIntersections(ESortedLists la, ESortedLists lb, short a, short b,
                                                 short c, short d, ESortedLists slA,
                                                 ESortedLists slB, ESortedLists slC,
                                                 ESortedLists slD, const CAABox& aabb) const {}

short CSortedListManager::ConstructIntersectionArray(const CAABox& aabb) const {}

void CSortedListManager::BuildNearList(rstl::reserved_vector< TUniqueId, 1024 >& nearListOut,
                                       const CAABox& box, const CMaterialFilter& filter,
                                       const CActor* actor) const {}

void CSortedListManager::BuildNearList(rstl::reserved_vector< TUniqueId, 1024 >& nearListOut,
                                       const CActor& actor, const CAABox& box) const {}

void CSortedListManager::BuildNearList(rstl::reserved_vector< TUniqueId, 1024 >& nearListOut,
                                       const CVector3f& pos, const CVector3f& dir, f32 mag,
                                       const CMaterialFilter& filter, const CActor* actor) const {}

} // namespace SL
