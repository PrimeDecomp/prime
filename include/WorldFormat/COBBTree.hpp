#ifndef _COBBTREE
#define _COBBTREE

#include "Collision/COBBox.hpp"
#include "Kyoto/Math/CVector3f.hpp"

#include "WorldFormat/CCollisionEdge.hpp"
#include "rstl/auto_ptr.hpp"
#include "rstl/single_ptr.hpp"

#include "rstl/vector.hpp"

class COBBTree {
public:
  class CSimpleAllocator {
  public:
    CSimpleAllocator(uint size);
    ~CSimpleAllocator();

    void* Alloc(size_t size);
    uint GetPoolMemSize() const { return mPoolSize; }

  private:
    char* mPool;
    uint mPoolSize;
    uint mPoolOffset;
  };

  class CLeafData {
  public:
    CLeafData(const rstl::vector< ushort >& surface);
    CLeafData(CInputStream& in);

    uint GetMemoryUsage() const;

    const rstl::vector< ushort >& GetSurfaceVector() const { return x0_surface; }

  private:
    rstl::vector< ushort > x0_surface;
  };
  
  class CNode {
  public:
    CNode(const CTransform4f& xf, const CVector3f& point, const CNode* left, const CNode* right,
          const CLeafData* leaf);
    CNode(CInputStream& in);
    ~CNode();
    static void SetAllocator(CSimpleAllocator* allocator);
    uint GetMemoryUsage() const;

    const COBBox& GetOBB() const { return x0_obb; }
    bool IsLeaf() const { return x3c_isLeaf; }
    const CNode* GetLeftNode() const { return x40_left; }
    const CNode* GetRightNode() const { return x44_right; }
    bool WasHit() const { return x4c_hit; }
    void SetHit(bool hit) { x4c_hit = hit; }

    static void* operator new(size_t size, const char* file, int line);
    static void operator delete(void* ptr, size_t size);

  private:
    COBBox x0_obb;
    bool x3c_isLeaf;
    const CNode* x40_left;
    const CNode* x44_right;
    const CLeafData* x48_leaf;
    bool x4c_hit;

    static CSimpleAllocator* spAllocator;
  };
  
  struct SIndexData {
    rstl::vector< uint > x0_materials;
    rstl::vector< uchar > x10_vertMaterials;
    rstl::vector< uchar > x20_edgeMaterials;
    rstl::vector< uchar > x30_surfaceMaterials;
    rstl::vector< CCollisionEdge > x40_edges;
    rstl::vector< ushort > x50_surfaceIndices;
    rstl::vector< CVector3f > x60_vertices;
    SIndexData() {}
    SIndexData(CInputStream& in);
  };

  COBBTree(CInputStream& in);
  COBBTree(const SIndexData& indexData, const CNode* root);
  ~COBBTree();

  
  static rstl::auto_ptr< COBBTree > BuildOrientedBoundingBoxTree(const CVector3f& extent, const CVector3f& center);
  
  CAABox CalculateLocalAABox() const;

  void GetTriangleVertexIndices(const ushort index, ushort out[2]) const;
  const ushort* GetTriangleEdgeIndices(ushort index) const;

private:
  uint x0_;
  uint x4_;
  uint x8_memoryUsage;
  CSimpleAllocator xc_allocator;
  SIndexData x18_indexData;
  const CNode* x88_root;
};

#endif // _COBBTREE
