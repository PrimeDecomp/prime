#ifndef _CPVSAREASET
#define _CPVSAREASET

#include "Kyoto/PVS/CPVSVisOctree.hpp"
class CPVSVisSet;
class CInputStream;

class CPVSAreaSet {
public:
  CPVSAreaSet(const int, const int, const int, const int, const int, const int, const char*,
              const char*, const char*);

  const CPVSVisOctree& GetOctree() const { return x20_octree; }

  static rstl::auto_ptr< CPVSAreaSet > MakeAreaSet(const char* data, int len);
  CPVSVisSet GetLightSet(int) const;
  int GetEntityIdByIndex(uint idx) const;

  CPVSVisOctree& GetVisOctree() const;
  bool Has2ndLayerLights() const { return x8_ != 0; }

private:
  int x0_;
  int x4_;
  int x8_;
  int xc_;
  int x10_leafSize;
  int x14_;
  const char* x18_;
  const char* x1c_lightLeaves;
  mutable CPVSVisOctree x20_octree;
};

#endif // _CPVSAREASET
