#ifndef _TSEGIDMAPVARIABLESIZE
#define _TSEGIDMAPVARIABLESIZE

#include <rstl/reserved_vector.hpp>
#include <rstl/pair.hpp>

template < typename T >
struct TSegIdMapVariableSize {

private:
  rstl::reserved_vector< rstl::pair< signed char, signed char >, 100 > x4_links;
};

#endif // _TSEGIDMAPVARIABLESIZE
