#ifndef _CLINE
#define _CLINE

#include "types.h"

#include "Kyoto/Math/CUnitVector3f.hpp"
#include "Kyoto/Math/CVector3f.hpp"

class CLine {
public:
  CLine(const CVector3f& origin, const CUnitVector3f& dir) : x0_origin(origin), xc_dir(dir) {}

  const CVector3f& GetRefPoint() const { return x0_origin; }
  const CUnitVector3f& GetNormal() const { return xc_dir; }

private:
  CVector3f x0_origin;
  CUnitVector3f xc_dir;
};

#endif // _CLINE
