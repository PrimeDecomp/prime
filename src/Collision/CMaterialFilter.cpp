#include "Collision/CMaterialFilter.hpp"

const CMaterialFilter CMaterialFilter::skPassEverything;

bool CMaterialFilter::Passes(const CMaterialList& other) const {
  switch (type) {
  case kFT_Always:
    return true;
  case kFT_Include:
    return other.SharesMaterials(include);
  case kFT_Exclude:
    return !other.SharesMaterials(exclude);
  case kFT_IncludeExclude:
    return other.SharesMaterials(include) && !other.SharesMaterials(exclude);
  default:
    return true;
  }
}
