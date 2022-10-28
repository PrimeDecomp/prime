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
  _node* node = static_cast< _node* >(node_void);
  _header* header = static_cast< _header* >(header_void);

  while (node->mParent != nullptr && node->mParent->mColor == kNC_Black) {
    _node* p = node->mParent->mParent->mLeft;
    if (node->mParent == p) {
      p = node->mParent->mParent->mRight;
      if ((p != nullptr && p->mColor == kNC_Black)) {
        node->mParent->mColor = kNC_Red;
        p->mColor = kNC_Red;
        node->mParent->mParent->mColor = kNC_Black;
        node = node->mParent->mParent;

      } else {
        if (node == node->mParent->mRight) {
          node = node->mParent;
          rbtree_rotate_left(header, node);
        }
        node->mParent->mColor = kNC_Red;
        node->mParent->mParent->mColor = kNC_Black;
        rbtree_rotate_right(header, node->mParent->mParent);
      }
    } else if (p != nullptr && p->mColor == kNC_Black) {
      node->mParent->mColor = kNC_Red;
      p->mColor = kNC_Red;
      node->mParent->mParent->mColor = kNC_Black;
      node = node->mParent->mParent;

    } else {
      if (node == node->mParent->mLeft) {
        node = node->mParent;
        rbtree_rotate_right(header, node);
      }
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

  _node* next;
  _node* result = node;

  if (node->mLeft == nullptr) {
    next = node->mRight;
  } else {
    _node* tmp = node->mRight;
    if (tmp == nullptr) {
      next = tmp;
    } else {
      do {
        result = tmp;
        tmp = result->mLeft;
      } while (result->mLeft != nullptr);
      next = result->mRight;
    }
  }

  if (result != node) {
    node->mLeft->mParent = result;
    result->mLeft = node->mLeft;

    _node* tmp = result;
    if (result != node->mRight) {
      tmp = result->mParent;
      if (next != nullptr) {
        next->mParent = result->mParent;
      }
      result->mParent->mLeft = next;
      result->mRight = node->mRight;
      node->mRight->mParent = result;
    }

    if (header->mRootNode == node) {
      header->mRootNode = result;
    } else {
      if (node->mParent->mLeft == node) {
        node->mParent->mLeft = result;
      } else {
        node->mParent->mRight = result;
      }
    }

    result->mParent = node->mParent;
    node_color c = result->mColor;
    result->mColor = node->mColor;
    node->mColor = c;
    result = node;

  } else {
    _node* a1 = result->mParent;
    if (next != nullptr) {
      next->mParent = a1;
    }
    if (header->mRootNode == node) {
      header->mRootNode = next;
    } else {
      if (node->mParent->mLeft == node) {
        node->mParent->mLeft = next;
      } else {
        node->mParent->mRight = next;
      }
    }

    if (header->mLeftmost == node) {
      if (node->mRight == nullptr) {
        header->mLeftmost = node->mParent;
      } else {
        // prVar1 = next;
        _node* prVar1 = next;
        if (next == nullptr) {
          header->mLeftmost = nullptr;
        } else {
          _node* newLeftmost;
          do {
            newLeftmost = prVar1;
            prVar1 = newLeftmost->mLeft;
          } while (newLeftmost->mLeft != nullptr);
          header->mLeftmost = newLeftmost;
        }
      }
    }

    if (header->mRightmost == node) {
      if (node->mLeft == nullptr) {
        header->mRightmost = node->mParent;
      } else {
        // prVar1 = next;
        _node* prVar1 = next;
        if (next == nullptr) {
          header->mRightmost = nullptr;
        } else {
          _node* newRightmost;
          do {
            newRightmost = prVar1;
            prVar1 = newRightmost->mRight;
          } while (newRightmost->mRight != nullptr);
          header->mRightmost = newRightmost;
        }
      }
    }
  }

  if (result->mColor != kNC_Black) {
    while (true) {
    }
  }

  return result;
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
