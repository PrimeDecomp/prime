#ifndef _CPVSVISOCTREE
#define _CPVSVISOCTREE

#include "Kyoto/Math/CAABox.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "rstl/auto_ptr.hpp"

class CPVSVisOctree {
public:
  int IterateSearch(uchar a, const CVector3f& pos) const;
  uint GetNumChildren(uchar a) const;
  uint GetNumObjects() const { return mNumObjects; }
  uint GetNumLights() const { return mNumLights; }

  static CPVSVisOctree MakePVSVisOctree(const char* data, int len);

private:
  CAABox mBounds;
  uint mNumObjects;
  uint mNumLights;
  rstl::auto_ptr< uchar > mOctreeData;
  uint _28;
  CAABox mSearchBounds;
};

#endif // _CPVSVISOCTREE
