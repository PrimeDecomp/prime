#ifndef _CPOSEASTRANSFORMS
#define _CPOSEASTRANSFORMS

#include "types.h"

#include "MetroidPrime/TGameTypes.hpp"

#include "Kyoto/Math/CTransform4f.hpp"

#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"

class CPoseAsTransforms {
public:
  const CMatrix3f& GetRotation(const CSegId& id) const;
private:
  CSegId x0_nextId;
  CSegId x1_count;
  // TODO TSegIdMapVariableSize<CPoseAsTransforms::CElementType>
  rstl::reserved_vector< rstl::pair< CSegId, CSegId >, 100 > x4_links;
  rstl::single_ptr< CTransform4f > xd0_transformArr;
  CSegId xd4_lastInserted;
};
CHECK_SIZEOF(CPoseAsTransforms, 0xd8)

#endif // _CPOSEASTRANSFORMS
