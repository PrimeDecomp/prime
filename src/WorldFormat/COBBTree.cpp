#include "WorldFormat/COBBTree.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

COBBTree::SIndexData::SIndexData(CInputStream& in)
: x0_materials(in)
, x10_vertMaterials(in)
, x20_edgeMaterials(in)
, x30_surfaceMaterials(in)
, x40_edges(in)
, x50_surfaceIndices(in)
, x60_vertices(in) {}
