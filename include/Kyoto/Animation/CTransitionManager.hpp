#ifndef _CTRANSITIONMANAGER
#define _CTRANSITIONMANAGER

#include "Kyoto/Animation/CAnimSysContext.hpp"

class CAnimTreeNode;
class CTransitionManager {
public:
  rstl::rc_ptr< CAnimTreeNode > GetTransitionTree(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                                  const rstl::ncrc_ptr< CAnimTreeNode >& b) const;

private:
  CAnimSysContext x0_context;
};

#endif // _CTRANSITIONMANAGER
