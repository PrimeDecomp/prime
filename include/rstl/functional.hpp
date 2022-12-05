#ifndef _RSTL_FUNCTIONAL
#define _RSTL_FUNCTIONAL

namespace rstl {

template < typename P >
struct identity {
  const P& operator()(const P& it) const { return it; }
};

template < typename T >
struct less {
  bool operator()(const T& a, const T& b) const { return a < b; }
};

} // namespace rstl

#endif // _RSTL_FUNCTIONAL
