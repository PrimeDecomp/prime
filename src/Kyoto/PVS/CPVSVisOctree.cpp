#include "Kyoto/PVS/CPVSVisOctree.hpp"

int CPVSVisOctree::IterateSearch(uchar octant, const CVector3f& pos) const {}

uint CPVSVisOctree::GetNumChildren(uchar octant) const {
  static const uint childCount[8] = {0, 2, 2, 4, 2, 4, 4, 8};
  return childCount[octant & 7];
}
