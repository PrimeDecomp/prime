#include "Kyoto/PVS/CPVSVisOctree.hpp"
#include "rstl/auto_ptr.hpp"
#include <Kyoto/PVS/CPVSVisSet.hpp>
#include <Kyoto/Streams/CMemoryInStream.hpp>
#include <WorldFormat/CPVSAreaSet.hpp>

#pragma inline_max_size(250)
CPVSAreaSet::CPVSAreaSet(int numFeatures, int numLights, int num2ndLights, int numActors,
                         int leafSize, int lightIndexCount, const char* w7, const char* w8,
                         const char* w9)
: x0_(numFeatures)
, x4_(numLights)
, x8_(num2ndLights)
, xc_(numActors)
, x10_leafSize(leafSize)
, x14_(lightIndexCount)
, x18_(w7)
, x1c_lightLeaves(w8)
, x20_octree(CPVSVisOctree::MakePVSVisOctree(w9, 68)) {}

rstl::auto_ptr< CPVSAreaSet > CPVSAreaSet::MakeAreaSet(const char* data, int len) {
  CMemoryInStream in(data, len);
  int numFeatures = in.ReadLong();
  int numLights = in.ReadLong();
  int num2ndLights = in.ReadLong();
  int numActors = in.ReadLong();
  int leafSize = in.ReadLong();
  int lightIndexCount = in.ReadLong();
  char* data1 = (char*)(data + in.GetReadPosition());
  char* entityIndexEnd = (char*)(data + in.GetReadPosition() + (numActors * 4));
  char* data3 = entityIndexEnd + lightIndexCount * leafSize;

  return rs_new CPVSAreaSet(numFeatures, numLights, num2ndLights, numActors, leafSize,
                            lightIndexCount, data1, entityIndexEnd, data3);
}

const CPVSVisOctree& CPVSAreaSet::GetVisOctree(const uint) const { return x20_octree; }

CPVSVisSet CPVSAreaSet::GetLightSet(int lightIdx) const {
  //return CPVSVisSet(x20_octree.GetNumObjects(), x20_octree.GetNumLights(),
                    //x1c_lightLeaves + x10_leafSize * lightIdx);
}
