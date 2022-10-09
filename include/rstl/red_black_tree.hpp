#ifndef _RSTL_RED_BLACK_TREE
#define _RSTL_RED_BLACK_TREE

#include "types.h"

#include "rstl/rmemory_allocator.hpp"

namespace rstl {
template < typename P >
struct select1st {};

template < typename T >
struct less {};

enum node_color {
  kNC_Red,
  kNC_Black,
};

template < typename T, typename P, int U, typename S = select1st< P >, typename Cmp = less< T >,
           typename Alloc = rmemory_allocator >
class red_black_tree {
private:
  struct node {
    node_color mColor;
    node* mParent;
    node* mLeft;
    node* mRight;
    P mValue;

    P& get_value() { return mValue; }
  };
  struct header {};

public:
  struct const_iterator {
    node* mNode;
    const header* mHeader;

    const P* operator->() const { return &mNode->get_value(); }
    bool operator==(const const_iterator& other) const {
      return mNode == other.mNode && mHeader == other.mHeader;
    }
    bool operator!=(const const_iterator& other) const {
      return !(*this == other); // mNode != other.mNode || mHeader != other.mHeader;
    }
  };

private:
  uchar x0_;
  uchar x1_;
  uint x4_;
  uint x8_;
  uint xc_;
  uint x10_;
};
}; // namespace rstl

#endif // _RSTL_RED_BLACK_TREE
