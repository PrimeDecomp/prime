#ifndef _CMETAANIMFACTORY_20COPY
#define _CMETAANIMFACTORY_20COPY
#ifndef _CMETAANIMFACTORY
#define _CMETAANIMFACTORY

#include "rstl/rc_ptr.hpp"

class IMetaTrans;
class CInputStream;
class CMetaTransFactory {
public:
  static rstl::rc_ptr< IMetaTrans > CreateMetaTrans(CInputStream& in);
};

#endif // _CMETAANIMFACTORY


#endif // _CMETAANIMFACTORY_20COPY
