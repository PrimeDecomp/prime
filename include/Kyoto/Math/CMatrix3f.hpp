#ifndef _CMATRIX3F_HPP
#define _CMATRIX3F_HPP

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

class CMatrix3f {
  static const CMatrix3f sIdentity;
public:
  CMatrix3f(const CMatrix3f&);

  static CMatrix3f Identity() { return sIdentity; }
private:
  // TODO maybe individual f32s
  CVector3f m0;
  CVector3f m1;
  CVector3f m2;
};
CHECK_SIZEOF(CMatrix3f, 0x24);

#endif
