#ifndef _CDEPENDENCYGROUP
#define _CDEPENDENCYGROUP

#include "Kyoto/SObjectTag.hpp"

#include "rstl/vector.hpp"

class CInputStream;

class CDependencyGroup {
public:
  explicit CDependencyGroup(CInputStream& in);
  void ReadFromStream(CInputStream& in);

  const rstl::vector< SObjectTag >& GetObjectTagVector() const { return x0_objectTags; }

private:
  rstl::vector< SObjectTag > x0_objectTags;
};

#endif // _CDEPENDENCYGROUP
