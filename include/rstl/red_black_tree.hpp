#ifndef _RSTL_RED_BLACK_TREE
#define _RSTL_RED_BLACK_TREE

#include "types.h"

#include "rstl/pair.hpp"
#include "rstl/rmemory_allocator.hpp"

namespace rstl {
template < typename P >
struct select1st {
  const P& operator()(const P& it) const { return it; }
};

template < typename K, typename V >
struct select1st< pair< K, V > > {
  const K& operator()(const pair< K, V >& it) const { return it.first; }
};

template < typename T >
struct less {
  bool operator()(const T& a, const T& b) const { return a < b; }
};

enum node_color {
  kNC_Red,
  kNC_Black,
};

void rbtree_rebalance(void*, void*);
void* rbtree_traverse_forward(const void*, void*);

template < typename T, typename P, int U, typename S = select1st< P >, typename Cmp = less< T >,
           typename Alloc = rmemory_allocator >
class red_black_tree {
private:
  struct node {
    node* mLeft;
    node* mRight;
    node* mParent;
    node_color mColor;
    uchar mValue[sizeof(P)];

    node(const P& value, node_color color = kNC_Red)
    : mLeft(nullptr), mRight(nullptr), mColor(color), mParent(nullptr) {
      construct(get_value(), value);
    }

    P* get_value() { return reinterpret_cast< P* >(&mValue); }
    const P* get_value() const { return reinterpret_cast< const P* >(&mValue); }

    node* get_left() { return mLeft; }
    void set_left(node* n) { mLeft = n; }
    node* get_right() { return mRight; }
    void set_right(node* n) { mRight = n; }
  };
  struct header {};

  struct unknown {
    node* x0_nodeA;
    node** x4_nodeB;
    bool x8_;

    unknown(node* a, node** b, bool flag) : x0_nodeA(a), x4_nodeB(b), x8_(flag) {}
  };

public:
  struct const_iterator {
    node* mNode;
    const header* mHeader;

    const P* operator->() const { return &mNode->get_value(); }
    bool operator==(const const_iterator& other) const {
      return mNode == other.mNode && mHeader == other.mHeader;
    }
    bool operator!=(const const_iterator& other) const {
      // return !(*this == other);
      return mNode != other.mNode || mHeader != other.mHeader;
    }

    const_iterator& operator++() {
      mNode = static_cast< node* >(rbtree_traverse_forward(static_cast< const void* >(mHeader),
                                                           static_cast< void* >(mNode)));
      return *this;
    }

    const_iterator operator++(int) {
      const_iterator result = *this;
      mNode = static_cast< node* >(rbtree_traverse_forward(static_cast< const void* >(mHeader),
                                                           static_cast< void* >(mNode)));
      return result;
    }
  };

  unknown insert_into(node* n, const P& item);
  unknown insert(const P& item) { return insert_into(x10_rootNode, item); }

private:
  Alloc x0_allocator;
  Cmp x1_cmp;
  S x2_selector;
  int x4_count;
  node* x8_nodeA;
  node* xc_nodeB;
  node* x10_rootNode;
};

static bool kUnknownValueNewRoot = true;
static bool kUnknownValueEqualKey = false;
static bool kUnknownValueNewItem = true;

template < typename T, typename P, int U, typename S, typename Cmp, typename Alloc >
typename red_black_tree< T, P, U, S, Cmp, Alloc >::unknown
red_black_tree< T, P, U, S, Cmp, Alloc >::insert_into(node* n, const P& item) {
  if (n == nullptr) {
    x0_allocator.allocate(n, 1);
    new (n) node(item);
    x10_rootNode = n;
    x4_count += 1;
    x8_nodeA = x10_rootNode;
    xc_nodeB = x10_rootNode;
    return unknown(x10_rootNode, &x8_nodeA, kUnknownValueNewRoot);

  } else {
    node* newNode = nullptr;
    while (newNode == nullptr) {
      bool firstComp = x1_cmp(x2_selector(*n->get_value()), x2_selector(item));
      if (!firstComp && !x1_cmp(x2_selector(item), x2_selector(*n->get_value()))) {
        return unknown(n, &x8_nodeA, kUnknownValueEqualKey);
      }
      if (firstComp) {
        if (n->get_left() == nullptr) {
          x0_allocator.allocate(newNode, 1);
          new (newNode) node(item, kNC_Black);
          n->set_left(newNode);
          if (n == x8_nodeA) {
            x8_nodeA = newNode;
          }
        } else {
          n = n->get_left();
        }
      } else {
        if (n->get_right() == nullptr) {
          x0_allocator.allocate(newNode, 1);
          new (newNode) node(item, kNC_Black);
          n->set_right(newNode);
          if (n == xc_nodeB) {
            xc_nodeB = newNode;
          }
        } else {
          n = n->get_right();
        }
      }
    }
    x4_count += 1;
    rbtree_rebalance(&x8_nodeA, newNode);
    return unknown(newNode, &x8_nodeA, kUnknownValueNewItem);
  }
}

}; // namespace rstl

#endif // _RSTL_RED_BLACK_TREE
