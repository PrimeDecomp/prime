#ifndef _CAREARENDEROCTTREE
#define _CAREARENDEROCTTREE

#include "types.h"
#include "Kyoto/Basics/CBasics.hpp"

#include "Kyoto/Math/CAABox.hpp"
#include "rstl/auto_ptr.hpp"
#include "rstl/vector.hpp"

struct CAreaRenderOctTree {
  struct Node {
    ushort x0_bitmapIdx;
    uchar x2_reserved;
    uchar x3_flags;
    ushort x4_children[1];

    int GetChildCount() const;
    CAABox GetNodeBounds(const CAABox& curAABB, int idx) const;
    void RecursiveBuildOverlaps(uint* out, const CAreaRenderOctTree& parent, const CAABox& curAABB,
                                const CAABox& testAABB) const;
  };

  rstl::auto_ptr< const uchar > x0_buf;
  uint x8_bitmapCount;
  uint xc_meshCount;
  uint x10_nodeCount;
  uint x14_bitmapWordCount;
  CAABox x18_aabb;
  const uint* x30_bitmaps;
  const uint* x34_indirectionTable;
  const uchar* x38_entries;

  explicit CAreaRenderOctTree(const rstl::auto_ptr< const uchar >& buf);

  const Node* GetNode(int idx) const {
    return reinterpret_cast< const Node* >(x38_entries + CBasics::SwapBytes(x34_indirectionTable[idx]));
  }

  void FindOverlappingModels(rstl::vector< uint >& out, const CAABox& testAABB) const;
  void FindOverlappingModels(uint* out, const CAABox& testAABB) const;
  static bool TestBit(const uint* words, int bitIdx);
};
CHECK_SIZEOF(CAreaRenderOctTree, 0x3c);
NESTED_CHECK_SIZEOF(CAreaRenderOctTree, Node, 0x6);

#endif
