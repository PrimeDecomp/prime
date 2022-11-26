#ifndef _CMATRIX3F
#define _CMATRIX3F

#include "types.h"

#include "Kyoto/Math/CVector3f.hpp"

class CMatrix3f {
  static const CMatrix3f sIdentity;

public:
  CMatrix3f(const CMatrix3f&);
  const CMatrix3f& operator=(const CMatrix3f& other);

  static const CMatrix3f& Identity() { return sIdentity; }

  CMatrix3f Orthonormalized() const;

  // TODO: names/check
  inline const CVector3f& GetRow(EDimX dim) const { return m0; }
  inline const CVector3f& GetRow(EDimY dim) const { return m1; }
  inline const CVector3f& GetRow(EDimZ dim) const { return m2; }

  inline CVector3f GetColumn(EDimY dim) const { return CVector3f(m0.GetY(), m1.GetY(), m2.GetY()); }

private:
  // TODO maybe individual floats
  CVector3f m0;
  CVector3f m1;
  CVector3f m2;
};
CHECK_SIZEOF(CMatrix3f, 0x24);

#endif // _CMATRIX3F
