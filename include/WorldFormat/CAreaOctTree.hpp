#ifndef _CAREAOCTTREE_HPP
#define _CAREAOCTTREE_HPP

#include "types.h"

#include "WorldFormat/CCollisionSurface.hpp"

#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CPlane.hpp"

#include "rstl/optional_object.hpp"

class CCollisionEdge;
class CLine;
class CMaterialFilter;

class CAreaOctTree {
public:
  struct SRayResult {
    CPlane x0_plane;
    rstl::optional_object< CCollisionSurface > x10_surface;
    f32 x3c_t;
  };

  class TriListReference {
  public:
    explicit TriListReference(const u16* ptr) : m_ptr(ptr) {}
    u16 GetAt(int idx) const { return m_ptr[idx + 1]; }
    u16 GetSize() const { return m_ptr[0]; }

  private:
    const u16* m_ptr;
  };

  class Node {
  public:
    enum ETreeType { kTT_Invalid, kTT_Branch, kTT_Leaf };

    Node(const void* ptr, const CAABox& aabb, const CAreaOctTree& owner, ETreeType type)
    : x0_aabb(aabb)
    , x18_ptr(reinterpret_cast< const u8* >(ptr))
    , x1c_owner(owner)
    , x20_nodeType(type) {}

    bool LineTest(const CLine& line, const CMaterialFilter& filter, f32 length) const;
    void LineTestEx(const CLine& line, const CMaterialFilter& filter, SRayResult& res,
                    f32 length) const;

    const CAreaOctTree& GetOwner() const { return x1c_owner; }
    const CAABox& GetBoundingBox() const { return x0_aabb; }
    u16 GetChildFlags() const { return *reinterpret_cast< const u16* >(x18_ptr); }
    Node GetChild(int idx) const;
    TriListReference GetTriangleArray() const;
    ETreeType GetChildType(int idx) const {
      u16 flags = *reinterpret_cast< const u16* >(x18_ptr);
      return ETreeType((flags >> (2 * idx)) & 0x3);
    }
    ETreeType GetTreeType() const { return x20_nodeType; }

  private:
    CAABox x0_aabb;
    const u8* x18_ptr;
    const CAreaOctTree& x1c_owner;
    ETreeType x20_nodeType;

    bool LineTestInternal(const CLine& line, const CMaterialFilter& filter, f32 lT, f32 hT,
                          f32 maxT, const CVector3f& vec) const;
    void LineTestExInternal(const CLine& line, const CMaterialFilter& filter, SRayResult& res,
                            f32 lT, f32 hT, f32 maxT, const CVector3f& dirRecip) const;
  };

  // TODO

private:
  CAABox x0_aabb;
  Node::ETreeType x18_treeType;
  const u8* x1c_buf;
  const u8* x20_treeBuf;
  uint x24_matCount;
  const uint* x28_materials;
  const u8* x2c_vertMats;
  const u8* x30_edgeMats;
  const u8* x34_polyMats;
  uint x38_edgeCount;
  const CCollisionEdge* x3c_edges;
  uint x40_polyCount;
  const u16* x44_polyEdges;
  uint x48_vertCount;
  const float* x4c_verts;
};
CHECK_SIZEOF(CAreaOctTree, 0x50)

#endif
