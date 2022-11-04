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

    node(node* left, node* right, node* parent, node_color color, const P& value)
    : mLeft(left), mRight(right), mParent(parent), mColor(color) {
      construct(get_value(), value);
    }

    P* get_value() { return reinterpret_cast< P* >(&mValue); }
    const P* get_value() const { return reinterpret_cast< const P* >(&mValue); }

    node* get_left() { return mLeft; }
    void set_left(node* n) { mLeft = n; }
    node* get_right() { return mRight; }
    void set_right(node* n) { mRight = n; }
  };
  class header {
  public:
    header() : mLeftmost(nullptr), mRightmost(nullptr), mRootNode(nullptr) {}
    void set_root(node* n) { mRootNode = n; }
    void set_leftmost(node* n) { mLeftmost = n; }
    void set_rightmost(node* n) { mRightmost = n; }

    node* get_root() const { return mRootNode; }
    node* get_leftmost() const { return mLeftmost; }
    node* get_rightmost() const { return mRightmost; }

  private:
    node* mLeftmost;
    node* mRightmost;
    node* mRootNode;
  };

public:
  struct const_iterator {
    node* mNode;
    const header* mHeader;
    // bool x8_;

    // TODO why is this bool here?
    const_iterator(node* node, const header* header, bool b)
    : mNode(node), mHeader(header)/*, x8_(b)*/ {}

    const P* operator->() const { return mNode->get_value(); }
    const P* operator*() const { return mNode->get_value(); }
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
  struct iterator : public const_iterator {
    iterator(node* node, const header* header, bool b) : const_iterator(node, header, b) {}
  };

  red_black_tree() : x0_(0), x1_(0), x4_count(0) {}
  ~red_black_tree() { clear(); }

  iterator insert_into(node* n, const P& item);
  iterator insert(const P& item) { return insert_into(x8_header.get_root(), item); }

  const_iterator begin() const {
    // TODO
    return const_iterator(x8_header.get_leftmost(), &x8_header, false);
  }
  const_iterator end() const {
    // TODO
    return const_iterator(nullptr, &x8_header, false);
  }

  const_iterator find(const T& key) const {
    node* n = x8_header.get_root();
    node* needle = nullptr;
    while (n != nullptr) {
      if (!x2_cmp(x3_selector(*n->get_value()), key)) {
        needle = n;
        n = n->get_left();
      } else {
        n = n->get_right();
      }
    }
    bool noResult = false;
    if (needle == nullptr || x2_cmp(key, x3_selector(*needle->get_value()))) {
      noResult = true;
    }
    if (noResult) {
      needle = nullptr;
    }
    return const_iterator(needle, &x8_header, false);
  }

  void clear() {
    node* root = x8_header.get_root();
    if (root != nullptr) {
      free_node_and_sub_nodes(root);
    }
    x8_header.set_root(nullptr);
    x8_header.set_leftmost(nullptr);
    x8_header.set_rightmost(nullptr);
    x4_count = 0;
  }

private:
  uchar x0_;
  uchar x1_;
  Cmp x2_cmp;
  S x3_selector;
  int x4_count;
  header x8_header;

  node* create_node(node* left, node* right, node* parent, node_color color, const P& value) {
    node* n;
    Alloc::allocate(n, 1);
    new (n) node(left, right, parent, color, value);
    return n;
  }

  void free_node_and_sub_nodes(node* n) {
    if (node* left = n->get_left()) {
      free_node_and_sub_nodes(left);
    }
    if (node* right = n->get_right()) {
      free_node_and_sub_nodes(right);
    }
    free_node(n);
  }

  void free_node(node* n) {
    n->~node();
    Alloc::deallocate(n);
  }

  void rebalance(node* n) { rbtree_rebalance(&x8_header, n); }
};

static bool kUnknownValueNewRoot = true;
static bool kUnknownValueEqualKey = false;
static bool kUnknownValueNewItem = true;

template < typename T, typename P, int U, typename S, typename Cmp, typename Alloc >
typename red_black_tree< T, P, U, S, Cmp, Alloc >::iterator
red_black_tree< T, P, U, S, Cmp, Alloc >::insert_into(node* n, const P& item) {
  if (n == nullptr) {
    x8_header.set_root(create_node(nullptr, nullptr, nullptr, kNC_Red, item));
    x4_count += 1;
    x8_header.set_leftmost(x8_header.get_root());
    x8_header.set_rightmost(x8_header.get_root());
    return iterator(x8_header.get_root(), &x8_header, kUnknownValueNewRoot);

  } else {
    node* newNode = nullptr;
    while (newNode == nullptr) {
      bool firstComp = x2_cmp(x3_selector(*n->get_value()), x3_selector(item));
      if (!firstComp && !x2_cmp(x3_selector(item), x3_selector(*n->get_value()))) {
        return iterator(n, &x8_header, kUnknownValueEqualKey);
      }
      if (firstComp) {
        if (n->get_left() == nullptr) {
          newNode = create_node(nullptr, nullptr, n, kNC_Red, item);
          n->set_left(newNode);
          if (n == x8_header.get_leftmost()) {
            x8_header.set_leftmost(newNode);
          }
        } else {
          n = n->get_left();
        }
      } else {
        if (n->get_right() == nullptr) {
          newNode = create_node(nullptr, nullptr, n, kNC_Black, item);
          n->set_right(newNode);
          if (n == x8_header.get_rightmost()) {
            x8_header.set_rightmost(newNode);
          }
        } else {
          n = n->get_right();
        }
      }
    }
    x4_count += 1;
    rebalance(newNode);
    return iterator(newNode, &x8_header, kUnknownValueNewItem);
  }
}

}; // namespace rstl

#endif // _RSTL_RED_BLACK_TREE
