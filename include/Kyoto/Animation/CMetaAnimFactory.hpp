#ifndef _CMETAANIMFACTORY
#define _CMETAANIMFACTORY

#include "rstl/rc_ptr.hpp"

class IMetaAnim;
class CInputStream;
class CMetaAnimFactory {
public:
  static rstl::rc_ptr< IMetaAnim > CreateMetaAnim(CInputStream& in);
};

#endif // _CMETAANIMFACTORY
