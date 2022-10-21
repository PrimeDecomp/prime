#ifndef _CAREAOCTTREE
#define _CAREAOCTTREE

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
    float x3c_t;
  };

  class TriListReference {
  public:
    explicit TriListReference(const ushort* ptr) : m_ptr(ptr) {}
    ushort GetAt(int idx) const { return m_ptr[idx + 1]; }
    ushort GetSize() const { return m_ptr[0]; }

  private:
    const ushort* m_ptr;
  };

  class Node {
  public:
    enum ETreeType { kTT_Invalid, kTT_Branch, kTT_Leaf };

    Node(const void* ptr, const CAABox& aabb, const CAreaOctTree& owner, ETreeType type)
    : x0_aabb(aabb)
    , x18_ptr(reinterpret_cast< const uchar* >(ptr))
    , x1c_owner(owner)
    , x20_nodeType(type) {}

    bool LineTest(const CLine& line, const CMaterialFilter& filter, float length) const;
    void LineTestEx(const CLine& line, const CMaterialFilter& filter, SRayResult& res,
                    float length) const;

    const CAreaOctTree& GetOwner() const { return x1c_owner; }
    const CAABox& GetBoundingBox() const { return x0_aabb; }
    ushort GetChildFlags() const { return *reinterpret_cast< const ushort* >(x18_ptr); }
    Node GetChild(int idx) const;
    TriListReference GetTriangleArray() const;
    ETreeType GetChildType(int idx) const {
      ushort flags = *reinterpret_cast< const ushort* >(x18_ptr);
      return ETreeType((flags >> (2 * idx)) & 0x3);
    }
    ETreeType GetTreeType() const { return x20_nodeType; }

  private:
    CAABox x0_aabb;
    const uchar* x18_ptr;
    const CAreaOctTree& x1c_owner;
    ETreeType x20_nodeType;

    bool LineTestInternal(const CLine& line, const CMaterialFilter& filter, float lT, float hT,
                          float maxT, const CVector3f& vec) const;
    void LineTestExInternal(const CLine& line, const CMaterialFilter& filter, SRayResult& res,
                            float lT, float hT, float maxT, const CVector3f& dirRecip) const;
  };

  CCollisionSurface GetMasterListTriangle(ushort idx) const;
  // TODO

private:
  CAABox x0_aabb;
  Node::ETreeType x18_treeType;
  const uchar* x1c_buf;
  const uchar* x20_treeBuf;
  uint x24_matCount;
  const uint* x28_materials;
  const uchar* x2c_vertMats;
  const uchar* x30_edgeMats;
  const uchar* x34_polyMats;
  uint x38_edgeCount;
  const CCollisionEdge* x3c_edges;
  uint x40_polyCount;
  const ushort* x44_polyEdges;
  uint x48_vertCount;
  const float* x4c_verts;
};
CHECK_SIZEOF(CAreaOctTree, 0x50)

#endif // _CAREAOCTTREE
