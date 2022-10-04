#ifndef _CMATERIALFILTER_HPP
#define _CMATERIALFILTER_HPP

#include "types.h"

#include "Collision/CMaterialList.hpp"

class CMaterialFilter {
public:
  enum EFilterType {
    kFT_Always,
    kFT_Include,
    kFT_Exclude,
    kFT_IncludeExclude,
  };

  CMaterialFilter() : type(kFT_Always) {}
  CMaterialFilter(const CMaterialList& include, const CMaterialList& exclude, EFilterType type)
  : include(include), exclude(exclude), type(type) {}

  static CMaterialFilter MakeInclude(const CMaterialList& include) {
    return CMaterialFilter(include, CMaterialList(), kFT_Include);
  }
  static CMaterialFilter MakeExclude(const CMaterialList& exclude) {
    return CMaterialFilter(CMaterialList(), exclude, kFT_Exclude);
  }
  static CMaterialFilter MakeIncludeExclude(const CMaterialList& include,
                                            const CMaterialList& exclude) {
    return CMaterialFilter(include, exclude, kFT_IncludeExclude);
  }

private:
  CMaterialList include;
  CMaterialList exclude;
  EFilterType type;
};
CHECK_SIZEOF(CMaterialFilter, 0x18)

#endif
