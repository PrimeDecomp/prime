#ifndef _COBBTREE
#define _COBBTREE

#include "Kyoto/Math/CVector3f.hpp"

#include "WorldFormat/CCollisionEdge.hpp"

#include "rstl/vector.hpp"

class COBBTree {
  struct SIndexData {
    rstl::vector< uint > x0_materials;
    rstl::vector< uchar > x10_vertMaterials;
    rstl::vector< uchar > x20_edgeMaterials;
    rstl::vector< uchar > x30_surfaceMaterials;
    rstl::vector< CCollisionEdge > x40_edges;
    rstl::vector< ushort > x50_surfaceIndices;
    rstl::vector< CVector3f > x60_vertices;
    SIndexData(CInputStream& in);
  };

public:
  COBBTree(CInputStream& in);
  ~COBBTree();

private:
  char data[0x8c];
};

#endif // _COBBTREE
