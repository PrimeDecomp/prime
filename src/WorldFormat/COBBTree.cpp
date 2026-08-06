#include "WorldFormat/COBBTree.hpp"

#include "Collision/CMaterialList.hpp"
#include "Kyoto/Streams/CInputStream.hpp"
#include <rstl/algorithm.hpp>

#pragma inline_max_size(250)

COBBTree::CSimpleAllocator* COBBTree::CNode::spAllocator = nullptr;

COBBTree::SIndexData::SIndexData(CInputStream& in)
: x0_materials(in)
, x10_vertMaterials(in)
, x20_edgeMaterials(in)
, x30_surfaceMaterials(in)
, x40_edges(in)
, x50_surfaceIndices(in)
, x60_vertices(in) {}

COBBTree::COBBTree(const SIndexData& indexData, const CNode* root)
: x8_memoryUsage(root->GetMemoryUsage())
, xc_allocator(0)
, x18_indexData(indexData)
, x88_root(root) {
  CNode::SetAllocator(nullptr);
}

uint verify_deaf_babe(CInputStream& in) { return in.Get< uint >(); }
uint verify_version(CInputStream& in) { return in.Get< uint >(); }

COBBTree::COBBTree(CInputStream& in)
: x0_(verify_deaf_babe(in))
, x4_(verify_version(in))
, x8_memoryUsage(in.Get< uint >())
, xc_allocator(x8_memoryUsage)
, x18_indexData(in)
, x88_root(nullptr) {
  CNode::SetAllocator(&xc_allocator);

  x88_root = rs_new CNode(in);
}

COBBTree::~COBBTree() {
  if (xc_allocator.GetPoolMemSize() != 0) {
    CNode::SetAllocator(&xc_allocator);
  } else {
    CNode::SetAllocator(nullptr);
  }
  delete x88_root;
}

CAABox COBBTree::CalculateLocalAABox() const {
  if (x88_root != nullptr) {
    return x88_root->GetOBB().CalculateAABox(CTransform4f::Identity());
  }

  return CAABox(0.f, 0.f, 0.f, 0.f, 0.f, 0.f);
}

rstl::auto_ptr< COBBTree > COBBTree::BuildOrientedBoundingBoxTree(const CVector3f& extent,
                                                                  const CVector3f& center) {
  const CVector3f halfExtent = (extent * 0.5f);
  const CVector3f negHalfExtent = (extent * -0.5f);
  const CAABox aabb(negHalfExtent + center, halfExtent + center);
  SIndexData indexData;
#define BIT(x) ((uint)(1 << x))
  indexData.x0_materials.reserve(3);
  indexData.x0_materials.push_back(BIT(kMT_Wall) | BIT(kMT_NoPlatformCollision) | BIT(kMT_Solid));
  indexData.x0_materials.push_back(BIT(kMT_Wall) | BIT(kMT_RedundantEdgeOrFlippedTri) |
                                   BIT(kMT_NoPlatformCollision) | BIT(kMT_Solid));
  indexData.x0_materials.push_back(BIT(kMT_Wall) | BIT(kMT_NoEdgeCollision) |
                                   BIT(kMT_NoPlatformCollision) | BIT(kMT_Solid));
  indexData.x10_vertMaterials = rstl::vector< uchar >(8, 0);
  static const uchar kEdgeMaterials[] = {
      2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 2, 0, 0, 2, 2,
  };
  indexData.x20_edgeMaterials.reserve(ARRAY_SIZE(kEdgeMaterials));
  for (size_t i = 0; i < ARRAY_SIZE(kEdgeMaterials); ++i) {
    indexData.x20_edgeMaterials.push_back(kEdgeMaterials[i]);
  }

  static const uchar kTriangleMaterials[] = {
      0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1,
  };
  indexData.x30_surfaceMaterials.reserve(ARRAY_SIZE(kTriangleMaterials));
  for (size_t i = 0; i < ARRAY_SIZE(kTriangleMaterials); ++i) {
    indexData.x30_surfaceMaterials.push_back(kTriangleMaterials[i]);
  }

  static const ushort kEdges[] = {
      4, 1, 1, 5, 5, 4, 4, 0, 0, 1, 7, 2, 2, 6, 6, 7, 7, 3,
      3, 2, 6, 0, 4, 6, 2, 0, 5, 3, 7, 5, 1, 3, 6, 5, 0, 3,
  };
  indexData.x40_edges.reserve(ARRAY_SIZE(kEdges) / 2);

  for (size_t i = 0; i < ARRAY_SIZE(kEdges); i += 2) {
    indexData.x40_edges.push_back(CCollisionEdge(kEdges[i], kEdges[i + 1]));
  }

  static const ushort kTriangleEdgeMaterials[] = {
      0,  1, 2,  0,  3, 4,  5,  6,  7, 5,  8,  9, 10, 3,  11, 10, 6,  12,
      13, 8, 14, 13, 1, 15, 16, 14, 7, 16, 11, 2, 17, 15, 4,  17, 12, 9,
  };

  indexData.x50_surfaceIndices.reserve(ARRAY_SIZE(kTriangleEdgeMaterials));
  for (size_t i = 0; i < ARRAY_SIZE(kTriangleEdgeMaterials); i++) {
    indexData.x50_surfaceIndices.push_back(kTriangleEdgeMaterials[i]);
  }

  indexData.x60_vertices.reserve(8);
  for (int i = 0; i < 8; ++i) {
    indexData.x60_vertices.push_back(aabb.GetPoint(i));
  }

  rstl::vector< ushort > surface;
  surface.reserve(12);
  for (ushort i = 0; i < 12; ++i) {
    surface.push_back(i);
  }
  CNode::SetAllocator(nullptr);

  CLeafData* leafData = rs_new CLeafData(surface);
  CNode* root =
      rs_new CNode(CTransform4f::Translate(center), halfExtent, nullptr, nullptr, leafData);

  return rs_new COBBTree(indexData, root);
}
void COBBTree::GetTriangleVertexIndices(const ushort index, ushort out[2]) const {
  const int surfIdx = (index * 3);
  const CCollisionEdge& e0 = x18_indexData.x40_edges[x18_indexData.x50_surfaceIndices[surfIdx]];
  const CCollisionEdge& e1 = x18_indexData.x40_edges[x18_indexData.x50_surfaceIndices[surfIdx + 1]];

  out[2] = (e1.GetVertIndex1() != e0.GetVertIndex1() && e1.GetVertIndex1() != e0.GetVertIndex2())
               ? e1.GetVertIndex1()
               : e1.GetVertIndex2();

  const uint material = x18_indexData.x0_materials[x18_indexData.x30_surfaceMaterials[index]];
  if ((material & 0x2000000) != 0) {
    out[0] = e0.GetVertIndex2();
    out[1] = e0.GetVertIndex1();
  } else {
    out[0] = e0.GetVertIndex1();
    out[1] = e0.GetVertIndex2();
  }
}

const ushort* COBBTree::GetTriangleEdgeIndices(const ushort index) const {
  return &x18_indexData.x50_surfaceIndices[index * 3];
}

COBBTree::CNode::CNode(const CTransform4f& xf, const CVector3f& point, const CNode* left,
                       const CNode* right, const CLeafData* leaf)
: x0_obb(xf, point)
, x3c_isLeaf(leaf != nullptr)
, x40_left(left)
, x44_right(right)
, x48_leaf(leaf) {}

COBBTree::CNode::CNode(CInputStream& in)
: x0_obb(in)
, x3c_isLeaf(in.Get< bool >())
, x40_left(x3c_isLeaf ? nullptr : rs_new CNode(in))
, x44_right(x3c_isLeaf ? nullptr : rs_new CNode(in))
, x48_leaf(x3c_isLeaf ? rs_new CLeafData(in) : nullptr) {}

COBBTree::CNode::~CNode() {
  delete x40_left;
  delete x44_right;
  delete x48_leaf;
}

uint COBBTree::CNode::GetMemoryUsage() const {
  uint ret = sizeof(CNode);
  if (x3c_isLeaf) {
    ret += x48_leaf->GetMemoryUsage();
  } else {
    ret += x40_left->GetMemoryUsage();
    ret += x44_right->GetMemoryUsage();
  }

  if (ret & 3) {
    ret += (4 - (ret & 3));
  }

  return ret;
}

void COBBTree::CNode::SetAllocator(CSimpleAllocator* allocator) { spAllocator = allocator; }
void* COBBTree::CNode::operator new(size_t size, const char* file, int line) {
  if (spAllocator == nullptr) {
    return rs_new char[size];
  }
  return spAllocator->Alloc(size);
}

void COBBTree::CNode::operator delete(void* ptr, size_t size) {
  if (spAllocator == nullptr && ptr != nullptr) {
    delete[] ptr;
  }
}

COBBTree::CLeafData::CLeafData(const rstl::vector< ushort >& surface) : x0_surface(surface) {}
COBBTree::CLeafData::CLeafData(CInputStream& in) : x0_surface(in) {}

uint COBBTree::CLeafData::GetMemoryUsage() const {
  uint ret = sizeof(CLeafData) + x0_surface.size() * sizeof(ushort);

  if (ret & 3) {
    ret += (4 - (ret & 3));
  }

  return ret;
}

COBBTree::CSimpleAllocator::CSimpleAllocator(uint size)
: mPool(rs_new char[size]), mPoolSize(size), mPoolOffset(0) {}

COBBTree::CSimpleAllocator::~CSimpleAllocator() {
  if (mPool) {
    delete[] mPool;
  }
}

void* COBBTree::CSimpleAllocator::Alloc(const size_t size) {
  void* ret = mPool + mPoolOffset;
  mPoolOffset += size;
  if (mPoolOffset & 3) {
    mPoolOffset += (4 - (mPoolOffset & 3));
  }

  return ret;
}