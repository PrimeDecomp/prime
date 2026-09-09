#include "Kyoto/PVS/CPVSVisOctree.hpp"

int CPVSVisOctree::IterateSearch(uchar octant, const CVector3f& pos) const {
  if (!(octant & 7)) {
    return -1;
  }

  const CVector3f halfExtent = (mMax - mMin) * 0.5f;
  const CVector3f& center = halfExtent + mMin;
  float minX, maxX;
  float minY, maxY;
  float minZ, maxZ;
  bool highX, highY, highZ;
  if (pos[0] > center[0]) {
    minX = center[0];
    maxX = mMax[0];
    highX = true;
  } else {
    maxX = center[0];
    minX = mMin[0];
    highX = false;
  }
  if (pos[1] > center[1]) {
    minY = center[1];
    maxY = mMax[1];
    highY = true;
  } else {
    maxY = center[1];
    minY = mMin[1];
    highY = false;
  }
  if (pos[2] > center[2]) {
    minZ = center[2];
    maxZ = mMax[2];
    highZ = true;
  } else {
    maxZ = center[2];
    minZ = mMin[2];
    highZ = false;
  }

  int xCount = 1;
  int yCount = 1;
  if (octant & 1)
    xCount = 2;
  if (octant & 2)
    yCount = 2;
  mMin = CVector3f(octant & 1 ? minX : mMin[0], octant & 2 ? minY : mMin[1],
                   octant & 4 ? minZ : mMin[2]);
  mMax = CVector3f(octant & 1 ? maxX : mMax[0], octant & 2 ? maxY : mMax[1],
                   octant & 4 ? maxZ : mMax[2]);
  return highX * bool(octant & 1) + highY * xCount * bool(octant & 2) +
         highZ * xCount * yCount * bool(octant & 4);
}

uint CPVSVisOctree::GetNumChildren(uchar octant) const {
  static const uint childCount[8] = {0, 2, 2, 4, 2, 4, 4, 8};
  return childCount[octant & 7];
}
