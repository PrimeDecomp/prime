#include "WorldFormat/COBBTree.hpp"

#include "Kyoto/Streams/CInputStream.hpp"

#pragma inline_max_size(250)

COBBTree::SIndexData::SIndexData(CInputStream& in)
: x0_materials(in)
, x10_vertMaterials(in)
, x20_edgeMaterials(in)
, x30_surfaceMaterials(in)
, x40_edges(in)
, x50_surfaceIndices(in)
, x60_vertices(in) {}

COBBTree::COBBTree(const SIndexData& indexData, const CNode* root);
