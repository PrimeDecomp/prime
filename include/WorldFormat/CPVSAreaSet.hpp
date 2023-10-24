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

  const CPVSVisOctree& GetVisOctree(const uint) const;

private:
  int x0_;
  int x4_;
  int x8_;
  int xc_;
  int x10_leafSize;
  int x14_;
  const char* x18_;
  const char* x1c_lightLeaves;
  CPVSVisOctree x20_octree;
};

#endif // _CPVSAREASET
