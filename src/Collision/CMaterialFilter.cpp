#include "Collision/CMaterialFilter.hpp"

const CMaterialFilter CMaterialFilter::skPassEverything;

bool CMaterialFilter::Passes(const CMaterialList& other) const {
  switch (type) {
  case kFT_Always:
    return true;
  case kFT_Include:
    return other.SharesMaterials(include) != 0 ? true : false;
  case kFT_Exclude:
    return other.SharesMaterials(exclude) == 0;
  case kFT_IncludeExclude: {
    bool ret = false;
    if (other.SharesMaterials(include) != 0) {
      if (other.SharesMaterials(exclude) == 0) {
        ret = true;
      }
    }
    return ret;
  }
  default:
    return true;
  }
}
