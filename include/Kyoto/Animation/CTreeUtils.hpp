#ifndef _CTREEUTILS
#define _CTREEUTILS

#include "rstl/rc_ptr.hpp"

class CAnimTreeNode;
class CAnimSysContext;
class CTreeUtils {
public:
  static rstl::rc_ptr< CAnimTreeNode > GetTransitionTree(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                                                         const rstl::ncrc_ptr< CAnimTreeNode >& b,
                                                         const CAnimSysContext& animCtx);
};

#endif // _CTREEUTILS
