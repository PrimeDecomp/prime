#ifndef _CLINESEG_HPP
#define _CLINESEG_HPP

#include "types.h"

#include "Kyoto/Math/CUnitVector3f.hpp"
#include "Kyoto/Math/CVector3f.hpp"
#include "Kyoto/Math/CLine.hpp"

class CLineSeg : public CLine {
public:
  CLineSeg(const CVector3f& start, const CVector3f& end)
  : CLine(start, (end - start).AsNormalized())
  , x18_end(end) {}

  const CVector3f& GetEndPoint() const { return x18_end; }

private:
  CVector3f x18_end;
};
CHECK_SIZEOF(CLineSeg, 0x24)

#endif
