#ifndef _CSEQUENCEHELPER
#define _CSEQUENCEHELPER
#include "Kyoto/Animation/CAnimSysContext.hpp"

class IMetaAnim;
class CAnimTreeNode;
class CSequenceHelper {
public:
  CSequenceHelper(const rstl::ncrc_ptr< CAnimTreeNode >& a,
                  const rstl::ncrc_ptr< CAnimTreeNode >& b, const CAnimSysContext& context);
  CSequenceHelper(const rstl::vector< rstl::rc_ptr< IMetaAnim > >& anims,
                  const CAnimSysContext& context);

private:
  CAnimSysContext x0_context;
  rstl::vector< rstl::ncrc_ptr< CAnimTreeNode > > x10_nodes;
  rstl::vector< bool > x20_;
};
#endif // _CSEQUENCEHELPER