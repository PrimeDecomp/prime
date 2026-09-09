#include "WorldFormat/CAreaRenderOctTree.hpp"

#pragma inline_max_size(250)

static const int skChildCounts[] = {0, 2, 2, 4, 2, 4, 4, 8};
// Retail indexes this table with flags * 3, including its unusual axis pairs.
static const int skAxes[] = {-1, -1, -1, -1, -1, -1, -1, -1, -1, 0, 1, 1, -1, -1, 0, 2, 1, 2, 0, 1};

CAreaRenderOctTree::CAreaRenderOctTree(const rstl::auto_ptr< const uchar >& buf)
: x0_buf(buf)
, x8_bitmapCount(*reinterpret_cast< const uint* >(buf.get() + 8))
, xc_meshCount(*reinterpret_cast< const uint* >(buf.get() + 12))
, x10_nodeCount(*reinterpret_cast< const uint* >(buf.get() + 16))
, x14_bitmapWordCount((xc_meshCount + 31) / 32)
, x18_aabb(*reinterpret_cast< const CAABox* >(buf.get() + 20))
, x30_bitmaps(reinterpret_cast< const uint* >(buf.get() + 64))
, x34_indirectionTable(x30_bitmaps + x8_bitmapCount * x14_bitmapWordCount)
, x38_entries(reinterpret_cast< const uchar* >(x34_indirectionTable + x10_nodeCount)) {}

int CAreaRenderOctTree::Node::GetChildCount() const { return skChildCounts[x3_flags]; }

CAABox CAreaRenderOctTree::Node::GetNodeBounds(const CAABox& curAABB, int idx) const {
  CVector3f min = curAABB.GetMinPoint();
  CVector3f max = curAABB.GetMaxPoint();
  const uint flags = x3_flags;
  switch (flags) {
  case 0:
  default:
    break;
  case 1: {
    float center = 0.5f * (max.GetX() + min.GetX());
    if (idx == 0) {
      max.SetX(center);
    } else {
      min.SetX(center);
    }
    break;
  }
  case 2: {
    float center = 0.5f * (max.GetY() + min.GetY());
    if (idx == 0) {
      max.SetY(center);
    } else {
      min.SetY(center);
    }
    break;
  }
  case 4: {
    float center = 0.5f * (max.GetZ() + min.GetZ());
    if (idx == 0) {
      max.SetZ(center);
    } else {
      min.SetZ(center);
    }
    break;
  }
  case 3:
  case 5:
  case 6: {
    CVector3f center = curAABB.GetCenterPoint();
    int axis = flags * 3;
    int a = skAxes[axis];
    int b = skAxes[axis + 1];
    switch (idx) {
    case 0:
      max[a] = center[a];
      max[b] = center[b];
      break;
    case 1:
      min[a] = center[a];
      max[b] = center[b];
      break;
    case 2:
      min[b] = center[b];
      max[a] = center[a];
      break;
    case 3:
      min[a] = center[a];
      min[b] = center[b];
      break;
    }
    break;
  }
  case 7: {
    CVector3f center = curAABB.GetCenterPoint();
    for (int i = 0; i < 3; ++i) {
      if (idx & (1 << i)) {
        min[i] = center[i];
      } else {
        max[i] = center[i];
      }
    }
    break;
  }
  }

  return CAABox(min, max);
}

void CAreaRenderOctTree::FindOverlappingModels(rstl::vector< uint >& out,
                                               const CAABox& testAABB) const {
  out.resize(x14_bitmapWordCount, 0);
  reinterpret_cast< const Node* >(x38_entries + x34_indirectionTable[0])
      ->RecursiveBuildOverlaps(out.data(), *this, x18_aabb, testAABB);
}

void CAreaRenderOctTree::FindOverlappingModels(uint* out, const CAABox& testAABB) const {
  reinterpret_cast< const Node* >(x38_entries + x34_indirectionTable[0])
      ->RecursiveBuildOverlaps(out, *this, x18_aabb, testAABB);
}

void CAreaRenderOctTree::Node::RecursiveBuildOverlaps(uint* out, const CAreaRenderOctTree& parent,
                                                      const CAABox& curAABB,
                                                      const CAABox& testAABB) const {
  if (testAABB.DoBoundsOverlap(curAABB)) {
    if (x3_flags == 0 || curAABB.Inside(testAABB)) {
      const uint* bitmap = &parent.x30_bitmaps[x0_bitmapIdx * parent.x14_bitmapWordCount];
      for (uint i = 0; i < parent.x14_bitmapWordCount; ++i) {
        out[i] |= bitmap[i];
      }
    } else {
      int childCount = GetChildCount();
      for (int i = 0; i < childCount; ++i) {
        const Node* child = parent.GetNode(x4_children[i]);
        child->RecursiveBuildOverlaps(out, parent, GetNodeBounds(curAABB, i), testAABB);
      }
    }
  }
}

bool CAreaRenderOctTree::TestBit(const uint* words, int bitIdx) {
  return (words[bitIdx >> 5] & (1 << (bitIdx & 31))) != 0;
}
