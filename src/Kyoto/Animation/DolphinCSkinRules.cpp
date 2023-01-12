#include "Kyoto/Animation/CSkinRules.hpp"
#include "Kyoto/Graphics/CModel.hpp"
#include "rstl/math.hpp"

int StreamFloatToShort(CInputStream& in) {
  int result = in.ReadLong();
  if (result == -1) {
    return in.ReadLong();
  }
  uchar junk[780];
  for (int i = 0; i < (result * 3);) {
    int iVar2 = rstl::min_val(((result * 3) - i), 192);
    in.Get(junk, iVar2 * 4);
    i += iVar2;
  }
  return result;
}

CSkinRules::CSkinRules(CInputStream& in)
: x0_virtualBones(in)
, x10_vertexCount(StreamFloatToShort(in))
, x14_normalCount(StreamFloatToShort(in)) {

  CModel::AddToTotal(x0_virtualBones.size() * sizeof(CVirtualBone) + sizeof(CSkinRules));
}

CSkinRules::~CSkinRules() {
  CModel::RemoveFromTotal(x0_virtualBones.size() * sizeof(CVirtualBone) + sizeof(CSkinRules));
}
