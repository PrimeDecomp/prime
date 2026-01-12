#include "Kyoto/PVS/CPVSVisSet.hpp"
#include "Kyoto/PVS/CPVSVisOctree.hpp"
#include "Kyoto/Streams/CMemoryInStream.hpp"

CPVSVisSet::CPVSVisSet(int numBits, int numLights, const rstl::auto_ptr< const char >& leafPtr)
: x0_state(kVSS_NodeFound), x4_numBits(numBits), x8_numLights(numLights), xc_ptr(leafPtr) {}

CPVSVisSet::CPVSVisSet(EPVSVisSetState state) : x0_state(state), x4_numBits(0), x8_numLights(0) {}

EPVSVisSetState CPVSVisSet::GetVisible(int idx) const {
  if (x0_state != kVSS_NodeFound)
    return x0_state;

  int numFeatures = x4_numBits - x8_numLights;
  if (idx < numFeatures) {
    /* This is a feature lookup */
    u8 flag = xc_ptr.get()[idx / 8];
    return flag & (1 << (idx & 7)) ? kVSS_OutOfBounds : kVSS_EndOfTree;
  }

  /* This is a light lookup */
  int lightTest = idx - numFeatures + idx;
  const char* ptr = &xc_ptr.get()[lightTest / 8];
  lightTest &= 0x7;
  if (lightTest < 0x7) {
    return static_cast< EPVSVisSetState >(((uchar)ptr[0] & (0x3 << lightTest)) >> lightTest);
  }
  return static_cast< EPVSVisSetState >((((uchar)ptr[0] >> 7) & 1) | ((ptr[1] & 0x1) << 1));
}

CPVSVisOctree::CPVSVisOctree(const CAABox& bounds, const int numObjects, const int numLights,
                             const char* octreeData)
: mBounds(bounds)
, mNumObjects(numObjects)
, mNumLights(numLights)
, mOctreeData(const_cast< char* >(octreeData))
, mMin(mBounds.GetMinPoint())
, mMax(mBounds.GetMaxPoint()) {
  mOctreeData.release();
}

CPVSVisOctree CPVSVisOctree::MakePVSVisOctree(const char* data, int len) {
  CMemoryInStream in(data, len);
  CAABox bounds(in);
  int numObjects = in.Get< int >();
  int numLights = in.Get< int >();
  in.Get< int >();

  return CPVSVisOctree(bounds, numObjects, numLights, data + in.GetReadPosition());
}

CPVSVisSet CPVSVisOctree::GetVisSet(const CVector3f& point) {
  if (!GetBounds().PointInside(point)) {
    return CPVSVisSet(kVSS_OutOfBounds);
  }

  const char* data = mOctreeData.get();
  mMin = mBounds.GetMinPoint();
  mMax = mBounds.GetMaxPoint();

  char bVar1 = *data;
  int searchRes;
  while ((searchRes = IterateSearch(bVar1, point)) != -1) {
    if (searchRes != 0) {
    }
  }

  bVar1 &= 0x18;

  switch (bVar1) {
  case 24: {
    rstl::auto_ptr< const char > tmp(data);
    {
      rstl::auto_ptr< const char > tmp2(tmp);
      return CPVSVisSet(mNumObjects, mNumLights, tmp2);
    }
  }
  case 16:
    return CPVSVisSet(kVSS_OutOfBounds);
  case 8:
    return CPVSVisSet(kVSS_EndOfTree);
  default:
    return CPVSVisSet(kVSS_OutOfBounds);
  }
}
