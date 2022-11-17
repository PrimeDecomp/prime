#ifndef _CMATERIALFILTER
#define _CMATERIALFILTER

#include "types.h"

#include "Collision/CMaterialList.hpp"

class CMaterialFilter {
  static const CMaterialFilter skPassEverything;

public:
  enum EFilterType {
    kFT_Always,
    kFT_Include,
    kFT_Exclude,
    kFT_IncludeExclude,
  };

  CMaterialFilter() : include(0x00000000FFFFFFFF), exclude(0), type(kFT_Always) {}
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

  static const CMaterialFilter& GetPassEverything() { return skPassEverything; }

  bool Passes(const CMaterialList& other) const;

private:
  CMaterialList include;
  CMaterialList exclude;
  EFilterType type;
};
CHECK_SIZEOF(CMaterialFilter, 0x18)

#endif // _CMATERIALFILTER
