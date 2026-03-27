#include "Kyoto/Animation/CAnimTreeNode.hpp"
#include "rstl/rc_ptr.hpp"
#include "rstl/single_ptr.hpp"

CAnimTreeNode::CAnimTreeNode(const rstl::string& name) : x4_name(name) {}

rstl::ncrc_ptr< CAnimTreeNode > Cast(const rstl::ownership_transfer< IAnimReader >& ptr) {
  if (ptr->IsCAnimTreeNode()) {
    return static_cast< CAnimTreeNode* >(ptr.get());
  }

  return rstl::ncrc_ptr< CAnimTreeNode >();
}
