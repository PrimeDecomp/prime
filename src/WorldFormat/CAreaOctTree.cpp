#include "WorldFormat/CAreaOctTree.hpp"
#include "Kyoto/Basics/CBasics.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Streams/CMemoryInStream.hpp"

static CAABox BoxFromIndex(int index, const CVector3f& a, const CVector3f& b, const CVector3f& c) {
  switch (index) {
  case 0:
    return CAABox(a, b);
  case 1:
    return CAABox(CVector3f(b.GetX(), a.GetY(), a.GetZ()), CVector3f(c.GetX(), b.GetY(), b.GetZ()));
  case 2:
    return CAABox(CVector3f(a.GetX(), b.GetY(), a.GetZ()), CVector3f(b.GetX(), c.GetY(), b.GetZ()));
  case 3:
    return CAABox(CVector3f(b.GetX(), b.GetY(), a.GetZ()), CVector3f(c.GetX(), c.GetY(), b.GetZ()));
  case 4:
    return CAABox(CVector3f(a.GetX(), a.GetY(), b.GetZ()), CVector3f(b.GetX(), b.GetY(), c.GetZ()));
  case 5:
    return CAABox(CVector3f(b.GetX(), a.GetY(), b.GetZ()), CVector3f(c.GetX(), b.GetY(), c.GetZ()));
  case 6:
    return CAABox(CVector3f(a.GetX(), b.GetY(), b.GetZ()), CVector3f(b.GetX(), c.GetY(), c.GetZ()));
  case 7:
    return CAABox(b, c);
  default:
    return CAABox(a, c);
  }
}

CAreaOctTree::Node CAreaOctTree::Node::GetChild(int index) const {
  const ushort* node = reinterpret_cast< const ushort* >(x18_ptr + (index * 4) + 4);
  ETreeType type = GetChildType(index);
  if (type == kTT_Leaf) {
    CAABox bounds = reinterpret_cast< const Node* >(node)->GetBoundingBox();
    return Node(reinterpret_cast< const uchar* >(node), bounds, GetOwner(), type);
  }
  CAABox bounds =
      BoxFromIndex(index, x0_aabb.GetMinPoint(), x0_aabb.CenterPoint(), x0_aabb.GetMaxPoint());
  return Node(reinterpret_cast< const uchar* >(node), bounds, GetOwner(), type);
}

CAreaOctTree::TriListReference CAreaOctTree::Node::GetTriangleArray() const {
  static const ushort skDeadArray[2] = {0, 0};
  if (GetTreeType() != kTT_Leaf) {
    return TriListReference(skDeadArray);
  }

  return TriListReference(reinterpret_cast< const ushort* >(x18_ptr));
}

CAreaOctTree::CAreaOctTree(const CAABox& bounds, Node::ETreeType treeType, uchar* buf,
                           void* treeBuf, uint materialCount, uint* materials,
                           uchar* vertexMaterials, uchar* edgeMaterials, uchar* polyMaterials,
                           uint edgeCount, CCollisionEdge* edges, uint polyCount, ushort* polyEdges,
                           uint vertexCount, CVector3f* vertices)
: x0_aabb(bounds)
, x18_treeType(treeType)
, x1c_buf(buf)
, x20_treeBuf(treeBuf)
, x24_matCount(materialCount)
, x28_materials(materials)
, x2c_vertMats(vertexMaterials)
, x30_edgeMats(edgeMaterials)
, x34_polyMats(polyMaterials)
, x38_edgeCount(edgeCount)
, x3c_edges(edges)
, x40_polyCount(polyCount)
, x44_polyEdges(polyEdges)
, x48_vertCount(vertexCount)
, x4c_verts(vertices) {}

void CAreaOctTree::MakeFromMemory(void* buf, const uint bufLen, CAreaOctTree** treeOut,
                                  bool* valid) {
  CMemoryInStream in(buf, bufLen, CMemoryInStream::kOS_NotOwned);
  in.Get< int >();
  in.Get< int >();
  CAABox bounds(in);
  Node::ETreeType treeType = static_cast< Node::ETreeType >(in.Get< int >());
  uint treeSize = in.Get< uint >();

  uchar* curBuf = reinterpret_cast< uchar* >(buf) + in.GetReadPosition() + treeSize;
  uint matCount = CBasics::SwapBytes(*reinterpret_cast< uint* >(curBuf));
  curBuf += sizeof(uint) * matCount;
  curBuf += 4;
  uint* matBuf = reinterpret_cast< uint* >(curBuf);
  curBuf += 4;
  uchar* vertexMaterials = curBuf;
  curBuf += 4;
  uchar* edgeMaterials = curBuf;
  curBuf += 4;
  uchar* polyMaterials = curBuf;
  *treeOut = rs_new CAreaOctTree(bounds, treeType, reinterpret_cast< uchar* >(buf),
                                 reinterpret_cast< uchar* >(buf) + in.GetReadPosition(), matCount,
                                 reinterpret_cast< uint* >(matBuf), vertexMaterials, edgeMaterials,
                                 polyMaterials, 0, nullptr, 0, nullptr, 0, nullptr);
  *valid = true;
}
