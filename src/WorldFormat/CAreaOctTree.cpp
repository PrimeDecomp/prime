#include "WorldFormat/CAreaOctTree.hpp"
#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Streams/CMemoryInStream.hpp"

const ushort* CAreaOctTree::GetTriangleEdgeIndices(ushort idx) const {
  return &x44_polyEdges[idx * 3];
}

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
  ETreeType type = GetChildType(index);
  const uint* offsets = reinterpret_cast< const uint* >(x18_ptr + sizeof(uint));
  const void* node = x18_ptr + 9 * sizeof(uint) + offsets[index];
  if (type == kTT_Leaf) {
    CAABox bounds = *reinterpret_cast< const CAABox* >(node);
    return Node(node, bounds, GetOwner(), type);
  }
  const CVector3f center = 0.5f * (x0_aabb.GetMinPoint() + x0_aabb.GetMaxPoint());
  CAABox bounds = BoxFromIndex(index, x0_aabb.GetMinPoint(), center, x0_aabb.GetMaxPoint());
  return Node(node, bounds, GetOwner(), type);
}

CAreaOctTree::TriListReference CAreaOctTree::Node::GetTriangleArray() const {
  static const ushort skDeadArray[2] = {0, 0};
  if (GetTreeType() != kTT_Leaf) {
    return TriListReference(skDeadArray);
  }

  return TriListReference(x18_ptr);
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
  in.ReadLong();
  in.ReadLong();
  CAABox bounds(in);
  Node::ETreeType treeType = static_cast< Node::ETreeType >(in.ReadLong());
  uint treeSize = in.ReadLong();

  uchar* treeBuf = static_cast< uchar* >(buf) + in.GetReadPosition();
  uint* materialHeader = reinterpret_cast< uint* >(treeBuf + treeSize);
  uint matCount = *materialHeader;
  uint* materials = materialHeader + 1;

  uint* vertexMaterialHeader = materials + matCount;
  uchar* vertexMaterials = reinterpret_cast< uchar* >(vertexMaterialHeader + 1);
  uint* edgeMaterialHeader = reinterpret_cast< uint* >(vertexMaterials + *vertexMaterialHeader);
  uchar* edgeMaterials = reinterpret_cast< uchar* >(edgeMaterialHeader + 1);
  uint* polyMaterialHeader = reinterpret_cast< uint* >(edgeMaterials + *edgeMaterialHeader);
  uchar* polyMaterials = reinterpret_cast< uchar* >(polyMaterialHeader + 1);

  uint* edgeHeader = reinterpret_cast< uint* >(polyMaterials + *polyMaterialHeader);
  uint edgeCount = *edgeHeader;
  CCollisionEdge* edges = reinterpret_cast< CCollisionEdge* >(edgeHeader + 1);
  uint* polyHeader = reinterpret_cast< uint* >(edges + edgeCount);
  uint polyCount = *polyHeader / 3;
  ushort* polyEdges = reinterpret_cast< ushort* >(polyHeader + 1);
  uint* vertexHeader = reinterpret_cast< uint* >(polyEdges + polyCount * 3);
  uint vertexCount = *vertexHeader;
  CVector3f* vertices = reinterpret_cast< CVector3f* >(vertexHeader + 1);

  *treeOut = rs_new CAreaOctTree(bounds, treeType, static_cast< uchar* >(buf), treeBuf, matCount,
                                materials, vertexMaterials, edgeMaterials, polyMaterials,
                                edgeCount, edges, polyCount, polyEdges, vertexCount, vertices);
  *valid = true;
}
