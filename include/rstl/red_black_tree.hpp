#ifndef _RSTL_RED_BLACK_TREE_HPP
#define _RSTL_RED_BLACK_TREE_HPP

#include "types.h"

namespace rstl {
template < typename P >
struct select1st {};

template < typename T >
struct less {};

template < typename T, typename P, int U, typename S = select1st< P >, typename Cmp = less< T > >
class red_black_tree {};
}; // namespace rstl
#endif