#ifndef _STRINGEXTRAS
#define _STRINGEXTRAS

#include "rstl/string.hpp"

class CStringExtras {
  public:
    static int CompareCaseInsensitive(const rstl::string&, const rstl::string&);
    static int IndexOfSubstring(const rstl::string&, const rstl::string&);
};

#endif // _STRINGEXTRAS
