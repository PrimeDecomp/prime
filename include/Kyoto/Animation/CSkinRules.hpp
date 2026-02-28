#ifndef _CSKINRULES
#define _CSKINRULES

#include "Kyoto/Animation/CVirtualBone.hpp"

class CInputStream;
class CSkinRules {
public:
  CSkinRules(CInputStream& in);
  ~CSkinRules();

  void BuildNormalsFrom(const CVector3f* averageNormals, CVector3f* out) const;
  uint GetNumPoints() const { return x10_vertexCount; }

private:
  rstl::vector< CVirtualBone > x0_virtualBones;
  uint x10_vertexCount;
  uint x14_normalCount;
};

#endif // _CSKINRULES
