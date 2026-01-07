#ifndef _CCHARLAYOUTINFO
#define _CCHARLAYOUTINFO

#include "Kyoto/Animation/CSegId.hpp"

#include <rstl/string.hpp>
class CCharLayoutInfo {
public:
  CSegId GetSegIdFromString(const rstl::string& bone) const;
};

#endif // _CCHARLAYOUTINFO
