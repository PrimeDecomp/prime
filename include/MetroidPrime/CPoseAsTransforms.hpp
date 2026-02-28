#ifndef _CPOSEASTRANSFORMS
#define _CPOSEASTRANSFORMS

#include "types.h"

#include "Kyoto/Math/CTransform4f.hpp"

#include "rstl/reserved_vector.hpp"
#include "rstl/single_ptr.hpp"

class CMatrix3f;
class CSegId;

class CPoseAsTransforms {
public:
  explicit CPoseAsTransforms(uchar count);
  ~CPoseAsTransforms();

  const CMatrix3f& GetTransformMinusOffset(const CSegId&) const;
  const CVector3f& GetOffset(const CSegId&) const;

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
