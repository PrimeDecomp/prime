#include "rstl/red_black_tree.hpp"

namespace rstl {

struct _node {
  _node* mLeft;
  _node* mRight;
  _node* mParent;
  node_color mColor;
};

struct _header {
  _node* mLeftmost;
  _node* mRightmost;
  _node* mRootNode;
};

void rbtree_rotate_left(void* header_void, void* node_void) {
  _header* header = static_cast< _header* >(header_void);
  _node* node = static_cast< _node* >(node_void);

  _node* parent = node->mParent;
  _node* right = node->mRight;
  _node* l = right->mLeft;

  if (parent == nullptr) {
    header->mRootNode = right;
    right->mParent = nullptr;
  } else {
    if (parent->mLeft == node) {
      parent->mLeft = right;
    } else {
      parent->mRight = right;
    }
    right->mParent = node->mParent;
  }
  node->mParent = right;
  right->mLeft = node;
  if (l) {
    l->mParent = node;
  }
  node->mRight = l;
}

void rbtree_rotate_right(void* header_void, void* node_void) {
  _header* header = static_cast< _header* >(header_void);
  _node* node = static_cast< _node* >(node_void);

  _node* parent = node->mParent;
  _node* left = node->mLeft;
  _node* r = left->mRight;

  if (parent == nullptr) {
    header->mRootNode = left;
    left->mParent = nullptr;
  } else {
    if (node == parent->mLeft) {
      parent->mLeft = left;
    } else {
      parent->mRight = left;
    }
    left->mParent = node->mParent;
  }
  node->mParent = left;
  left->mRight = node;
  if (r) {
    r->mParent = node;
  }
  node->mLeft = r;
}

void rbtree_rebalance(void* header_void, void* node_void) {
  _header* header = static_cast< _header* >(header_void);
  _node* node = static_cast< _node* >(node_void);
  _node* it;

  while ((it = node->mParent) != nullptr && it->mColor == kNC_Black) {
    _node* p = it->mParent->mLeft;
    if (it == p) {
      p = it->mParent->mRight;
      if ((p != nullptr && p->mColor == kNC_Black)) {
        it->mColor = kNC_Red;
        p->mColor = kNC_Red;
        node->mParent->mParent->mColor = kNC_Black;
        node = node->mParent->mParent;

      } else {
        if (node == it->mRight) {
          rbtree_rotate_left(header, it);
        }
        node = it;
        node->mParent->mColor = kNC_Red;
        node->mParent->mParent->mColor = kNC_Black;
        rbtree_rotate_right(header, node->mParent->mParent);
      }
    } else if (p != nullptr && p->mColor == kNC_Black) {
      it->mColor = kNC_Red;
      p->mColor = kNC_Red;
      node->mParent->mParent->mColor = kNC_Black;
      node = node->mParent->mParent;
      
    } else {
      if (node == it->mLeft) {
        rbtree_rotate_right(header, it);
      }
      node = it;
      node->mParent->mColor = kNC_Red;
      node->mParent->mParent->mColor = kNC_Black;
      rbtree_rotate_left(header, node->mParent->mParent);
    }
  }
  header->mRootNode->mColor = kNC_Red;
}

void* rbtree_rebalance_for_erase(void* header_void, void* node_void) {
  _header* header = static_cast< _header* >(header_void);
  _node* node = static_cast< _node* >(node_void);

  return nullptr;
}

void* rbtree_traverse_forward(const void* header_void, void* node_void) {
  const _header* header = static_cast< const _header* >(header_void);
  _node* node = static_cast< _node* >(node_void);

  if (node == nullptr) {
    return header->mLeftmost;
  }
  _node* right = node->mRight;
  if ((right == nullptr) && (node->mParent == nullptr)) {
    return nullptr;
  }
  if ((right == nullptr) && (node->mParent->mLeft == node)) {
    return node->mParent;
  }

  if (right != nullptr) {
    _node* result = right;
    goto enter_middle;
    do {
      result = right;
    enter_middle:
      right = result->mLeft;
    } while (right != nullptr);
    return result;
  }

  _node* parent = nullptr;
  goto enter_final;
  do {
    node = parent;
  enter_final:
    parent = node->mParent;
    if (!parent)
      break;
  } while (parent->mRight == node);

  return parent != nullptr ? parent : nullptr;
}

} // namespace rstl
