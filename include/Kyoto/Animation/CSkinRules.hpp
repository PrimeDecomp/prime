#ifndef _CSKINRULES
#define _CSKINRULES

#include "Kyoto/Animation/CVirtualBone.hpp"

class CInputStream;
class CSkinRules {
public:
  CSkinRules(CInputStream& in);
  ~CSkinRules();

private:
  rstl::vector<CVirtualBone> x0_virtualBones;
  uint x10_vertexCount;
  uint x14_normalCount;
};

#endif // _CSKINRULES
