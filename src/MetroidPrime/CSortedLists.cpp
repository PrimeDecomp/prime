#include "MetroidPrime/CSortedLists.hpp"

#include "MetroidPrime/CActor.hpp"
#include "rstl/algorithm.hpp"

namespace SL {
static inline float GetPointForSL(ESortedLists list, const CAABox& box) {
  // Sorted-list axes follow the six consecutive minimum/maximum box coordinates.
  return reinterpret_cast< const float* >(&box)[list];
}

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

  const SSortedList sorted;
  for (int i = 0; i < 6; ++i) {
    xb000_sortedLists[i] = sorted;
  }
}

bool CSortedListManager::ActorInLists(const CActor* actor) const {
  bool ret = false;
  if (actor != nullptr && x0_nodes[actor->GetUniqueId().Value()].x2a_populated) {
    ret = true;
  }

  return ret;
}

short CSortedListManager::FindInListLower(ESortedLists list, f32 value) const {
  const SSortedList& sorted = xb000_sortedLists[list];
  int count = sorted.x800_size;
  int half;
  int first = 0;
  while (count > 0) {
    half = count / 2;
    const int middle = first + half;
    if (GetPointForSL(list, x0_nodes[sorted.x0_ids[middle]].x4_box) < value) {
      first = middle + 1;
      count = count - half - 1;
    } else {
      count = half;
    }
  }
  return first;
}

short CSortedListManager::FindInListUpper(ESortedLists list, f32 value) const {
  const SSortedList& sorted = xb000_sortedLists[list];
  int count = sorted.x800_size;
  int half;
  int first = 0;
  while (count > 0) {
    half = count / 2;
    const int middle = first + half;
    if (value < GetPointForSL(list, x0_nodes[sorted.x0_ids[middle]].x4_box)) {
      count = half;
    } else {
      first = middle + 1;
      count = count - half - 1;
    }
  }
  return first;
}

void CSortedListManager::InsertInList(ESortedLists list, SNode& node) {
  SSortedList& sorted = xb000_sortedLists[list];
  const float value = GetPointForSL(list, node.x4_box);
  int count = sorted.x800_size;
  int half;
  int first = 0;
  while (count > 0) {
    half = count / 2;
    const int middle = first + half;
    if (GetPointForSL(list, x0_nodes[sorted.x0_ids[middle]].x4_box) < value) {
      first = middle + 1;
      count = count - half - 1;
    } else {
      count = half;
    }
  }

  for (int i = sorted.x800_size; i > first; --i) {
    x0_nodes[sorted.x0_ids[i - 1]].x1c_selfIdxs[list] = i;
    sorted.x0_ids[i] = sorted.x0_ids[i - 1];
  }
  sorted.x0_ids[first] = node.x0_actor->GetUniqueId().Value();
  ++sorted.x800_size;
  node.x1c_selfIdxs[list] = first;
}

void CSortedListManager::RemoveFromList(ESortedLists list, short idx) {
  SSortedList& sorted = xb000_sortedLists[list];
  for (int i = idx; i < static_cast< int >(sorted.x800_size) - 1; ++i) {
    x0_nodes[sorted.x0_ids[i + 1]].x1c_selfIdxs[list] = i;
    sorted.x0_ids[i] = sorted.x0_ids[i + 1];
  }
  --sorted.x800_size;
}

void CSortedListManager::MoveInList(ESortedLists list, const short index) {
  SSortedList& sorted = xb000_sortedLists[list];
  short idx = index;
  while (true) {
    if (idx > 0 && GetPointForSL(list, x0_nodes[sorted.x0_ids[idx - 1]].x4_box) >
                       GetPointForSL(list, x0_nodes[sorted.x0_ids[idx]].x4_box)) {
      x0_nodes[sorted.x0_ids[idx - 1]].x1c_selfIdxs[list] = idx;
      x0_nodes[sorted.x0_ids[idx]].x1c_selfIdxs[list] = idx - 1;
      rstl::swap(sorted.x0_ids[idx - 1], sorted.x0_ids[idx]);
      --idx;
    } else {
      if (idx >= static_cast< int >(sorted.x800_size) - 1) {
        return;
      }
      if (!(GetPointForSL(list, x0_nodes[sorted.x0_ids[idx + 1]].x4_box) <
            GetPointForSL(list, x0_nodes[sorted.x0_ids[idx]].x4_box))) {
        return;
      }
      x0_nodes[sorted.x0_ids[idx + 1]].x1c_selfIdxs[list] = idx;
      x0_nodes[sorted.x0_ids[idx]].x1c_selfIdxs[list] = idx + 1;
      rstl::swap(sorted.x0_ids[idx + 1], sorted.x0_ids[idx]);
      ++idx;
    }
  }
}

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

void CSortedListManager::AddToLinkedList(const short nodeId, short& headId, short& tailId) const {
  if (headId == -1) {
    x0_nodes[nodeId].x28_next = headId;
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
  x0_nodes[nodeId].x28_next = headId;
  headId = nodeId;
}

short CSortedListManager::CalculateIntersections(const ESortedLists la, const ESortedLists lb,
                                                 const short a, const short b, const short c,
                                                 const short d, const ESortedLists slA,
                                                 const ESortedLists slB, const ESortedLists slC,
                                                 const ESortedLists slD, const CAABox& aabb) const {
  short headId = -1;
  short tailId = -1;
  for (short i = a; i < b; ++i) {
    AddToLinkedList(xb000_sortedLists[la].x0_ids[i], headId, tailId);
  }
  for (short i = c; i < d; ++i) {
    AddToLinkedList(xb000_sortedLists[lb].x0_ids[i], headId, tailId);
  }

  if (a < static_cast< int >(xb000_sortedLists[lb].x800_size) - d) {
    for (short i = 0; i < a; ++i) {
      const short id = xb000_sortedLists[la].x0_ids[i];
      if (GetPointForSL(lb, x0_nodes[id].x4_box) > GetPointForSL(lb, aabb)) {
        AddToLinkedList(id, headId, tailId);
      }
    }
  } else {
    for (short i = d; i < static_cast< int >(xb000_sortedLists[lb].x800_size); ++i) {
      const short id = xb000_sortedLists[lb].x0_ids[i];
      if (GetPointForSL(la, x0_nodes[id].x4_box) < GetPointForSL(la, aabb)) {
        AddToLinkedList(id, headId, tailId);
      }
    }
  }

  for (short* id = &headId; *id != -1;) {
    const SNode& node = x0_nodes[*id];
    if (GetPointForSL(slA, node.x4_box) > GetPointForSL(slB, aabb) ||
        GetPointForSL(slB, node.x4_box) < GetPointForSL(slA, aabb) ||
        GetPointForSL(slC, node.x4_box) > GetPointForSL(slD, aabb) ||
        GetPointForSL(slD, node.x4_box) < GetPointForSL(slC, aabb)) {
      *id = node.x28_next;
      node.x28_next = -1;
      continue;
    }
    id = &node.x28_next;
  }
  return headId;
}

short CSortedListManager::ConstructIntersectionArray(const CAABox& aabb) const {
  const short minXa = FindInListLower(kSL_MinX, aabb.GetMinPoint().GetX());
  const short maxXa = FindInListUpper(kSL_MinX, aabb.GetMaxPoint().GetX());
  const short minXb = FindInListLower(kSL_MaxX, aabb.GetMinPoint().GetX());
  const short maxXb = FindInListUpper(kSL_MaxX, aabb.GetMaxPoint().GetX());
  const short xOutside =
      rstl::min_val< short >(minXa, xb000_sortedLists[kSL_MaxX].x800_size - maxXb);

  const short minYa = FindInListLower(kSL_MinY, aabb.GetMinPoint().GetY());
  const short maxYa = FindInListUpper(kSL_MinY, aabb.GetMaxPoint().GetY());
  const short minYb = FindInListLower(kSL_MaxY, aabb.GetMinPoint().GetY());
  const short maxYb = FindInListUpper(kSL_MaxY, aabb.GetMaxPoint().GetY());
  const short yOutside =
      rstl::min_val< short >(minYa, xb000_sortedLists[kSL_MaxY].x800_size - maxYb);

  const short minZa = FindInListLower(kSL_MinZ, aabb.GetMinPoint().GetZ());
  const short maxZa = FindInListUpper(kSL_MinZ, aabb.GetMaxPoint().GetZ());
  const short minZb = FindInListLower(kSL_MaxZ, aabb.GetMinPoint().GetZ());
  const short maxZb = FindInListUpper(kSL_MaxZ, aabb.GetMaxPoint().GetZ());
  const short zOutside =
      rstl::min_val< short >(minZa, xb000_sortedLists[kSL_MaxZ].x800_size - maxZb);

  const int xCount = xOutside + (maxXb + (maxXa - minXa) - minXb) / 2;
  const int yCount = yOutside + (maxYb + (maxYa - minYa) - minYb) / 2;
  const int zCount = zOutside + (maxZb + (maxZa - minZa) - minZb) / 2;

  if (xCount < yCount && xCount < zCount) {
    return CalculateIntersections(kSL_MinX, kSL_MaxX, minXa, maxXa, minXb, maxXb, kSL_MinY,
                                  kSL_MaxY, kSL_MinZ, kSL_MaxZ, aabb);
  } else if (yCount < zCount) {
    return CalculateIntersections(kSL_MinY, kSL_MaxY, minYa, maxYa, minYb, maxYb, kSL_MinX,
                                  kSL_MaxX, kSL_MinZ, kSL_MaxZ, aabb);
  } else {
    return CalculateIntersections(kSL_MinZ, kSL_MaxZ, minZa, maxZa, minZb, maxZb, kSL_MinX,
                                  kSL_MaxX, kSL_MinY, kSL_MaxY, aabb);
  }
}

void CSortedListManager::BuildNearList(rstl::reserved_vector< TUniqueId, 1024 >& nearListOut,
                                       const CAABox& box, const CMaterialFilter& filter,
                                       const CActor* actor) const {
  short id = ConstructIntersectionArray(box);
  while (id != -1) {
    const SNode& node = x0_nodes[id];
    CActor* candidate = node.x0_actor;
    if (actor != candidate && filter.Passes(candidate->GetMaterialList())) {
      nearListOut.push_back(candidate->GetUniqueId());
    }
    id = node.x28_next;
    node.x28_next = -1;
  }
}

// TODO: check how material and filters are retrieve
static inline void GetActorMaterialData(const CActor& actor, const CMaterialFilter*& filter,
                                        const CMaterialList*& materials) {
  filter = &actor.GetMaterialFilter();
  materials = &actor.GetMaterialList();
}

void CSortedListManager::BuildNearList(rstl::reserved_vector< TUniqueId, 1024 >& nearListOut,
                                       const CActor& actor, const CAABox& box) const {
  const CMaterialList* materials;
  const CMaterialFilter* filter;
  GetActorMaterialData(actor, filter, materials);

  for (short id = ConstructIntersectionArray(box); id != -1;) {
    const SNode& node = x0_nodes[id];
    const CActor* const candidate = node.x0_actor;
    if (&actor != candidate && filter->Passes(candidate->GetMaterialList()) &&
        candidate->GetMaterialFilter().Passes(*materials)) {
      nearListOut.push_back(candidate->GetUniqueId());
    }
    id = node.x28_next;
    node.x28_next = -1;
  }
}

void CSortedListManager::BuildNearList(rstl::reserved_vector< TUniqueId, 1024 >& nearListOut,
                                       const CVector3f& pos, const CVector3f& dir, const f32 mag,
                                       const CMaterialFilter& filter, const CActor* actor) const {
  const float length = mag ? mag : 8000.f;
  const CVector3f ray = dir * length;
  const CVector3f end = pos + ray;
  const CAABox box(rstl::min_val(pos.GetX(), end.GetX()), rstl::min_val(pos.GetY(), end.GetY()),
                   rstl::min_val(pos.GetZ(), end.GetZ()), rstl::max_val(pos.GetX(), end.GetX()),
                   rstl::max_val(pos.GetY(), end.GetY()), rstl::max_val(pos.GetZ(), end.GetZ()));
  BuildNearList(nearListOut, box, filter, actor);
}

} // namespace SL
